# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/max/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/max/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/max/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/max/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Extra lines
conda deactivate
source /opt/ros/humble/setup.bash
source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash

# source ~/vanttec_usv/install/setup.bash
# source ~/irs/install/setup.bash
# source ~/vanttec_sdv/workspace/install/setup.bash
# source ~/vrx_ws/install/setup.bash
# source ~/sdv/install/setup.bash
# source ~/gz/install/setup.bash
# source ~/ros2_ws/install/setup.bash
# source ~/ros_gz_ws/install/setup.bash
# source ~/TurboPlusPlus_IntegracionRobotica/install/setup.bash

export GZ_SIM_RESOURCE_PATH=:~/vanttec_usv/src/usv_description/models:$GZ_SIM_RESOURCE_PATH
export GZ_SIM_RESOURCE_PATH=:~/TurboPlusPlus_IntegracionRobotica/src/pzb_description/models:$GZ_SIM_RESOURCE_PATH
export GZ_VERSION=garden

alias tok="xclip -selection c < ~/.token"
alias init_can="~/a/start-can0.sh"
alias init_lidar_usv="~/a/lidar_conf_usv.sh"
alias co="colcon build --symlink-install --cmake-args=-DCMAKE_BUILD_TYPE=Release --parallel-workers $(nproc)"
alias trtexec="/usr/src/tensorrt/bin/trtexec"

# For building a TensorRT cpp project
export TRT_LIBPATH=/usr/src/tensorrt
alias trt_cpp_build="cmake -DCMAKE_CUDA_COMPILER:PATH=/usr/local/cuda/bin/nvcc .. -DTRT_LIB_DIR=$TRT_LIBPATH -DTRT_OUT_DIR=`pwd`/out"
alias trt_cpp_make="make -j$(nproc)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias ssh_pi="ssh pi@10.147.20.228"

alias ssh_eth="ssh vanttec@192.168.55.1"
alias ssh_zerotier="ssh vanttec@10.147.20.16"
alias ssh_wifi="ssh vanttec@10.42.0.77"
alias ssh_modem="ssh vanttec@192.168.8.83"
alias ssh_ppp="ssh vanttec@10.0.0.1"
. "$HOME/.cargo/env"

alias wifi="nmcli radio wifi"

alias init_tmux=". ~/tmux_session.sh"
# export ROS_DOMAIN_ID=0
# export ROS_DOMAIN_ID=2
# export ROS_DOMAIN_ID=2

alias ssh_orin="ssh -X max@192.168.55.1"
alias ssh_ameniti="ssh vanttec@172.24.91.70"
alias ssh_village="ssh vanttec@192.168.202.188"

alias ssh_pzb="ssh puzzlebot@10.42.0.2"
alias ssh_pzb_wifi="ssh puzzlebot@10.22.149.32"
alias ssh_pzb_hotspot="ssh puzzlebot@10.42.0.201"
heic2png() {
  local file="$1"
  heif-convert "$file" "${file/%.heic/.png}"
}

webm2mp4(){
  local file="$1"
  
  ffmpeg -i "$file" \
 -vf "pad=ceil(iw/2)*2:ceil(ih/2)*2" -r 24 \
 -y -an "${file/%.webm/.mp4}"
}

mp42gif(){
  local file="$1"
  
  ffmpeg -i "$file" \
 -pix_fmt rgb24 \
 "${file/%.mp4/.gif}"
}

webm2gif(){
  local file="$1"
  
  ffmpeg -i "$file" \
 -pix_fmt rgb24 \
 "${file/%.webm/.gif}"
}

video_speedup_by() {
  local file="$1"
  local times="$2"

  # Extract file base name and extension
  local filename="${file%.*}"
  local extension="${file##*.}"

  # Construct output filename
  local output="${filename}_x${times}.${extension}"

  ffmpeg -i "$file" -filter:v "setpts=PTS/${times}" -an "$output"
}

export PATH="/usr/local/cuda-12.8/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda-12.8/lib64:$LD_LIBRARY_PATH"

nvcc_build_run() {
    if [ $# -ne 2 ]; then
        echo "Usage: compile_and_run <output_name> <cu_file_path>"
        return 1
    fi

    local output=$1
    local cu_file=$2

    nvcc -arch=sm_89 -o "$output" "$cu_file" -run
}

alias colcon_cuda="colcon build --cmake-args -DCUDA_ARCH=89"
export QT_QPA_PLATFORMTHEME=qt5ct

# ensure the model and world files are found
export GZ_SIM_RESOURCE_PATH=\
$GZ_SIM_RESOURCE_PATH:\
$HOME/ros2_ws/src/asv_wave_sim/gz-waves-models/models:\
$HOME/ros2_ws/src/asv_wave_sim/gz-waves-models/world_models:\
$HOME/ros2_ws/src/asv_wave_sim/gz-waves-models/worlds

# ensure the system plugins are found
export GZ_SIM_SYSTEM_PLUGIN_PATH=\
$GZ_SIM_SYSTEM_PLUGIN_PATH:\
$HOME/ros2_ws/install/lib

# ensure the gui plugin is found
export GZ_GUI_PLUGIN_PATH=\
$GZ_GUI_PLUGIN_PATH:\
$HOME/ros2_ws/src/asv_wave_sim/gz-waves/src/gui/plugins/waves_control/build

# rm -rf ~/.config/Code/*
# rm -rf /home/max/.cache/vscode-cpptools

add_suffix() {
  if [[ $# -lt 2 ]]; then
    echo "Usage: add_suffix file1 [file2 ...] suffix"
    return 1
  fi

  suffix="${@: -1}"           # Last argument is the suffix
  files=("${@:1:$#-1}")        # All arguments except the last

  for file in "${files[@]}"; do
    [[ -e "$file" ]] || continue  # Skip non-existent files
    ext="${file##*.}"
    base="${file%.*}"
    mv -- "$file" "${base}${suffix}.${ext}"
  done
}

alias fpga_scan="sudo  ~/Downloads/Gowin_V1.9.9_linux/Programmer/bin/programmer_cli --scan"
alias vol_percentage="pactl set-sink-volume @DEFAULT_SINK@"

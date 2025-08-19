import os
import sys
from PIL import Image

def resize_images(input_folder, output_folder=None, scale_percent=70):
    """
    Resize all images in the input folder by the specified percentage
    
    Args:
        input_folder: Path to folder containing images to resize
        output_folder: Path to save resized images (if None, will create a subfolder 'resized')
        scale_percent: Percentage to scale the images (default: 70%)
    """
    # Create output folder if it doesn't exist
    if output_folder is None:
        output_folder = os.path.join(input_folder, 'resized')
    
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)
        print(f"Created output directory: {output_folder}")
    
    # Get list of image files
    image_extensions = ['.jpg', '.jpeg', '.png', '.bmp', '.gif', '.tiff']
    files = [f for f in os.listdir(input_folder) if os.path.isfile(os.path.join(input_folder, f)) 
             and os.path.splitext(f)[1].lower() in image_extensions]
    
    if not files:
        print(f"No image files found in {input_folder}")
        return
    
    print(f"Found {len(files)} image files")
    
    # Process each image
    for i, filename in enumerate(files):
        try:
            input_path = os.path.join(input_folder, filename)
            
            # Open image
            with Image.open(input_path) as img:
                # Calculate new dimensions (70%)
                width, height = img.size
                new_width = int(width * scale_percent / 100)
                new_height = int(height * scale_percent / 100)
                
                # Resize image
                resized_img = img.resize((new_width, new_height), Image.LANCZOS)
                
                # Save resized image
                output_path = os.path.join(output_folder, filename)
                resized_img.save(output_path)
                
            print(f"Processed [{i+1}/{len(files)}]: {filename} - Resized from {width}x{height} to {new_width}x{new_height}")
            
        except Exception as e:
            print(f"Error processing {filename}: {str(e)}")
    
    print(f"Resizing complete. Resized images saved to {output_folder}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python resize_images.py <input_folder> [output_folder] [scale_percent]")
        sys.exit(1)
        
    input_folder = sys.argv[1]
    
    output_folder = None
    if len(sys.argv) >= 3:
        output_folder = sys.argv[2]
        
    scale_percent = 70
    if len(sys.argv) >= 4:
        scale_percent = int(sys.argv[3])
    
    resize_images(input_folder, output_folder, scale_percent)

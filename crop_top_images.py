import os
import sys
from PIL import Image

def crop_top_portion(input_folder, output_folder=None, height_percent=70):
    """
    Crop all images in the input folder to keep only the top portion
    
    Args:
        input_folder: Path to folder containing images to crop
        output_folder: Path to save cropped images (if None, will create a subfolder 'cropped')
        height_percent: Percentage of height to keep from the top (default: 70%)
    """
    # Create output folder if it doesn't exist
    if output_folder is None:
        output_folder = os.path.join(input_folder, 'cropped')
    
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
                # Get original dimensions
                width, height = img.size
                
                # Calculate new height (top 70% of the original height)
                new_height = int(height * height_percent / 100)
                
                # Define crop box (left, upper, right, lower)
                # We want to keep the full width and the top portion of the height
                crop_box = (0, 0, width, new_height)
                
                # Crop image
                cropped_img = img.crop(crop_box)
                
                # Save cropped image
                output_path = os.path.join(output_folder, filename)
                cropped_img.save(output_path)
                
            print(f"Processed [{i+1}/{len(files)}]: {filename} - Cropped from {height}px to {new_height}px height")
            
        except Exception as e:
            print(f"Error processing {filename}: {str(e)}")
    
    print(f"Cropping complete. Cropped images saved to {output_folder}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python crop_top_images.py <input_folder> [output_folder] [height_percent]")
        sys.exit(1)
        
    input_folder = sys.argv[1]
    
    output_folder = None
    if len(sys.argv) >= 3:
        output_folder = sys.argv[2]
        
    height_percent = 70
    if len(sys.argv) >= 4:
        height_percent = int(sys.argv[3])
    
    crop_top_portion(input_folder, output_folder, height_percent)

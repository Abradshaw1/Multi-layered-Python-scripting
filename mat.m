% read image (replace imagepath with actual image path)
image = imread("C:\\Users\\aidan\\CS420Lab5\\mickey-1.png");

% convert image to greyscale
if size(image, 3) == 3 
    image = rgb2gray(image);
end

% flatten image to a 1d array
image_1D = image(:)';

% use dlmwrite to store the 1d array into a text file called input.txt
dlmwrite('input.txt', image_1D);
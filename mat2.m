% Initialize an empty array
numbers = [];

% Reopen the file
fileID = fopen('input_data.txt', 'r');

% Read and convert numbers one at a time
while ~feof(fileID)
    num = fscanf(fileID, '%d', 1);
    if ~isempty(num)
        numbers = [numbers, num];
    end
end

% Close the file
fclose(fileID);

% Convert numbers to unsigned chars
pixels = uint8(numbers);

% Reshape the array into a matrix
% Assuming the image is of size NxN. Replace 'N' with the actual dimensions
N = sqrt(length(pixels));
imageMatrix1 = reshape(pixels, [N, N]);

figure;
subplot(2, 2, 1);
imshow(imageMatrix1, 'InitialMagnification', 'fit');
title('Original Image');

% Initialize an empty array
numbers = [];

% Reopen the file
fileID = fopen('c_output.txt', 'r');

% Read and convert numbers one at a time
while ~feof(fileID)
    num = fscanf(fileID, '%d', 1);
    if ~isempty(num)
        numbers = [numbers, num];
    end
end

% Close the file
fclose(fileID);

% Convert numbers to unsigned chars
pixels = uint8(numbers);

% Reshape the array into a matrix
% Assuming the image is of size NxN. Replace 'N' with the actual dimensions
N = sqrt(length(pixels));
imageMatrix2 = reshape(pixels, [N, N]);

subplot(2, 2, 2);
imshow(imageMatrix2, 'InitialMagnification', 'fit');
title('Threshold Image');

% Initialize an empty array
numbers = [];

% Reopen the file
fileID = fopen('h_output.txt', 'r');

% Read and convert numbers one at a time
while ~feof(fileID)
    num = fscanf(fileID, '%d', 1);
    if ~isempty(num)
        numbers = [numbers, num];
    end
end

% Close the file
fclose(fileID);

% Convert numbers to unsigned chars
pixels = uint8(numbers);

% Reshape the array into a matrix
% Assuming the image is of size NxN. Replace 'N' with the actual dimensions
N = sqrt(length(pixels));
imageMatrix3 = reshape(pixels, [N, N]);

% Display the image
subplot(2, 2, 3);
imshow(imageMatrix3, 'InitialMagnification', 'fit');
title('Inverted Image');

% Initialize an empty array
numbers = [];

% Reopen the file
fileID = fopen('p_output.txt', 'r');

% Read and convert numbers one at a time
while ~feof(fileID)
    num = fscanf(fileID, '%d', 1);
    if ~isempty(num)
        numbers = [numbers, num];
    end
end

% Close the file
fclose(fileID);

% Convert numbers to unsigned chars
pixels = uint8(numbers);

% Reshape the array into a matrix
% Assuming the image is of size NxN. Replace 'N' with the actual dimensions
N = sqrt(length(pixels));
imageMatrix4 = reshape(pixels, [N, N]);

% Display the image
subplot(2, 2, 4);
imshow(imageMatrix4, 'InitialMagnification', 'fit');
title('Flipped Image');
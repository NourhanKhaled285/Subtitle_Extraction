I = imread('Subtitle1.png');

[h, w, s] = size(I);
if s > 1
	I = I(:, :, 2);
end

figure,imshow(I),title('old image');

I = I(200:end,:);
[h, w, s] = size(I);
threshold = 200;
figure,imhist(I);

% make the threshold
binaryimg = I> threshold;

figure,imshow(binaryimg),title('subtitle');
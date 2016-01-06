rgb = imread('img_000070.jpg');
imshow(rgb);


I = rgb2gray(rgb);
imshow(I)
bw1 = edge(I,'canny');

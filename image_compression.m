A = imread(input('File path/name: ','s'));
A = rgb2gray(A);

A = double(A);
[U,S,V] = svd(A);

r = input('Target rank: ');
if r < 1
    r = 1;
end

approxA = uint8(U(:,1:r) * S(1:r,1:r) * V(:,1:r)');
result_img = figure(1);
imshow(approxA);

saveas(result_img, compressed_result.jpg);

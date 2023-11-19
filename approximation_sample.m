A = imread('image1.jpg');
A = rgb2gray(A);

A = double(A);
[U,S,V] = svd(A);

ranks = [1 2 4 8 16 32 64 128 256 512 1024 2048];
l = length(ranks);

for i=1:l
    k = ranks(i);
    
    approxA = uint8(U(:,1:k)*S(1:k,1:k)*V(:,1:k)');

    figure(1);
    subplot(3,4,i);
    imshow(approxA);
    title(sprintf('Rank %d Approximation', k))

end
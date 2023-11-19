A = imread(input('File path/name: ','s'));
A = rgb2gray(A);

A = double(A);
[U,S,V] = svd(A);

ranks = [1 50 100 500];
l = length(ranks);

for i=1:l
    k = ranks(i);
    
    approxA = uint8(U(:,1:k) *S (1:k,1:k) * V(:,1:k)');

    figure(1);
    subplot(2,2,i);
    
    imshow(approxA);
    title(sprintf('Rank %d Approximation', k))

end

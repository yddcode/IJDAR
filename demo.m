% use fragment of a DIBCO-2009 training image for demo
img = imread('sample.jpg');

% Base algorithm with static parameters
tic, bimg0 = binarizeImage(img); toc
figure; imshow(~bimg0)

% Algorithm 1 (tune c)
tic, bimg1 = binarizeImageAlg1(img); toc
figure; imshow(~bimg1)

% Algorithm 2 (tune c and t_hi)
tic, bimg2 = binarizeImageAlg2(img); toc
figure; imshow(~bimg2)

% Algorithm 3 (tune c and pick t_hi from two alternatives)
tic, bimg3 = binarizeImageAlg3(img); toc
figure; imshow(~bimg3)

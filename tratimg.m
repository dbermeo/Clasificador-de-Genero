function F = tratimg( Im )

[X,map] = imread(Im);
RGB = imread(Im);
RGB2 = imresize(RGB, [40 30]);
RGB3=rgb2gray(RGB2);

F = im2bw(RGB3,map,0.5);


end


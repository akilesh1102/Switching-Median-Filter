img = imread('image.jpg');
i = rgb2gray(img);
j = imnoise(i,'salt & pepper',0.3);
figure,imshow(img)
figure,imshow(i)
figure,imshow(j)
image = zeros(size(i)+2);
k = zeros(size(i));
for x=1:size(i,2)
    for y=1:size(i,2)
        image(x+1,y+1) = j(x,y);
    end
end
fid = fopen('musk_image.txt','w');
for x=1:size(image,1)
    for y=1:size(image,2)
        fprintf(fid,'%s',dec2bin(image(x,y)));
        fprintf(fid,'\n');
    end
end
fclose(fid);

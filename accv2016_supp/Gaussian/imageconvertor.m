clear;
Original_image_dir = '../../accv2016/GRVIN/';
fpath = fullfile(Original_image_dir, '*.png');
im_dir  = dir(fpath);
im_num = length(im_dir);
for i = 1:im_num
    IMout=imread(fullfile(Original_image_dir, im_dir(i).name));
    S = regexp(im_dir(i).name, '\.', 'split');
    IMname = S{1};
    [h,w,ch] = size(IMout);
        IMout = imresize(IMout,  0.5);
    imwrite(IMout, [IMname '.png']);
end

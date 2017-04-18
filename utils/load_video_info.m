function [seq, ground_truth] = load_video_info(video_path)

ground_truth = dlmread([video_path '/groundtruth.txt']);

seq.len = size(ground_truth, 1);
seq.init_rect = ground_truth(1,:);

video_path = [video_path '/'];

disp(video_path);
%disp(exist([img_path num2str(1, '%08i.jpg')], 'file'));

%load all jpg files in the folder
img_files = dir([video_path '*.jpg']);
assert(~isempty(img_files), 'No image files to load.')
img_files = sort({img_files.name});

img_files = strcat(video_path, img_files);

seq.s_frames = cellstr(img_files);

end


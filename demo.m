
% This demo script runs the C-COT on the included "Crossing" video.

% Add paths
setup_paths();

% Load video information
video_path = '/dados/dissertacao/test_vot_all-50/dir_car_ab/';
[seq, ground_truth] = load_video_info(video_path);

% Run C-COT
results = testing(seq);
function run_tracker(video_path, video_name)
%RUN_TRACKER Summary of this function goes here
%   Detailed explanation goes here

% This demo script runs the C-COT on the included "Crossing" video.

% Add paths
setup_paths();

% Load video information
%video_path = '/dados/dissertacao/test_vot_all-50/dir_car_ab/';
[seq, ground_truth] = load_video_info(video_path);

seq.video_name = video_name;
seq.ground_truth = ground_truth;
seq.path_result = '/home/thomas/following-the-leader/Continuous-ConvOp/results/';

% Run C-COT
results = testing(seq);

end


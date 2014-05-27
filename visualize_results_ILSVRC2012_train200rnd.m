function visualize_results_ILSVRC2012_train200rnd()
% This script plots results for ILSVRC 2012 - validation (200 classes).
%
%

% clear the variables
clear;

% load common plot definitions
plot_defs;

% parameters
params.exp_dir = '/home/ironfs/scratch/vlg/Data_projects/grayobfuscation';
params.dataset_name = 'ILSVRC2012train200rnd';
params.prefix_output_files = strcat('results_',params.dataset_name);
params.save_output_files = 1;
params.set_log_scale = 1;
params.mean_precision = 1;
params.MATLAB = MATLAB;

% *** our experiments
% params.exps is list of cells of 2-elements-cells {experiment_name, legend}

% SOME STANDARD EXPERIMENTS
% params.exps = {{'exp06_22stats', 'exp06_22stats (GrayBox, topC=5)'}, ...
%                {'exp06_22stats_NMS_05', 'exp06_22stats_NMS_05 (GrayBox, topC=5)'}, ...
%                {'exp06_22stats_NMS_09', 'exp06_22stats_NMS_09 (GrayBox, topC=5)'}, ...
%                {'exp06_23stats', 'exp06_23stats (GraySegm, topC=5)'}, ...
%                {'exp06_23stats_NMS_05', 'exp06_23stats_NMS_05 (GraySegm, topC=5)'}, ...
%                {'exp06_23stats_NMS_09', 'exp06_23stats_NMS_09 (GraySegm, topC=5)'}, ...
%                {'exp14_07stats', 'exp14_07stats (SelectiveSearch, fast)'}, ...               
%                };

params.exps = { ...  
               {'exp23_09stats_NMS_05','ObfuscationSearch, topC=5'}, ...
               };

             %{'exp23_09stats_NMS_05','ObfuscationSearch, topC=5'}, ...
             
% params.exps = {{'exp06_22stats_NMS_05', 'exp06_22stats_NMS_05 (GrayBox, topC=5)'}, ...
%                {'exp06_31stats_NMS_05', 'exp06_31stats_NMS_05 (GrayBox, GT)'}, ...
%                {'exp06_23stats_NMS_05', 'exp06_23stats_NMS_05 (GraySegm, topC=5)'}, ...
%                {'exp06_32stats_NMS_05', 'exp06_32stats_NMS_05 (GraySegm, GT)'}, ...
%                {'exp23_09stats_NMS_05', 'exp23_09stats_NMS_05 (ObfuscationSearch, topC=5)'}, ...
%                {'exp23_11stats_NMS_05', 'exp23_11stats_NMS_05 (ObfuscationSearch, GT)'}, ...
%                {'exp14_07stats', 'exp14_07stats (SelectiveSearch, fast)'}, ...               
%                };


visualize_plot_and_save(params);
  
end


function visualize_results_ILSVRC2012_val200rnd()
% This script plots results for ILSVRC 2012 - validation (200 classes).
%
%

% clear the variables
clear;

% load common plot definitions
plot_defs;

% parameters
params.exp_dir = '/home/ironfs/scratch/vlg/Data_projects/grayobfuscation';
params.save_output_files = 1;

% create the figure for the mean recall per class
figure;
h_mean_recall = gca;
hold on;
grid on;
axis([1, 70, 0, 1]);
xlabel('Num subwindows')
ylabel('Mean recall per class')
title('Results on ILSVRC2012-val-200rnd')

% create the figure for the MABO score
figure;
h_mean_mabo = gca;
hold on;
grid on;
axis([1, 50, 0, 1]);
xlabel('Num subwindows')
ylabel('MABO')
title('Results on ILSVRC2012-val-200rnd')

% create the figure for the Precision
figure;
h_precision = gca;
hold on;
grid on;
axis([1, 50, 0, 0.5]);
xlabel('Num subwindows')
ylabel('Precision')
title('Results on ILSVRC2012-val-200rnd')

% *** our experiments
% params.exps is list of cells of 2-elements-cells {experiment_name, legend}

% SOME STANDARD EXPERIMENTS
params.prefix_output_files = 'results_ILSVRC2012val200rnd';
params.exps = {{'exp06_19stats','exp06_19 (GrayBox, topC=5)'}, ...
               {'exp14_05stats','exp14_05 (SelectiveSearch, fast)'}, ...
               {'exp06_20stats','exp06_20 (GraySegm, topC=5)'}, ...
               {'exp06_21stats','exp06_21 (SlidingWindow, topC=5)'}, ...
               {'exp21_03stats','exp21_03 (GraySegm+GrayBox, topC=5)'}, ...
               {'exp22_05stats','exp22_05 (Re-rank GrayBox, topC=5)'}, ...
               {'exp22_06stats','exp22_06 (Re-rank GraySegm+GrayBox, topC=5)'}, ...
               };

% % NMS EXPERIMENTS
% params.prefix_output_files = 'results_ILSVRC2012val200rnd_NMS';
% params.exps = { ...
%                {'exp14_05stats','exp14_05 (SelectiveSearch, fast)'}, ...
%                {'exp22_06stats','exp22_06 (Re-rank GraySegm+GrayBox, topC=5)'}, ...
%                {'exp22_06stats_NMS_03','exp22_06 (Re-rank GraySegm+GrayBox, topC=5, NMS=0.3)'}, ...
%                {'exp22_06stats_NMS_05','exp22_06 (Re-rank GraySegm+GrayBox, topC=5, NMS=0.5)'}, ...               
%                {'exp22_06stats_NMS_09','exp22_06 (Re-rank GraySegm+GrayBox, topC=5, NMS=0.9)'}, ...
%                };
             
for i=1:numel(params.exps)
  % load the experiment results
  S=load([params.exp_dir '/' params.exps{i}{1} '/mat/recall_vs_numPredBboxesImage.mat']);  
  % plot the mean recall per class
  plot(h_mean_recall, S.x_values, S.mean_recall, '-', 'DisplayName', params.exps{i}{2}, 'Color', MATLAB.Colors_all{i}, 'Marker', MATLAB.LineSpec.markers(i));
  h=legend(h_mean_recall, '-DynamicLegend'); set(h,'Interpreter','none', 'Location', 'Best');
  % plot the MABO
  plot(h_mean_mabo, S.x_values, S.mean_ABO, '-', 'DisplayName', params.exps{i}{2}, 'Color', MATLAB.Colors_all{i}, 'Marker', MATLAB.LineSpec.markers(i));
  h=legend(h_mean_mabo, '-DynamicLegend'); set(h,'Interpreter','none', 'Location', 'Best');
  % plot the Precision
  plot(h_precision, S.x_values, S.precision, '-', 'DisplayName', params.exps{i}{2}, 'Color', MATLAB.Colors_all{i}, 'Marker', MATLAB.LineSpec.markers(i));
  h=legend(h_precision, '-DynamicLegend'); set(h,'Interpreter','none', 'Location', 'Best');
end


% *** save figures
if params.save_output_files
  saveas(h_mean_recall, [params.prefix_output_files '_mean_recall.png']);
  saveas(h_mean_mabo, [params.prefix_output_files '_mean_mabo.png'])
  saveas(h_precision, [params.prefix_output_files '_precision.png'])
end
  
end

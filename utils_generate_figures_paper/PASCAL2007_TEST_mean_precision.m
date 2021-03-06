function PASCAL2007_TEST_mean_precision()

config;

figure('name','PASCAL2007_TEST_mean_precision','Position', conf.figure_position);
hold on;
grid on;
set(gcf, 'DefaultLineLineWidth', conf.lw);
set(gcf, 'DefaultLineMarkerSize', conf.ms);
set(gca, 'fontsize', conf.fs);
xlabel(conf.figure_precision_xlabel);
ylabel(conf.figure_precision_ylabel);
set(gca, 'XScale', 'log');
%title('This is the title');
%set(gca, 'XTick', xvalues);
%axis([1, 50, 0, 1]);


% ****** exp14_04stats / mean_precision ***  (SelectiveSearch fast)   **********
num_bboxes = [ 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 11.000000, 12.000000, 13.000000, 14.000000, 15.000000, 20.000000, 30.000000, 50.000000, 100.000000, 200.000000, 500.000000, 1000.000000, 2000.000000, 3000.000000, 5000.000000 ];
mean_precision = [ 0.138847, 0.110560, 0.093016, 0.082441, 0.073946, 0.067016, 0.061517, 0.057006, 0.053548, 0.050099, 0.047405, 0.044742, 0.042820, 0.041256, 0.039873, 0.033845, 0.026242, 0.018112, 0.010699, 0.006157, 0.002793, 0.001488, 0.000844, 0.000734, 0.000725 ];
plot(num_bboxes, mean_precision, ['-' SS.marker], 'DisplayName', SS.legend, 'Color', SS.color);
h=legend('-DynamicLegend'); set(h,'Interpreter','none');


% ****** exp29_01stats / mean_precision *** BING (our code)   **********
num_bboxes = [ 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 11.000000, 12.000000, 13.000000, 14.000000, 15.000000, 20.000000, 30.000000, 50.000000, 100.000000, 200.000000, 500.000000, 1000.000000, 2000.000000, 3000.000000 ];
mean_precision = [ 0.247061, 0.149695, 0.114972, 0.093922, 0.080093, 0.071083, 0.065264, 0.059847, 0.055813, 0.052036, 0.048707, 0.045851, 0.043542, 0.041318, 0.039254, 0.031748, 0.023922, 0.017716, 0.010858, 0.006203, 0.002789, 0.001476, 0.000781, 0.000780 ];
plot(num_bboxes, mean_precision, ['-' BING.marker], 'DisplayName', BING.legend, 'Color', BING.color);
h=legend('-DynamicLegend'); set(h,'Interpreter','none');


% ****** exp38_01stats / mean_precision *** EdgeBoxes   **********
num_bboxes = [ 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 11.000000, 12.000000, 13.000000, 14.000000, 15.000000, 20.000000, 30.000000, 50.000000, 100.000000, 200.000000, 500.000000, 1000.000000, 2000.000000, 3000.000000, 5000.000000 ];
mean_precision = [ 0.255364, 0.192041, 0.155317, 0.133550, 0.116793, 0.104456, 0.094876, 0.086700, 0.080378, 0.075482, 0.070717, 0.066561, 0.062732, 0.059552, 0.056732, 0.046115, 0.034095, 0.022782, 0.012838, 0.006975, 0.003052, 0.001741, 0.001408, 0.001402, 0.001402 ];
plot(num_bboxes, mean_precision, ['-' EDGEBOXES.marker], 'DisplayName', EDGEBOXES.legend, 'Color', EDGEBOXES.color);
h=legend('-DynamicLegend'); set(h,'Interpreter','none');


% ****** exp38_03stats / mean_precision *** MCG   **********
num_bboxes = [ 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 11.000000, 12.000000, 13.000000, 14.000000, 15.000000, 20.000000, 30.000000, 50.000000, 100.000000, 200.000000, 500.000000, 1000.000000, 2000.000000, 3000.000000, 5000.000000 ];
mean_precision = [ 0.248311, 0.185023, 0.152899, 0.130118, 0.115491, 0.103318, 0.094530, 0.087088, 0.081389, 0.076431, 0.071780, 0.067579, 0.063946, 0.060867, 0.057787, 0.046850, 0.034109, 0.022541, 0.012201, 0.006475, 0.002756, 0.001435, 0.000756, 0.000531, 0.000365 ];
plot(num_bboxes, mean_precision, ['-' MCG.marker], 'DisplayName', MCG.legend, 'Color', MCG.color);
h=legend('-DynamicLegend'); set(h,'Interpreter','none');


% % ****** exp23_07stats_NMS_05 / mean_precision *** ObfuscationSearch, topC=5   **********
% num_bboxes = [ 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 11.000000, 12.000000, 13.000000, 14.000000, 15.000000, 20.000000, 30.000000, 50.000000, 100.000000, 200.000000, 500.000000, 1000.000000 ];
% mean_precision = [ 0.307076, 0.200268, 0.152813, 0.125232, 0.106329, 0.093561, 0.083424, 0.075337, 0.069076, 0.063941, 0.059710, 0.055937, 0.052487, 0.049705, 0.047075, 0.037712, 0.027287, 0.017949, 0.010031, 0.005518, 0.003532, 0.003526 ];
% ****** exp30_07stats_NMS_05 / mean_precision *** ObfuscationSearch similarity + NET features, TopC=5   **********
num_bboxes = [ 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 11.000000, 12.000000, 13.000000, 14.000000, 15.000000, 20.000000, 30.000000, 50.000000, 100.000000, 200.000000, 500.000000, 1000.000000 ];
mean_precision = [ 0.312127, 0.211601, 0.163161, 0.132237, 0.111946, 0.098140, 0.087601, 0.079418, 0.072084, 0.066713, 0.062162, 0.058127, 0.054877, 0.051821, 0.049111, 0.039458, 0.028721, 0.019018, 0.010700, 0.006008, 0.003414, 0.003363 ];
plot(num_bboxes, mean_precision, ['-' OBFStopC.marker], 'DisplayName', OBFStopC.legend, 'Color', OBFStopC.color);
h=legend('-DynamicLegend'); set(h,'Interpreter','none');

% ****** exp41_01stats / mean_precision *** STL_WL+EdgeBoxes   **********
num_bboxes = [ 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 11.000000, 12.000000, 13.000000, 14.000000, 15.000000, 20.000000, 30.000000, 50.000000, 100.000000, 200.000000, 500.000000, 1000.000000, 2000.000000, 3000.000000, 5000.000000 ];
mean_precision = [ 0.305763, 0.209393, 0.162490, 0.132438, 0.113021, 0.098878, 0.087957, 0.079588, 0.072647, 0.067216, 0.064399, 0.061285, 0.058687, 0.056291, 0.053895, 0.044412, 0.033061, 0.022358, 0.012730, 0.006941, 0.003045, 0.001733, 0.001396, 0.001390, 0.001390 ];
plot(num_bboxes, mean_precision, ['-' STLWL_EB.marker], 'DisplayName', STLWL_EB.legend, 'Color', STLWL_EB.color);
h=legend('-DynamicLegend'); set(h,'Interpreter','none');
set(h,'position',conf.legend_position)

%legend('Location', 'SouthEast');

end

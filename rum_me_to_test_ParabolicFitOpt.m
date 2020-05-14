%% Run me to test ParabolicFitOpt.m

stepsize = 1;       % modulation depth

steps = -3:3;       % number of modulations in this case 7

fluorescencemodulate = 10*ones(1,7)-steps.^2 + rand(1,7);    % fluorescence intensity 
% for each modulation (can be calculated using scripts in 2P_metric_calculation)

modulatedpeakamp = ParabolicFitOpt(stepsize,fluorescencemodulate,steps);


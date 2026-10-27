%% Lab2_1 pseudo-rng 

rng(2026, 'twister');

uniformValues = rand(10000, 1);
normalValues  = randn(10000, 1);

figure;

subplot(1, 2, 1);
histogram(uniformValues, 50);
title('rand: Uniform Samples');
xlabel('Value');
ylabel('Count');

subplot(1, 2, 2);
histogram(normalValues, 50);
title('randn: Standard Normal Samples');
xlabel('Value');
ylabel('Count');

% Use the same seed
rng(2026, 'twister');
set1 = randn(5000, 1);

rng(2026, 'twister');
set2 = randn(5000, 1);

fprintf('Do the two sets repeat? %d\n', isequal(set1, set2));
fprintf('Maximum absolute difference: %.1f\n', max(abs(set1 - set2)));
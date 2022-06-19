% Plot battery resistance at different temperatures

figure(5)
plot(SOC_LUT,R0_LUT)
legend(temperature_label{ref_curr & ~val_exp},'Location','eastoutside');
xlabel('1-SOC'); xlim([0 1]); ylabel('Resistance [\Omega]');
title(['Figure 5 - Battery Resistance' sprintf('\n\n') 'Battery Resistance vs. SOC at Different Temperatures']);
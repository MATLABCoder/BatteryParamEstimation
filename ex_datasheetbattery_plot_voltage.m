% Plot discharge curves at different temperatures 
figure(4)
hold on
for i=find(ref_curr)
    plot(x.(['curr' current_label{i} '_temp' temperature_label{i}]), ...
        exp_data.([label '_' current_label{ref_exp} '_' temperature_label{i}])(:,2));
end
legend(temperature_label(find(ref_curr)),'Location','eastoutside');
xlabel('1-SOC'); xlim([0 1]); ylabel('Voltage [V]'); title([batt_id ' ' current_label{ref_exp}]);
title(['Figure 4 - Battery Voltage' sprintf('\n\n') 'Battery Voltage at Different Temperatures Under Constant Load']);
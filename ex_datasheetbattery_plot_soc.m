%% Normalized SOC Data
figure(2);
count = 1;
hold on
for i=find(ref_temp)
    p1 = plot(x.(['curr' current_label{i} '_temp' temperature_label{i}]), exp_data.([label '_' current_label{i} '_' temperature_label{ref_exp}])(:,2));
    leg{count}=['I = ' num2str(current(i)) ' A'];
    count = count+1;
end
legend(leg,'Location','EastOutside');
% subplot(2,1,2);legend(leg,'Location','EastOutside');
xlabel('1-SOC'); xlim([0 1]); ylabel('Voltage [V]'); title(['Figure 2 - Normalized SOC Data' sprintf('\n\n') batt_id ' ' temperature_label{ref_exp}]);
% p2.XLabel.String = 'Ah'; p2.XLim = [0 110]; p2.YLabel.String = 'Voltage [V]'; p2.Title.String = ([batt_id ' ' temperature_label{ref_exp}]);
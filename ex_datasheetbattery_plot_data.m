%% Plot the discharge and temperature curves
% Define RGB pairs
purple = [51 0 102]/256;
orange = [256 128 0]/256;
indigo = [75 0 130]/256;
%
% Battery information is summarized below and is aligned with line colors.
% Note that the constant temperature curves end at index 5
batt_id = 'Lithium Ion High Energy Density 100Ah';
label = 'LiIon';
current_label = {'33p3A','50A','100A','200A','300A','50A','50A','50A',...
    '50A','50A','50A'};
current = [33.3 50 100 200 300 50 50 50 50 50 50];
temperature_label = {'25C','25C','25C','25C','25C','n30','n20','n10',...
    '0C','10C','40C'};
temperature = [25 25 25 25 25 -30 -20 -10 0 10 40];
line_colors = {'r','g',purple,'c','m',orange,'b',indigo,'r','g','b',...
    orange,purple};
% markerType1 = {'none', 'o', 'none', 'none', 'none'};
markerType1 = {'none', 'o', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none'};

figure(1);
subplot(2,1,1);hold on;
for j=1:5
%data = evalin('base',['LiIon_' current_label{j} '_' temperature_label{j}]);
data = ['LiIon_' current_label{j} '_' temperature_label{j}];
plot(exp_data.(data)(:,1),exp_data.(data)(:,2),'color',line_colors{j},'Marker',markerType1{j});
end
title(['Figure 1 - Data Import' sprintf('\n\n') 'Discharge Characteristics Constant 25 \circC']);
xlabel('Discharge Capacity [Ah]')
ylabel('Voltage [V]');
legend({'0.33C','0.5C','1.0C','2.0C','3.0C'},'Location','EastOutside')
hold off;

subplot(2,1,2);hold on;
for j=[2 6:11]
%data = evalin('base',['LiIon_' current_label{j} '_' temperature_label{j}]);
data = ['LiIon_' current_label{j} '_' temperature_label{j}];
plot(exp_data.(data)(:,1),exp_data.(data)(:,2),'color',line_colors{j},'Marker',markerType1{j});
end
title('Temperature Characteristics at Constant 50A');
xlabel('Discharge Capacity [Ah]')
ylabel('Voltage [V]');
legend({'25 \circC','-30 \circC','-20 \circC','-10 \circC','0 \circC','10 \circC','40 \circC'},'Location','EastOutside')
hold off;
function PlotExperiment( color )

global T3conv T4conv TSHconv
global time y

%% plot T4 Pools
    subplot(3,2,1*2-1, 'align');
    hold on
    plot(time/24, y(:,1)*T4conv,color,'LineWidth', 4); %plot q1 = T4
    hold off
for i = 2:3
    subplot(3,2,i*2-1, 'align');
    hold on
    plot(time/24, y(:,i),color,'LineWidth', 4,'r'); %plot q1 = T4
    hold off
end

%% plot T3 Pools
    subplot(3,2,(4-3)*2, 'align');
    hold on
    plot(time/24, y(:,4)*T3conv,color,'LineWidth', 4); %plot q4 = T3        
    hold off
for i = 5:6
    subplot(3,2,(i-3)*2, 'align');
    hold on
    plot(time/24, y(:,i),color,'LineWidth', 4,'r'); %plot q4 = T3
    hold off
end

global plotOld
global k63MultD1 k52Mult k63MultD2 p
global plot1
global plot2
global n
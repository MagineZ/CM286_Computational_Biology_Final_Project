function PlotExperiment( color )

global T3conv T4conv TSHconv
global time y

%% plot T4 Pools
    subplot(1,2,1, 'align');
    hold on
    plot(time/24, y(:,1)*T4conv,color,'LineWidth', 4); %plot q1 = T4
    hold off


%% plot T3 Pools
    subplot(1,2,2, 'align');
    hold on
    plot(time/24, y(:,4)*T3conv,color,'LineWidth', 4); %plot q4 = T3        
    hold off

global plotOld
global k63MultD1 k52Mult k63MultD2 p
global plot1
global plot2
global n
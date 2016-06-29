function PlotIndividual( color )

global T3conv T4conv TSHconv
global time y
global dataPointsT3Red dataPointsT3Blue

global fitIndex
global dataTimeForPlots
global errorT3Red
global errorT3Blue
global dataPointsT3Pooled errorT3Pooled
global dataPointsT4Red errorT4Red
global dataPointsT4Blue errorT4Blue
global dataPointsT4Pooled errorT4Pooled
global wenzelDataTime wenzelDataT3 wenzelDataT4

poolName = {'Serum T4 Conc'; 'Liver+Kidney T4'; 'Muscle+Brain etc T4'; 'Serum T3 Conc'; 'Liver+Kidney T3 and D1'; 'Muscle+Brain etc T3'};

% plot T4 Pools
i = 1;
    figure()
    
    set(gca,'FontSize',16) %set the font size of everything, including the tick labels
    xlhand = get(gca,'xlabel'); %make a handle for the x axis label
    xlabel('days') %label the x axis
    set(xlhand,'fontsize',25) %set the font size for the x axis label
    
    set(gca,'FontSize',16) %set the font size of everything, including the tick labels
    ylhand = get(gca,'ylabel'); %make a handle for the x axis label
    ylabel('ug/l') %label the x axis
    set(ylhand,'fontsize',25) %set the font size for the x axis label

    title(poolName(i),'FontSize',30);
    % xlabel('days','FontSize',16);
    % ylabel('ug/l','FontSize',16);
    grid on;
    axis([0,max(time)*1.05/24,0,max(y(:,i)*T4conv)*1.25]);
    
    hold on
    z=[0 0 0 0 0 0 0 0 0];
    if fitIndex == 3
        if strcmp(color,'red') || strcmp(color,'')
            errorbar(dataTimeForPlots/24, dataPointsT4Pooled,errorT4Pooled,errorT4Pooled,'. red','markersize',15);
        end
    else
        if strcmp(color,'red') || strcmp(color,'')
            errorbar(dataTimeForPlots/24, dataPointsT4Red,errorT4Red,z,'. red ','markersize',15);
        end
        if strcmp(color,'blue') || strcmp(color,'')
            T1 = errorbar(dataTimeForPlots/24, dataPointsT4Blue,errorT4Blue,errorT4Blue,'. red','markersize',30);
            set(T1,'linewidth',3)
        end
    end
    if strcmp(color,'wenzel') || strcmp(color,'')
        plot(wenzelDataTime/24, wenzelDataT4, '. k', 'markersize',15);
    end
    hold off
    
    hold on
    plot(time/24, y(:,1)*T4conv,color,'LineWidth', 4); %plot q1 = T4
    hold off
    
for i = 2:3
    figure()
    
    set(gca,'FontSize',16) %set the font size of everything, including the tick labels
    xlhand = get(gca,'xlabel'); %make a handle for the x axis label
    xlabel('days') %label the x axis
    set(xlhand,'fontsize',25) %set the font size for the x axis label
    
    set(gca,'FontSize',16) %set the font size of everything, including the tick labels
    ylhand = get(gca,'ylabel'); %make a handle for the x axis label
    ylabel('ug') %label the x axis
    set(ylhand,'fontsize',25) %set the font size for the x axis label
    
    title(poolName(i),'FontSize',30);
%     xlabel('days','FontSize',16);
%     ylabel('ug','FontSize',16);
    grid on;
    axis([0,max(time)*1.05/24,0,max(y(:,i)*T4conv*3.2)*1.25]);
    
    hold on
    plot(time/24, y(:,i)*T4conv*3.2,color,'LineWidth', 4); %plot q1 = T4
    hold off
end

%plot T3 Pools
i = 4;
    figure()
    
    set(gca,'FontSize',16) %set the font size of everything, including the tick labels
    xlhand = get(gca,'xlabel'); %make a handle for the x axis label
    xlabel('days') %label the x axis
    set(xlhand,'fontsize',25) %set the font size for the x axis label
    
    set(gca,'FontSize',16) %set the font size of everything, including the tick labels
    ylhand = get(gca,'ylabel'); %make a handle for the x axis label
    ylabel('ug/l') %label the x axis
    set(ylhand,'fontsize',25) %set the font size for the x axis label
    
    title(poolName(i),'FontSize',30);
%     xlabel('days','FontSize',16);
%     ylabel('ug/l','FontSize',16);
    grid on;
    axis([0,max(time)*1.05/24,0,max(y(:,i)*T3conv)*1.25]);
    
    hold on
    if fitIndex == 3
        if strcmp(color,'red') || strcmp(color,'')
            errorbar(dataTimeForPlots/24, dataPointsT3Pooled,errorT3Pooled,errorT3Pooled,'. red','markersize',15);
        end
    else
        if strcmp(color,'red') || strcmp(color,'')
            errorbar(dataTimeForPlots/24, dataPointsT3Red,errorT3Red,z,'. red','markersize',15);
        end
        if strcmp(color,'blue') || strcmp(color,'')
            T2 = errorbar(dataTimeForPlots/24, dataPointsT3Blue,errorT3Blue,errorT3Blue,'. red','markersize',30);
            set(T2,'linewidth',3)
        end
    end
    if strcmp(color,'wenzel') || strcmp(color,'')
        plot(wenzelDataTime/24, wenzelDataT3, '. k', 'markersize',15);
    end
    
    hold on
    plot(time/24, y(:,4)*T3conv,color,'LineWidth', 4); %plot q4 = T3        
    hold off

for i = 5:6
    figure()
    
    set(gca,'FontSize',16) %set the font size of everything, including the tick labels
    xlhand = get(gca,'xlabel'); %make a handle for the x axis label
    xlabel('days') %label the x axis
    set(xlhand,'fontsize',25) %set the font size for the x axis label
    
    set(gca,'FontSize',16) %set the font size of everything, including the tick labels
    ylhand = get(gca,'ylabel'); %make a handle for the x axis label
    ylabel('ug') %label the x axis
    set(ylhand,'fontsize',25) %set the font size for the x axis label
    
    title(poolName(i),'FontSize',30);
%     xlabel('days','FontSize',16);
%     ylabel('ug','FontSize',16);
    grid on;
    axis([0,max(time)*1.05/24,0,max(y(:,i)*T3conv*3.2)*1.25]);
    
    if i == 5
       global k63MultD1 k52Mult p
       global plot1
       global plot2
       plot1 = k52Mult .* y(:,2) .* y(:,20) / p(14);
       plot2 = k63MultD1 .* y(:,3) .* y(:,20) / p(16);
       hold on
       plot(time/24,plot2*4500,'--g','LineWidth',4);
% plot(time/24,plot1,'g','LineWidth',4);
       hold off 
    end
    
    hold on
    plot(time/24, y(:,i)*T3conv*3.2,color,'LineWidth', 4); %plot q4 = T3        
    hold off
end
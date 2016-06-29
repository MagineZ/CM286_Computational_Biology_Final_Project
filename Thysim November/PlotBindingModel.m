global y p;
global bindingModel bindingFast bindingSlow bindingSR3 bindingLeak bindingT;
T4conv = 777/3.2;
q4Fbase = 0.004738586652067;
for i = 1:16800
    y1 = y(i,1);
    bindingModel(i) = (p(24)+p(25)*y1+p(26)*y1^2+p(27)*y1^3)*y(i,4);
    %bindingModel(i) = q4Fbase*y(i,4);
    bindingFast(i) = p(20)*y(i,5);
    bindingSlow(i) = p(21)*y(i,6);
    bindingSR3(i) = p(19)*y(i,19);
    bindingT(i) = p(28)*y(i,13);
    bindingLeak(i) = -(p(22)+p(23))*bindingModel(i);
end

global bindingDelta;
bindingDelta = (-bindingLeak(1) - bindingSR3(1) - bindingSlow(1)) / (p(20) * y(1,5));

% qdot(4) = SR3+p(20)*q(5)+p(21)*q(6)-(p(22)+p(23))*q4F+p(28)*q(13)+u4;       %T3pdot

% figure
% hold on
% plot((1:16800)*7/16800,bindingSR3);
% plot((1:16800)*7/16800,bindingFast);
% plot((1:16800)*7/16800,bindingSlow);
% plot((1:16800)*7/16800,bindingLeak);
% hold off

figure
subplot(3,2,1,'align')
hold on
title('Net rate of change of T3 Plasma')
plot((1:16800)*7/16800,bindingFast+bindingSlow+bindingSR3+bindingLeak);
hold off

subplot(3,2,2,'align')
hold on
title('Flow Into T3 Plasma from SR3')
plot((1:16800)*7/16800,bindingSR3);
hold off

subplot(3,2,3,'align')
hold on
title('Flow Into T3 Plasma from T3 Fast Pool')
plot((1:16800)*7/16800,bindingFast);
hold off

subplot(3,2,4,'align')
hold on
title('Flow Into T3 Plasma from T3 Slow Pool')
plot((1:16800)*7/16800,bindingSlow);
hold off

subplot(3,2,5,'align')
hold on
title('Net Flow Out of T3 Plasma')
plot((1:16800)*7/16800,bindingLeak);
hold off

subplot(3,2,6,'align')
hold on
title('T3 plasma')
plot((1:16801)*7/16800,y(:,4));
hold off
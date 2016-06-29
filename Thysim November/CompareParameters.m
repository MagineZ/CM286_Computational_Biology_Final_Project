function [ ] = CompareParameters( )
%COMPAREPARAMETERS Summary of this function goes here
%   Detailed explanation goes here

global p;
p0 = p;

%% Original kinetic parameter values
p0(1) = 0.00174155;        %S4
p0(2) = 8;                 %tau
p0(3) = 0.868;             %k12
p0(4) = 0.108;             %k13
p0(5) = 584;               %k31free
p0(6) = 1503;              %k21free
p0(7) = 0.000289;          %A
p0(8) = 0.000214;          %B
p0(9) = 0.000128;          %C
p0(10) = -8.83*10^-6;      %D
p0(11) = 0.88;             %k4absorb; originally 0.881
p0(12) = 0.0189;           %k02
p0(13) = 0.00998996;       %VmaxD1fast
p0(14) = 2.85;             %KmD1fast
p0(15) = 6.63*10^-4;       %VmaxD1slow
p0(16) = 95;               %KmD1slow
p0(17) = 0.00074619;       %VmaxD2slow
p0(18) = 0.075;            %KmD2slow
p0(19) = 3.3572*10^-4;     %S3
p0(20) = 5.37;             %k45
p0(21) = 0.0689;           %k46
p0(22) = 127;              %k64free
p0(23) = 2043;             %k54free
p0(24) = 0.00395;          %a
p0(25) = 0.00185;          %b
p0(26) = 0.00061;          %c
p0(27) = -0.000505;        %d
p0(28) = 0.88;             %k3absorb; originally 0.882
p0(29) = 0.207;            %k05
p0(30) = 1166;             %Bzero
p0(31) = 581;              %Azero
p0(32) = 2.37;             %Amax
p0(33) = -3.71;            %phi
p0(34) = 0.53;             %kdegTSH-HYPO
p0(35) = 0.037;            %VmaxTSH
p0(36) = 23;               %K50TSH
p0(37) = 0.118;            %k3
p0(38) = 0.29;             %T4P-EU
p0(39) = 0.006;            %T3P-EU
p0(40) = 0.037;            %KdegT3B
p0(41) = 0.0034;           %KLAG-HYPO
p0(42) = 5;                %KLAG
p0(43) = 1.3;              %k4dissolve
% p0(44) = 0.12*d2;          %k4excrete; originally 0.119
p0(44) = 0.119;
p0(45) = 1.78;             %k3dissolve
% p0(46) = 0.12*d4;          %k3excrete; originally 0.118
p0(46) = 0.118;
p0(47) = 3.2;              %Vp
p0(48) = 4.3;              %VTSH
p0(49) = 1 - 0.5^(1/12);
p0(50) = 0.407080916166588*50;
p0(51) = 0.000119192355107809*30000;


pout = p./p0;

disp('k12');
disp(pout(3));
disp('k13');
disp(pout(4));
disp('k31');
disp(pout(5));
disp('k21');
disp(pout(6));

disp('k45');
disp(pout(20));
disp('k46');
disp(pout(21));
% disp('k64'); % eliminate this
% disp(pout(22));
disp('k54');
disp(pout(23));

% disp('k05'); % eliminate this
% disp(pout(29));

disp('k02');
disp(pout(12));

disp('k0D');
disp(pout(50));

disp('kD4');
disp(pout(51));

disp('k52');
disp(pout(13));

disp('k63');
disp(pout(15));

disp('p13');
disp(pout(13));

disp('p15');
disp(pout(15));

disp('p17');
disp(pout(17));

end


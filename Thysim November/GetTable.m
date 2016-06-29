function [ output_args ] = GetTable(  )

global newK2 newKprime newKdeg newK3;
global k45Mult k54Mult k46Mult k64Mult k05Mult;
global k12Mult k21Mult k13Mult k31Mult k02Mult k03Mult;
global k52Mult k63MultD1 k63MultD2;
global p y0 kdelay;
global n;
global T3conv T4conv TSHconv;
global D2Brandt;

% global FluxNames ParamNames;
% 
% FluxNames = ['k12';'k21';'k13';'k31';'k02';'k03';'k52D1';'k63D1';'k63D2';'SR3';'SR4';'T4Gut'];
% ParamNames = ['k12';'k21';'k13';'k31';'k02';'k03';'vMaxD2Slow';'KmD2Slow';'D2Brandt';'D1Deg','D1Stim','D1Base'];
output_args(1) = k12Mult * p(3);
output_args(2) = k21Mult * p(6);
output_args(3) = k13Mult * p(4);
output_args(4) = k31Mult * p(5);
output_args(5) = k02Mult * p(12);
output_args(6) = k03Mult * p(3);
output_args(7) = p(17);
output_args(8) = p(18);
output_args(9) = D2Brandt;
output_args(10) = newKdeg;
output_args(11) = newKprime;
output_args(12) = newKdeg * p(13) - newKprime * 0.0112585458130547;
output_args(13) = k45Mult * p(20);
output_args(14) = k54Mult * p(23);
output_args(15) = k46Mult * p(21);
output_args(16) = k64Mult * p(22);
output_args(17) = k05Mult * p(29);

global k12New k21New k13New k31New k02New;
global k45New k54New k46New k64New k05New;

output_args(18) = 0; % ignore
output_args(19) = 1000 * k12New;
output_args(20) = 1000 * k21New;
output_args(21) = 1000 * k13New;
output_args(22) = 1000 * k31New;
output_args(23) = 1000 * k02New;
output_args(24) = 1000 * k45New;
output_args(25) = 1000 * k54New;
output_args(26) = 1000 * k46New;
output_args(27) = 1000 * k64New;
output_args(28) = 1000 * k05New;

global calc52D1 calc63D1 calc63D2;
global calc52D1Old calc63D1Old calc63D2Old;
global k12Old k21Old k13Old k31Old k02Old;
global k45Old k54Old k46Old k64Old k05Old;

output_args(29) = 0; % ignore
output_args(30) = k12New/k12Old;
output_args(31) = k21New/k21Old;
output_args(32) = k13New/k13Old;
output_args(33) = k31New/k31Old;
output_args(34) = k02New/k02Old;
output_args(35) = mean(calc52D1)/mean(calc52D1Old);
output_args(36) = mean(calc63D1)/mean(calc63D1Old);
output_args(37) = mean(calc63D2)/mean(calc63D2Old);
output_args(38) = k45New/k45Old;
output_args(39) = k54New/k54Old;
output_args(40) = k46New/k46Old;
output_args(41) = k64New/k64Old;
output_args(42) = k05New/k05Old;

output_args(43) = 0; %ignore
output_args(44) = k12Mult;
output_args(45) = k21Mult;
output_args(46) = k13Mult;
output_args(47) = k31Mult;
output_args(48) = k02Mult;
output_args(49) = k45Mult;
output_args(50) = k54Mult;
output_args(51) = k46Mult;
output_args(52) = k64Mult;
output_args(53) = k05Mult;

output_args = output_args';

end


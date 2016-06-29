function y = LBMcal(BW,Ht,Age,gender,option)
%out put
%y = lean body mass(kg)
%Input
%BW = body weight(kg)
%Ht = height (cm)
%gender = 1(man) 0 (woman)
%option = 1, 2, 3, 4
BMI = BW/(Ht/100)^2;
if (option ==1)
    %The Boer Formula:
    if gender ==1
        y = 0.407*BW + 0.267*Ht - 19.2;
    end
    if gender == 0
        y = 0.252*BW + 0.473*Ht - 48.3;
        
    end
end

if (option ==2)
    %The James Formula:
    if gender ==1
        y = 1.1*BW - 128*(BW/Ht)^2;
    end
    if gender == 0
        y  = 1.07*BW - 148*(BW/Ht)^2;
    end
    
end

if (option ==3)
    %the Hume Formula:
    if gender ==1
        y = 0.32810*BW + 0.33929*Ht - 29.5336;
    end
    if gender == 0
        y = 0.29569*BW + 0.41813*Ht - 43.2933;
    end
    
end

if (option == 4)
    %   Sarayut Janmahasatian
    if gender ==1
        y = 9.27*1000*BW/(6.68*1000+216*BMI);
    end
    if gender == 0
        y = 9.27*1000*BW/(8.78*1000+244*BMI);
    end
end

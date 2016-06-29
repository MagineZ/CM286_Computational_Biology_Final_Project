function y = Dosecal(BW,Ht,Age,gender,LBM_option,Dose_option)
LBM = LBMcal(BW,Ht,Age,gender,LBM_option);
BMI = BW/(Ht/100)^2;

if Dose_option ==1
    y = 63.323+1.521*LBM;
end
if Dose_option ==2
    if BMI<=23
        if Age<=40
            k=1.8;
        end
        if (Age>40&&Age<55)
            k=1.7;
        end
        if Age >55
            k = 1.6;
        end
    end
    
    if (BMI>23&&BMI<28)
        if Age<=40
            k=1.7;
        end
        if (Age>40&&Age<55)
            k=1.6;
        end
        if Age >55
            k = 1.5;
        end
    end
    
    if BMI>28
        if Age<=40
            k=1.6;
        end
        if (Age>40&&Age<55)
            k=1.5;
        end
        if Age >55
            k = 1.4;
        end
    end
    
    y = k*BW;
end
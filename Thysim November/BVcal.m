function y = BVcal(BW,Ht,gender)
%Nadler's Formula
if gender ==1
y = 0.3669 * (Ht/100)^3 + 0.03219 * BW + 0.6041; 
end
if gender ==0
y = 0.3561 * (Ht/100)^3 + 0.03308 *BW + 0.1833;
end

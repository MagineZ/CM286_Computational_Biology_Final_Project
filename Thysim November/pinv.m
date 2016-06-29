function Sminus = pinv(S)
   %  obtain the pseudoinverse of a diagonal (but possibly rectangular) matrix S
   Sminus = zeros(size(S));
   for i=1:min(size(S)), if S(i,i) ~= 0, Sminus(i,i) = 1/S(i,i); end, end

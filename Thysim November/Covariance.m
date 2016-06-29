function [ covariance, correlation, pcov ] = Covariance( jacobian )
%takes the jacobian and returns the covariance and correlation matrices.

covariance = inv(jacobian.' * jacobian);
display(covariance);
dim = size(jacobian);

for i = 1:dim(2)
    for j = 1:dim(2)
        correlation(i,j) = covariance(i,j)/sqrt(covariance(i,i)*covariance(j,j));
    end
end

display(correlation);

pcov = diag(pinv(jacobian' * jacobian))';

display(diag(pcov));

end


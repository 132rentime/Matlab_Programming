function [x] = sgm(a,b,c)
    x = 1./(1 + exp(-(a' + b'*c)));
end 


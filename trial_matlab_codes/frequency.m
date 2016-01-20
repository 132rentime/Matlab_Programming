% This function returns the frequency of the unique values in vector w.

function [freq,x] = frequency(w)

x = unique(w);
p = length(w);
freq = zeros(length(x),1);


for j=1:length(x)
    for k=1:p
        if w(k) == x(j)
            freq(j) = freq(j) + 1; 
        end
    end 
end 
   
end


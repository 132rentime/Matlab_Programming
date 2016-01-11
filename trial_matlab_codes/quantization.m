
I = imread('pout.tif');
s = size(I)
x = s(1)
y = s(2)

for i=1:1:x
    for j=1:1:y
        if I(i,j) > 128
            I(i,j) = 256;
        else 
            I(i,j)=0;
        end
    end 
    
end
            

            
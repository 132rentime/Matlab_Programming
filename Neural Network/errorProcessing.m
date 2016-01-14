function err = errorProcessing(A,neurons,expectOut)

[m,n]=size(A);
w = A(n);

err = neurons{1,n}-expectOut;

end 
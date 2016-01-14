function err = errorProcessing(A,neurons,expectOut)

[m,n]=size(A);
err = expectOut - neurons{1,n};

end 
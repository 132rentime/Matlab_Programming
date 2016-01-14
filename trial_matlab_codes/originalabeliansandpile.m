function originalabeliansandpile
x=100;
y=100;
A=2*ones(x,y);
for j=1:4060
xj=50;
yj=50;
A(xj,yj)= A(xj,yj)+1;
for xi=1:100
for yi=1:100
if A(xi,yi) >= 4;
A(xi,yi)= A(xi,yi) - 4;
A(xi+1,yi)=A(xi+1,yi) + 1;
A(xi,yi+1)=A(xi,yi+1) + 1;
A(xi-1,yi)=A(xi-1,yi) + 1;
A(xi,yi-1)=A(xi,yi-1) + 1;
end
end
end
imagesc(A)
colormap(spring);
pause(0.01)
end
end
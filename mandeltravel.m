


function mandeltravel(W,Nsteps)

% [W,x,y]=mandelbrot(20);
h=figure('Color',[0 0 0]);
set(h, 'Position', [400 200 1.2*900 1.2*600])
colormap gray(256);
pcolor(W);
shading flat;
axis('square','equal','off');
[i,j]=ginput;
Npoints=length(i);
if(Npoints==1),
    i=[i;i];
    j=[j;j];
    Npoints=2;
    Nsteps=1;
end
x=(0.5+1.7)*(i/1000)-1.7;
y=(1.1+1.1)*(j/1000)-1.1;
hold on
plot(i,j,'-bo','LineWidth',4);
juliatimelapse(x,y,Npoints,Nsteps);

end
function [W,cx,cy]=mandelbrot(Niter)
if nargin<1,
    Niter=100;
end
    hFig=figure('Color',[0 0 0]);
    set(hFig, 'Position', [400 200 1.2*900 1.2*600])
    m=1000;
    cx=-.6;
    cy=0;
    l=1.1;
    x=linspace(cx-l,cx+l,m);
    y=linspace(cy-l,cy+l,m);
    [X,Y]=meshgrid(x,y);
    Z=zeros(m);
    C=X+1i*Y;
    for k=1:Niter;
    Z=Z.^2+C;
    W=exp(-abs(Z));
    end
%     colormap copper(256);
    colormap gray(256);
    pcolor(W);
    shading flat;
    axis('square','equal','off');
  
end

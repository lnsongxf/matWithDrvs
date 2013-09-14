
function [theMat,theMatDrv01,theMatDrv02]=matFunc(xx)
theMat=...
[exp(xx(1)) sin(xx(1)) exp(xx(2)) sin(xx(2)) exp(xx(1)*xx(2)) sin(xx(1)*xx(2))];
theMatDrv01=...
{[exp(xx(1)) cos(xx(1)) 0 0 ...
exp(xx(1)*xx(2))*xx(2) cos(xx(1)*xx(2))*xx(2)],...
[0 0  exp(xx(2)) cos(xx(2)) ...
exp(xx(1)*xx(2))*xx(1)   cos(xx(1)*xx(2))*xx(1)]};
theMatDrv02=...
{...
[exp(xx(1)) -sin(xx(1)) 0 0 ...
exp(xx(1)*xx(2))*(xx(2)^2) -sin(xx(1)*xx(2))*(xx(2)^2)],...
[exp(xx(1)) -sin(xx(1)) 0 0 ...
exp(xx(1)*xx(2))*(xx(2)^2) ...
cos(xx(1)*xx(2))-sin(xx(1)*xx(2))*(xx(1)*xx(2))],...
[exp(xx(1)) -sin(xx(1)) 0 0 ...
exp(xx(1)*xx(2))*(xx(1)^2) -sin(xx(1)*xx(2))*(xx(1)^2)]};

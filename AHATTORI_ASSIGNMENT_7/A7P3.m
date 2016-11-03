load('A7P3.mat');
dat = A7P3_data;

pos_err = mean(((dat(:,1)-dat(:,3)).^2+(dat(:,2)-dat(:,4)).^2).^0.5);

xdr = zeros(length(dat(:,1)),1);
ydr = zeros(length(dat(:,1)),1);
xdr(1) = dat(1,1);
ydr(1) = dat(2,1);
for i = 2:length(xdr)
    xdr(i) = xdr(i-1)+dat(i-1,5);
    ydr(i) = ydr(i-1)+dat(i-1,6);
end

dr_err = mean(((dat(:,1)-xdr).^2+(dat(:,2)-ydr).^2).^0.5);
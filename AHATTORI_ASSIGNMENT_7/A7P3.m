load('A7P3.mat');
dat = A7P3_data;

x = dat(:,1);
y = dat(:,2);
xm = dat(:,3);
ym = dat(:,4);

pos_err = mean(((dat(:,1)-dat(:,3)).^2+(dat(:,2)-dat(:,4)).^2).^0.5);

xdr = zeros(length(dat(:,1)),1);
ydr = zeros(length(dat(:,1)),1);
xdr(1) = dat(1,1);
ydr(1) = dat(1,2);
for i = 2:length(xdr)
    xdr(i) = xdr(i-1)+dat(i-1,5);
    ydr(i) = ydr(i-1)+dat(i-1,6);
end

dr_err = mean(((dat(:,1)-xdr).^2+(dat(:,2)-ydr).^2).^0.5);


%Least Squares Start
svel = 0.35;

f = [dat(:,3);dat(1:98,5)/svel;dat(:,4);dat(1:98,6)/svel];

lT = tril(ones(99,99));
zeronine = zeros(99,99);
zeroeight = zeros(98,99);
vals = ones(1,98)/svel;
vels = diag(vals,1);
vels = vels(1:98,:);

A = [lT,zeronine;
    vels,zeroeight;
    zeronine,lT;
    zeroeight,vels];

out = (A'*A)\(A'*f);

tallx = [out(1);zeros(97,1)];
tally = [out(100);zeros(97,1)];

test = out(2:99);
test2 = out(101:198);

dat2 = [tallx,tally,test,test2];

xf = zeros(length(dat(:,1)),1);
yf = zeros(length(dat(:,1)),1);
xf(1) = dat2(1,1);
yf(1) = dat2(1,2);
for i = 2:length(xf)
    xf(i) = xf(i-1)+dat2(i-1,3);
    yf(i) = yf(i-1)+dat2(i-1,4);
end

fusion_err = mean(((dat(:,1)-xf).^2+(dat(:,2)-yf).^2).^0.5);




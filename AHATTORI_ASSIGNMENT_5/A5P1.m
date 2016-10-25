

diagMat = ones(1,N);
lowDiag = -ones(1,N-1);

Tinv = diag(diagMat)+diag(lowDiag,-1);

ks = 100*ones(1,N);
K_x = Tinv'*diag(ks)*Tinv;
C_x = inv(K_x);

figure('Name','A5P1c','NumberTitle','off');

subplot(2,1,1);
hold on;
spy(K_x);
xlabel('Column Indeces');
ylabel('Row Indeces');
title('K_x');

hold off;
subplot(2,1,2);
hold on;
spy(C_x);
xlabel('Column Indeces');
ylabel('Row Indeces');
title('C_x');

hold off;

Cxmax = max(max(C_x)');



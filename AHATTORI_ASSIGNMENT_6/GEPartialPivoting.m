function [u,U,fhat] = GEPartialPivoting(A,f)

B = [A,f];
numRows = length(B(:,1));

for i = 1:numRows-1
    while(B(i,i)==0)
        temp = B(i,:);
        new = B(i+1,:);
        B(i,:) = new;
        B(i+1,:)= temp;
    end
    for j = i+1:numRows
        scaling = -B(j,i)/B(i,i);
        B(j,:)=B(i,:)*scaling+B(j,:);
    end
end

U = B(1:numRows,1:numRows);
fhat = B(:,numRows+1);

u = zeros(numRows,1);
u(numRows)=fhat(numRows)/U(numRows,numRows);

for i=numRows-1:-1:1 
    sum = U(i,i+1:numRows)*u(i+1:numRows);
   u(i)=(fhat(i)-sum)/U(i,i);
end


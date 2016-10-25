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



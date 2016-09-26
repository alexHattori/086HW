for n = 1:8
    for x = 0:0.1:pi
        A1P3;
        temp1 = P;
        A1S3;
        temp2 = P;
        if temp1~= temp2
            disp('Fail')
            disp(n)
            disp(temp1-temp2);
        else
            disp('Success')
        end
    end
end
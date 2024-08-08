% provide a smooth function
% if data smoothing is necessary, integrate this function into tribo.m
% based on our internal testing, this smooth function demonstrates equivalent performance to the smooth function in CETR official software


Result=cetr_peeksmooth(100,0.2,A_COF);
plot(Result(1:size(Result,1),1),Result(1:size(Result,1),2),'m');

function data = cetr_peeksmooth(sample_num,max_ratio,r_data) 

    s = size(r_data,1);
    i=0;
    j=1;

    while 1

        if i+sample_num>s
            i=s;
        else
            i=i+sample_num;
        end
        
        temp=r_data(i-99:i,:);
        data(j,1)=mean(temp(:,1));
        data(j,2)=mean(maxk(temp(:,2),sample_num*max_ratio));

        j=j+1;

        if i==s
            break;
        end
    end
end

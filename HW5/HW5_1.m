function fp = myDiff(f,n,type)

h = 2/n;
fp = zeros(1,n+1);

switch type
    case 1
        %% INPUT CODE HERE
        for i=1:n
            fp(i)=(f(i+1)-f(i))/h;
        end
        fp(end) = (f(end) - f(end-1))/h;
    case 2 
        %% INPUT CODE HERE
        fp(1)=(-3*f(1) + 4*f(2)- f(3))/(2*h);
        for i=2:n
            fp(i) = (f(i+1)-f(i-1))/(2*h);
        end
        fp(end) = (3*f(end)-4*f(end-1)+f(end-2))/(2*h);
    case 3
        %% INPUT CODE HERE
        fp(1)=(f(2)-f(1))/h;
        for i=2:n
            fp(i)=(f(i+1)-f(i-1))/(2*h);
        end
        fp(end) = (f(end)-f(end-1))/(h);
    otherwise
        error('Wrong value for type')
end


end
function [fp,D] = ChebDiff(f,n)

xs = - cos(linspace(0,pi,n+1));
fs = f(xs);

D = zeros(n+1);

d_j = 0;
d_k = 0;

% extradiagonal terms
    for j=1:n+1
        for k=1:n+1
            if j~=k
                %% INPUT CODE HERE
                if j == 1 || j == n+1
                    d_j = 2; 
                else
                    d_j = 1;
                end
                
                if k == 1 || k == n+1
                    d_k = 2;
                else
                    d_k = 1;
                end
                D(j, k) = (d_j*(-1)^(j+k))/(d_k*(xs(j)-xs(k)));
            end
        end
    end

    D(1,1);
% diagonal terms
    %% INPUT CODE HERE get the diagonal terms as the negative sum of all other terms of each row
    for j=1:n+1
        val = 0;
        for k=1:n+1
            if j~=k
                val = val + D(j, k);
            end
        end
        D(j,j) = -val;
    end
    
    % matrix-vector product
    fp = D * fs';
    
end
% parameter dashboard
beta = 2;
t = 2; 
L = -2;
U = 2;
F = []; % the set of numbers F(beta,t,L,U) should be in the form of a row vector

%
% ENTER CODE HERE
% 
% HINT: USING 'FOR' LOOPS, GROW THE SET F UNTIL EXHAUSTING ALL THE CASES
%
for j=2:3
    for s=0:1
        for e=L:U
            x=((-1)^s)*j*(beta^(e-t))
            F=[F, x]
        end
    end
end


numpoints = length(F);
[nr,nc] = size(F);
F = sort(F);

figure;
subplot(1,2,1); plot(F, zeros(size(F)),'+'); 
title(['F(',num2str(beta),',',num2str(t),',',num2str(L),',',num2str(U),')'])
subplot(1,2,2); semilogx(F, zeros(size(F)),'+')
title(['F(',num2str(beta),',',num2str(t),',',num2str(L),',',num2str(U),') - log scale'])


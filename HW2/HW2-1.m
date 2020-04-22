% An implementation of the bisection method.

% Inputs: 
% f: a function on one variable
% a: the lower bound of the domain interval
% b: the upper bound on the domain interval
% tol: the tolerance, bisection will run until the endpoints of the arrays corresponding to 
%      the left- and right- hand sides are a distance closer than tol.

% Outputs:
% error, if the bounds share the same sign
% as: a list of the lower bounds after each iteration, including a
% bs: a list of the upper bounds after each iteration, including b
% final_tol: the final tolerance after all iterations are complete

function [as, bs, final_tol] = bisection(f, a, b, tol)
    
    if f(a) * f(b) > 0
        error('Start from points (a,b) where f takes opposite signs')
    end
    
%     as = [];
%     bs = [];
%     mid = (a+b) / 2
%     while (b-a) > tol
%         if f(a)*f(
%     end
    as = a;
    bs = b;
    while(bs(end) - as(end)) > tol
        c = (as(end) + bs(end))/2;
        if (f(as(end))*f(c)) < 0
            as = [as, as(end)];
            bs = [bs, c];
        else
            as = [as, c];
            bs = [bs, bs(end)];
        end
    end
    final_tol = bs(end) - as(end);
end


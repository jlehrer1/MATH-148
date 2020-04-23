% Write a script that computes a tuple (x,y) of the function f = @(x,y) [x^2 + y^2 - 1; cos(pi*x)] which satisfies f(x,y) = (0,0) using the two-dimensional Newton's method.
% Store your solution in a variable x = [ANS_X; ANS_Y].
f = @(x,y) [x^2 + y^2 - 1; cos(pi*x)];
invJ = @(x,y) [0, -1/(pi*sin(pi*x)); 1/(2*y), x/(pi*y*sin(pi*x))];
x = .5;
y = .5;

niter = 0;
vecs = [[x;y], [x;y] - invJ(x,y)*f(x,y)];
while niter < 10000
   niter = niter + 1;
   x = vecs(1,end);
   y = vecs(2,end);
   new = [x,y] - (invJ(x,y)*f(x,y))';
   vecs = [vecs, (new)'];
end
% display([x,y])
% display([f(x,y)])

fn=f(x,y)
x=[x;y]


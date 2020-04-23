function [x] = cobweb(phi, Niter, x0)
    x = [x0, zeros(1, Niter)];
    sp = linspace(-1, 1, 1000);
    y=phi(sp);
    
    hold on
    ylim([-1, 1]);
    title('Cobwebbing plot')
    xlabel('x')
    ylabel('f(x)')
    plot(sp,y); %plot phi
    plot(sp, sp); %plot y=x
    line([x(1), x(1)], [0, phi(x(1))]);
    line([x(1), phi(x(1))], [phi(x(1)), phi(x(1))]);

    for i=1:Niter %plot cobweb
        x(i+1)= phi(x(i));
        line([x(i+1), x(i+1)], [x(i+1), phi(x(i+1))]);
        line([x(i+1), phi(x(i+1))], [phi(x(i+1)), phi(x(i+1))]);
    end
    disp(size(x))
    hold off
end

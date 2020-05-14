% Use parabolic fit for optimisation algorithm

function modulatedpeakamp = ParabolicFitOpt(stepsize,fluorescencemodulate,steps)

if length(fluorescencemodulate)== length(steps)

steps = steps.*stepsize;

if size(steps,1) == 1
    steps = steps';
end
if size(fluorescencemodulate,1) == 1
    fluorescencemodulate = fluorescencemodulate';
end

   p2 = polyfit(steps,fluorescencemodulate,2);
   
   modulatedamp = linspace(steps(1),steps(length(steps)),1000);
   poly2_ = polyval(p2,modulatedamp);
   
   [peak,peakpos] = max(poly2_);
   
   modulatedpeakamp = modulatedamp(peakpos);
   
   figure(1)
   plot(steps,fluorescencemodulate,'r*')
hold on
plot(modulatedamp,poly2_)
plot(modulatedpeakamp,peak,'b*')
hold off
pause(0.1)

else
    
    display('error')

end
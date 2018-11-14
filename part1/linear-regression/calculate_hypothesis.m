function hypothesis = calculate_hypothesis(X, theta, training_example)
    %CALCULATE_HYPOTHESIS This calculates the hypothesis for a given X,
    %theta and specified training example
    
   i = training_example;
   a=size(X,2);
   hypothesis=0.0;
   for n = 1:5
    hypothesis = hypothesis + theta(n) * X(i, n);
   end
end


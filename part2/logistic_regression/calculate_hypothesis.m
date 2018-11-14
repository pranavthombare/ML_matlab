function result=calculate_hypothesis(X,theta,training_example)
    hypothesis = 0.0;
    i = training_example;
    %%%%%%%%%%%%%%%%%%%%%%%%
    %Calculate the hypothesis for the i-th training example in X.
    %m = size(X,1); %number of rows
    n = size(X,2); %number of columns
        for j=1:n
         hypothesis = hypothesis + X(i,j) * theta(j);
        end
    %%%%%%%%%%%%%%%%%%%%%%%%
    result=sigmoid(hypothesis);
%END OF FUNCTION
    


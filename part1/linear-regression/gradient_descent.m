function theta = gradient_descent(X, y, theta, alpha, iterations, l , do_plot)
    %GRADIENT_DESCENT do Gradient Descent for a given X, y, theta, alpha
    %for a specified number of iterations

    %if less than 6 arguments was given, then set do_plot to be false
    if nargin < 6
        do_plot = false;
    end
    if(do_plot)
        plot_hypothesis(X, y, theta);
        drawnow; pause(0.1); 
    end
    theta_temp=[];
    m = size(X,2); %number of training examples
    n = size(theta,2);
    cost_vector = []; %will store the results of our cost function

    for it = 1:iterations
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % gradient descent
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        

        %update theta(1) and store in temporary variable theta_0
        sigma = 0.0;
        

for j = 1:n
    %theta_temp=theta(j);
        for i = 1:m
            hypothesis = calculate_hypothesis(X, theta, i);
            output = y(i);
            sigma = sigma + (hypothesis - output) * X(i, j);
        end
        if(j==1)
           theta_temp(j) = theta(j) - ((alpha * 1.0) / m) * sigma;
        else
           theta_temp(j) = (theta(j)*(1.0 - (alpha*l)/m)) - (((alpha * 1.0) / m) * sigma);
        end
end
        theta = theta_temp;
       
       

        %update cost_vector
        cost_vector = [cost_vector; compute_cost_regularised(X, y, theta,l)];

        if do_plot
            plot_hypothesis(X, y, theta);
            drawnow; pause(0.1); 
        end
    end

    disp 'Gradient descent is finished.'
        
    if do_plot
        disp 'Press enter!'
        pause;
    end

    plot_cost(cost_vector);
        
    disp 'Press enter!';
    pause;
end
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
% Step 1: Define the OR gate truth table
A = [0, 0, 1, 1];
B = [0, 1, 0, 1];
Y = [0, 1, 1, 1];

% Step 2: Initialize perceptron weights and bias with random values
w1 = rand();
w2 = rand();
bias = rand();

% Step 3: Define learning rate and number of training epochs
alpha = 0.1;
epochs = 1000;

% Step 4: Perceptron training
for epoch = 1:epochs
    errors = 0;
    
    for i = 1:length(A)
        % Calculate the weighted sum
        weighted_sum = A(i) * w1 + B(i) * w2 + bias;
        
        % Apply the activation function (Step function)
        if weighted_sum >= 0
            prediction = 1;
        else
            prediction = 0;
        end
        
        % Calculate the error
        error = Y(i) - prediction;
        
        % Update weights and bias
        w1 = w1 + alpha * error * A(i);
        w2 = w2 + alpha * error * B(i);
        bias = bias + alpha * error;
        
        errors = errors + abs(error);
    end
    
    % Check for convergence
    if errors == 0
        disp(['Converged after ', num2str(epoch), ' epochs']);
        break;
    end
end

% Display the final weights and bias
disp('Final Weights:');
disp(['w1 = ', num2str(w1)]);
disp(['w2 = ', num2str(w2)]);
disp(['Bias = ', num2str(bias)]);

% Test the perceptron
test_inputs = [0, 0; 0, 1; 1, 0; 1, 1];
disp('Test Results:');
for i = 1:size(test_inputs, 1)
    weighted_sum = test_inputs(i, 1) * w1 + test_inputs(i, 2) * w2 + bias;
    if weighted_sum >= 0
        prediction = 1;
    else
        prediction = 0;
    end
    disp(['Input: [', num2str(test_inputs(i, 1)), ', ', num2str(test_inputs(i, 2)), '] => Output: ', num2str(prediction)]);
end
=======
>>>>>>> origin/master
>>>>>>> origin/master
% Step 1: Define the OR gate truth table
A = [0, 0, 1, 1];
B = [0, 1, 0, 1];
Y = [0, 1, 1, 1];

% Step 2: Initialize perceptron weights and bias with random values
w1 = rand();
w2 = rand();
bias = rand();

% Step 3: Define learning rate and number of training epochs
alpha = 0.1;
epochs = 1000;

% Step 4: Perceptron training
for epoch = 1:epochs
    errors = 0;
    
    for i = 1:length(A)
        % Calculate the weighted sum
        weighted_sum = A(i) * w1 + B(i) * w2 + bias;
        
        % Apply the activation function (Step function)
        if weighted_sum >= 0
            prediction = 1;
        else
            prediction = 0;
        end
        
        % Calculate the error
        error = Y(i) - prediction;
        
        % Update weights and bias
        w1 = w1 + alpha * error * A(i);
        w2 = w2 + alpha * error * B(i);
        bias = bias + alpha * error;
        
        errors = errors + abs(error);
    end
    
    % Check for convergence
    if errors == 0
        disp(['Converged after ', num2str(epoch), ' epochs']);
        break;
    end
end

% Display the final weights and bias
disp('Final Weights:');
disp(['w1 = ', num2str(w1)]);
disp(['w2 = ', num2str(w2)]);
disp(['Bias = ', num2str(bias)]);

% Test the perceptron
test_inputs = [0, 0; 0, 1; 1, 0; 1, 1];
disp('Test Results:');
for i = 1:size(test_inputs, 1)
    weighted_sum = test_inputs(i, 1) * w1 + test_inputs(i, 2) * w2 + bias;
    if weighted_sum >= 0
        prediction = 1;
    else
        prediction = 0;
    end
    disp(['Input: [', num2str(test_inputs(i, 1)), ', ', num2str(test_inputs(i, 2)), '] => Output: ', num2str(prediction)]);
end
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
>>>>>>> origin/master
>>>>>>> origin/master
>>>>>>> origin/master

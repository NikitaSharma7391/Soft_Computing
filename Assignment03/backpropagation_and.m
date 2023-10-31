% Define the AND gate truth table
X = [0 0; 0 1; 1 0; 1 1]; % Input data
Y = [0; 0; 0; 1];         % Target output for AND gate

% Initialize weights and biases
inputSize = 2;
hiddenSize = 4;
outputSize = 1;

% Randomly initialize weights and biases
W1 = randn(inputSize, hiddenSize);
b1 = zeros(1, hiddenSize);
W2 = randn(hiddenSize, outputSize);
b2 = zeros(1, outputSize);

% Define training parameters
learningRate = 0.1;
epochs = 10000;

% Training loop
for epoch = 1:epochs
    % Forward pass
    hiddenInput = X * W1 + b1;
    hiddenOutput = 1./(1 + exp(-hiddenInput));
    output = hiddenOutput * W2 + b2;
    
    % Compute error
    error = Y - output;
    
    % Backpropagation
    deltaOutput = error;
    deltaHidden = deltaOutput * W2' .* hiddenOutput .* (1 - hiddenOutput);
    
    % Update weights and biases
    W2 = W2 + learningRate * hiddenOutput' * deltaOutput;
    b2 = b2 + learningRate * sum(deltaOutput);
    W1 = W1 + learningRate * X' * deltaHidden;
    b1 = b1 + learningRate * sum(deltaHidden);
end

% Display the final updated weights for each layer
disp('Final Updated W1:');
disp(W1);
disp('Final Updated b1:');
disp(b1);
disp('Final Updated W2:');
disp(W2);
disp('Final Updated b2:');
disp(b2);

% Test the trained network
predictedOutput = round(1./(1 + exp(-(X * W1 + b1))) * W2 + b2);

% Display the results
disp('Test Input:');
disp(X);
disp('Predicted Output:');
disp(predictedOutput);

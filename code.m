% Matrix Operations Project in MATLAB

clc;        % Clear the command window
clear;      % Clear all variables from the workspace

% Display the menu for the user to select the matrix operation
fprintf('Matrix Operations in MATLAB\n');
fprintf('----------------------------------\n');
fprintf('1. Matrix Addition\n');
fprintf('2. Matrix Subtraction\n');
fprintf('3. Matrix Multiplication\n');
fprintf('4. Matrix Determinant\n');
fprintf('5. Matrix Inverse\n');
fprintf('6. Exit\n');

choice = input('Enter the operation number (1-6): ');

switch choice
    case 1
        % Matrix Addition
        A = input('Enter the first matrix A (in the form [1 2; 3 4]): ');
        B = input('Enter the second matrix B (in the form [5 6; 7 8]): ');
        if size(A) == size(B)
            result = A + B;
            disp('Matrix A + B:');
            disp(result);
        else
            disp('Error: Matrices must be the same size for addition');
        end
        
    case 2
        % Matrix Subtraction
        A = input('Enter the first matrix A: ');
        B = input('Enter the second matrix B: ');
        if size(A) == size(B)
            result = A - B;
            disp('Matrix A - B:');
            disp(result);
        else
            disp('Error: Matrices must be the same size for subtraction');
        end
        
    case 3
        % Matrix Multiplication
        A = input('Enter the first matrix A: ');
        B = input('Enter the second matrix B: ');
        if size(A, 2) == size(B, 1)
            result = A * B;
            disp('Matrix A * B:');
            disp(result);
        else
            disp('Error: Number of columns in A must equal the number of rows in B for multiplication');
        end
        
    case 4
        % Matrix Determinant
        A = input('Enter the matrix A: ');
        if size(A, 1) == size(A, 2)
            determinant = det(A);
            disp('Determinant of matrix A:');
            disp(determinant);
        else
            disp('Error: Matrix must be square to calculate determinant');
        end
        
    case 5
        % Matrix Inverse
        A = input('Enter the matrix A: ');
        if size(A, 1) == size(A, 2) && det(A) ~= 0
            inverse = inv(A);
            disp('Inverse of matrix A:');
            disp(inverse);
        else
            disp('Error: Matrix must be square and have a non-zero determinant for inversion');
        end
        
    case 6
        % Exit the program
        disp('Exiting the program.');
        return;
        
    otherwise
        disp('Invalid selection. Please choose a number between 1 and 6.');
end

%Iris
x1all = load('class_1','-ascii');
x2all = load('class_2','-ascii');
x3all = load('class_3','-ascii');
x1train = [x1all(1:30,:)];
x2train = [x2all(1:30,:)];
x3train = [x3all(1:30,:)];
x1test = [x1all(31:end,:)];
x2test = [x2all(31:end,:)];
x3test = [x3all(31:end,:)];

D = 4;
C = 3;
Train_size = 90;
Test_size = 20;
W_1 = zeros(C, D);
w_0 = zeros(C, 1);
W = [W_1 w_0];
x_all = [x1all; x2all; x3all];
x_train = [x1train; x2train; x3train]; 
x_test = [x1test; x2test; x3test];
alpha = 0.02;


for m = 1:100
    MSE_grad = 0;
    for k = 1:Train_size
        c = floor(k/Train_size * C);
        t_k = zeros(C, 1);
        t_k(c + 1) = 1;
        
        x_k = [x_train(k,:)'; 1];
        z_k = W*x_k + w_0;
        g_k = 1/(1+);
        MSE_grad = MSE_grad + ((g_k - t_k).*(g_k).*(1-g_k))*x_k';
    end
    W = W - alpha*MSE_grad;
end

% W = [W_1 w_0];
% x = [x' 1]';
% 
% for 
% 
% g = Wx;
% 
% 
% 
% 
% figure(1);
% subfigure(2)
% hist(x1);
% figure(2);
% hist(x2);
% figure(3);
% hist(x3);

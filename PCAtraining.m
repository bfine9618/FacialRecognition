load('lab11_train_data.mat');

[x_train, x_test ] = training();

PCA_train1 = pcaTrain(x_train, 1, mu_train, sigma_train);
PCA_train5 = pcaTrain(x_train, 5, mu_train, sigma_train);
PCA_train10 = pcaTrain(x_train, 10, mu_train, sigma_train);
PCA_train20 = pcaTrain(x_train, 20, mu_train, sigma_train);
PCA_train50 = pcaTrain(x_train, 50, mu_train, sigma_train);

PCA_test1 = pcaTest(x_test, 1, mu_train, sigma_train);
PCA_test5 = pcaTest(x_test, 5, mu_train, sigma_train);
PCA_test10 = pcaTest(x_test, 10, mu_train, sigma_train);
PCA_test20 = pcaTest(x_test, 20, mu_train, sigma_train);
PCA_test50 = pcaTest(x_test, 50, mu_train, sigma_train);
%%
actual = 1:40;

[recog1, min1] = guessNN(PCA_test1, PCA_train1);
acc1 = sum(recog1 == actual)/40;

[recog5, min5] = guessNN(PCA_test5, PCA_train5);
acc5 = sum(recog5 == actual)/40;

[recog10, min10] = guessNN(PCA_test10, PCA_train10);
acc10 = sum(recog10 == actual)/40;

[recog20, min20] = guessNN(PCA_test20, PCA_train20);
acc20 = sum(recog20 == actual)/40;

[recog50, min50] = guessNN(PCA_test50, PCA_train50);
acc50 = sum(recog50 == actual)/40;

%%
figure;
acc = [acc1 acc5 acc10 acc20 acc50];
k = [1 5 10 20 50];
plot(k, acc);
title('Facial Recognition Accuracy with PCA');
xlabel('K components used');
ylabel('% accuracy');

%%
figure;
subplot(2, 2, 1);
imshow(reshape(x_test(:,18), [112, 92]));
title('Test with 1 component');
subplot(2, 2, 2);
imshow(reshape(x_train(:,160), [112, 92]));
title('Train with 1 component');

subplot(2, 2, 3);
imshow(reshape(x_test(:,2), [112, 92]));
title('Test with 50 components');
subplot(2, 2, 4);
imshow(reshape(x_train(:,11), [112, 92]));
title('Train with 50 components');

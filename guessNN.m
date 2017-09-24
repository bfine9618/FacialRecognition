function [recog, minVal] = guessNN(test, train)

recog = zeros(1, 40);

minVal = ones(1, 40)*100000000000;

for i=1:length(test(1,:))
    trainM = repmat(test(:,i), 1, 360);
    diff = train-trainM;
    diff = sqrt(sum(abs(diff).^2,1));
    [~, face] = min(diff);
    minVal(i) = face;
    recog(i) = floor(face/9)+1;
end

end 
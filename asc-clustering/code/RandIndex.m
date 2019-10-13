function [rand_index] = RandIndex(idx, labels)
    true_positive = 0;
    false_positive = 0;
    true_negative = 0;
    false_negative =0;
    for i=1 : length(idx)
        for j=i+1 : length(idx)
            if idx(i) == idx(j) %Positive
                if labels(i) == labels(j)   %True
                    true_positive = true_positive+1;
                else   % False
                    false_positive = false_positive+1;
                end
            else   % Negative
                if labels(i) ~= labels(j)   % True
                    true_negative = true_negative+1;
                else   % False
                    false_negative = false_negative+1;
                end
            end
        end
    end
    rand_index = (true_positive+true_negative)/(true_positive+false_positive+true_negative+false_negative);    
end


dementia %>% mutate(logit = log(predicted_resp/(1-predicted_resp))) %>% ggplot(aes(x = age, y = logit)) + geom_point() + geom_smooth()
dementia %>% mutate(logit = log(predicted_resp/(1-predicted_resp))) %>% ggplot(aes(x = bmi, y = logit)) + geom_point() + geom_smooth()



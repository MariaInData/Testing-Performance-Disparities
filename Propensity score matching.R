# PSM
df = read.csv('matching.csv')
# test_center_resident_ratio
match_output_tcrr = matchit(test_center_resident_ratio ~ total_population+
                              edu_less_highshcool+
                              total_edu_greater_highschool+
                              total_income_less_45k+total_income_greater_45k
                            + race_white
                            data = df, method = "nearest",distance = "logit",
                            caliper = .001 ,replace = FALSE,ratio = 1)
tcrr = match.data(match_output_tcrr)
# save data as csv
write.csv(tcrr, 'match_test_center_resident_ratio.csv', row.names = FALSE)
# test_center_take_test_ratio
match_output_tcttr = matchit(test_center_take_test_ratio ~ 
                               total_population+edu_less_highshcool+
                               total_edu_greater_highschool+
                               total_income_less_45k+total_income_greater_45k
                             + race_white
                             data = df, method = "nearest",distance = "logit",
                             caliper = .001 ,replace = FALSE,ratio = 1)
tcttr = match.data(match_output_tcttr)
write.csv(tcttr, 'match_test_center_take_test_ratio.csv', row.names = FALSE)
# prep_course_ratio
PScore_pcr = glm( prep_course_ratio ~ total_population+
                    edu_less_highshcool+total_edu_greater_highschool
                  +total_income_less_45k+total_income_greater_45k 
                  + race_white + race_asian + race_african_american, 
                  data = df, method = "nearest",distance = "logit",
                  caliper = .001 ,replace = FALSE,ratio = 1)
df$PScore_pcr = PScore_pcr
match_output_pcr = matchit(prep_course_ratio ~ total_population+
                                               edu_less_highshcool
                                             +total_edu_greater_highschool
                                             +total_income_less_45k
                                             +total_income_greater_45k 
                                             + race_white + race_asian +
                                              race_african_american,
                                             data = df, method = "nearest",
                                             distance = "logit",
                                             caliper = .001 ,replace = 
                                               FALSE,ratio = 1)
pcr = match.data(match_output_pcr)
write.csv(pcr, 'match_prep_course_ratio.csv', 
                            row.names = FALSE)
# prep_test_ratio
PScore_ptr = glm( prep_test_ratio ~ total_population+edu_less_highshcool
                  +total_edu_greater_highschool+total_income_less_45k
                  +total_income_greater_45k + race_white + race_asian 
                  + race_african_american, data = df, 
                  method = "nearest",distance = "logit",
                  caliper = .001 ,replace = FALSE,ratio = 1)
df$PScore_ptr = PScore_ptr
match_output_ptr = matchit(prep_test_ratio ~ total_population+
                             edu_less_highshcool+
                             total_edu_greater_highschool+
                             total_income_less_45k+
                             total_income_greater_45k + 
                             race_white + race_asian + race_african_american,
                           data = df, 
                           method = "nearest",distance = "logit",
                           caliper = .001 ,replace = FALSE,ratio = 1)
                           
data = df, method = "nearest",distance = "logit",caliper = .001,replace = FALSE,
                                  ratio = 1)
ptr = match.data(match_output_ptr)
write.csv(ptr, 'match_prep_test_ratio.csv', row.names = FALSE)
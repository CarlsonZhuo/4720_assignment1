% Readin the Data
google_raw = xlsread('google.csv', 'E:E');
ibm_raw = xlsread('ibm.csv', 'E:E');

% Compute the log return
google_log = log(google_raw);
ibm_log = log(ibm_raw);

google_log_shift = circshift(google_log,1); % right shift 1 position
ibm_log_shift = circshift(ibm_log, 1); % right shift 1 position
google_log_shift(1) = 0;
ibm_log_shift(1) = 0;

google_return = google_log_shift - google_log;
ibm_return = ibm_log_shift - ibm_log;
google_return = google_return(2:end);
ibm_return = ibm_return(2:end);

clear google_raw ibm_raw;
clear google_log ibm_log;
clear google_log_shift ibm_log_shift;

% Compute the statistics of interest
google_mean = mean(google_return); 
ibm_mean = mean(ibm_return);

google_std = std(google_return);
ibm_std = std(ibm_return);

google_kurtosis = kurtosis(google_return);
ibm_kurtosis = kurtosis(ibm_return);

google_skewness = skewness(google_return);
ibm_skewness = skewness(ibm_return);

google_5 = prctile(google_return,5);
ibm_5 = prctile(ibm_return,5);

google_25 = prctile(google_return,25);
ibm_25 = prctile(ibm_return,25);

google_50 = prctile(google_return,50);
ibm_50 = prctile(ibm_return,50);

google_75 = prctile(google_return,75);
ibm_75 = prctile(ibm_return,75);

google_95 = prctile(google_return,95);
ibm_95 = prctile(ibm_return,95);

% Check Normal by kstest
google_standard_normaled = (google_return - google_mean)/google_std;
ibm_standard_normaled = (ibm_return - ibm_mean)/ibm_std;

[google_h, google_p, google_KSSTAT, google_cv] = kstest(google_standard_normaled);
[ibm_h, ibm_p, ibm_KSSTAT, ibm_cv] = kstest(ibm_standard_normaled);

%figure for NIR Paper 1
%System Characterization 
%20220226, Josh Pace

clear; close all

%% Data for Plots

%Phantom control, JG LI, OTL38 labeled L1210A

%Phantom control
phantomControl = load('Data/Phantom/Old/PBS_0.75mm_2_proc_relThresh_5_5.mat');

%JG LI microspheres
microspheres = load('Data/Phantom/Old/JGLI_0.75mm_2_proc_relThresh_5_5.mat');

%Unlabeled L1210A
unlabeledL1210A = load('Data/Phantom/Unlabeled Cells 20220417/20220417_Unlabeled_L1210A_0.75mm-1/Processed_Data_and_Figures_relThresh_5_5/20220417_Unlabeled_L1210A_0.75mm-1_proc_relThresh_5_5.mat');

%OTL38 Labeled L1210A
OTL38L1210A = load('/Users/jspace/Library/CloudStorage/OneDrive-SharedLibraries-NortheasternUniversity/Niedre, Mark - Niedre_Lab/Josh/DiFC Data/NIR/OTL38 Phantom/Ultra Fiber Probe/L1210A 20211012/OTL38_L1210A_1000_0.75mm_1/Processed_Data_and_Figures_relThresh_5_5/OTL38_L1210A_1000_0.75mm_1_proc_relThresh_5_5.mat');

%Prelabled cell injection #1
%prelabled = load('/Users/joshpace/Library/CloudStorage/OneDrive-SharedLibraries-NortheasternUniversity/Niedre, Mark - Niedre_Lab/Josh/DiFC Data/NIR/OTL38 Mice/OTL38 L1210A 20210729/OTL38_L1210A_Nude_Mouse_Tail_1/Processed_Data_and_Figures_relThresh_5_5 (No PPG Filtering)/OTL38_L1210A_Nude_Mouse_Tail_1_proc_relThresh_5_5.mat');
% #2
prelabled_tail_1 = load('/Users/jspace/Library/CloudStorage/OneDrive-SharedLibraries-NortheasternUniversity/Niedre, Mark - Niedre_Lab/Josh/DiFC Data/NIR/OTL38 Mice/OTL38 L1210A 20210729/OTL38_L1210A_Nude_Mouse_Tail_2/Processed_Data_and_Figures_relThresh_5_5 (No PPG Filtering)/OTL38_L1210A_Nude_Mouse_Tail_2_proc_relThresh_5_5.mat');
%control mouse 
% mouseControl = load('Data/Mice/Control_Nude_Mouse_Tail_2/Processed_Data_and_Figures_relThresh_5_5 (No PPG Filtering)/Control_Nude_Mouse_Tail_2_proc_relThresh_5_5.mat');


%% Applicable Calculations 
Probe = 2;
%Phantom vs Mouse System Noise
%PBS Phantom controls
phantomControl_1 = load("Data/Phantom/Unlabeled Cells 20220417/20220417_PBS_0.75mm-1/Processed_Data_and_Figures_relThresh_5_5/20220417_PBS_0.75mm-1_proc_relThresh_5_5.mat");
phantomControl_1Noise = phantomControl_1.noise(Probe);

phantomControl_2 = load("Data/Phantom/Unlabeled Cells 20220417/20220417_PBS_0.75mm-2/Processed_Data_and_Figures_relThresh_5_5/20220417_PBS_0.75mm-2_proc_relThresh_5_5.mat");
phantomControl_2Noise = phantomControl_2.noise(Probe);

phantomControl_3 = load("Data/Phantom/Unlabeled Cells 20220417/20220417_PBS_0.75mm-3/Processed_Data_and_Figures_relThresh_5_5/20220417_PBS_0.75mm-3_proc_relThresh_5_5.mat");
phantomControl_3Noise = phantomControl_3.noise(Probe);

%Unlabeled L1210A Phantom controls
unlabeledL1210A_1 = load('Data/Phantom/Unlabeled Cells 20220417/20220417_Unlabeled_L1210A_0.75mm-1/Processed_Data_and_Figures_relThresh_5_5/20220417_Unlabeled_L1210A_0.75mm-1_proc_relThresh_5_5.mat');
unlabeledL1210A_1Noise = unlabeledL1210A_1.noise(Probe);

unlabeledL1210A_2 = load('Data/Phantom/Unlabeled Cells 20220417/20220417_Unlabeled_L1210A_0.75mm-2/Processed_Data_and_Figures_relThresh_5_5/20220417_Unlabeled_L1210A_0.75mm-2_proc_relThresh_5_5.mat');
unlabeledL1210A_2Noise = unlabeledL1210A_2.noise(Probe);

unlabeledL1210A_3 = load('Data/Phantom/Unlabeled Cells 20220417/20220417_Unlabeled_L1210A_0.75mm-3/Processed_Data_and_Figures_relThresh_5_5/20220417_Unlabeled_L1210A_0.75mm-3_proc_relThresh_5_5.mat');
unlabeledL1210A_3Noise = unlabeledL1210A_3.noise(Probe);

%Unlabeled SK-OV-3 Phantom controls
unlabeledSK_OV_3_1 = load('Data/Phantom/Unlabeled Cells 20220417/20220417_Unlabeled_IGROV-1_0.75mm-1/Processed_Data_and_Figures_relThresh_5_5/20220417_Unlabeled_IGROV-1_0.75mm-1_proc_relThresh_5_5.mat');
unlabeledSK_OV_3_1Noise = unlabeledSK_OV_3_1.noise(Probe);

unlabeledSK_OV_3_2 = load('Data/Phantom/Unlabeled Cells 20220417/20220417_Unlabeled_IGROV-1_0.75mm-2/Processed_Data_and_Figures_relThresh_5_5/20220417_Unlabeled_IGROV-1_0.75mm-2_proc_relThresh_5_5.mat');
unlabeledSK_OV_3_2Noise = unlabeledSK_OV_3_2.noise(Probe);

unlabeledSK_OV_3_3 = load('Data/Phantom/Unlabeled Cells 20220417/20220417_Unlabeled_IGROV-1_0.75mm-3/Processed_Data_and_Figures_relThresh_5_5/20220417_Unlabeled_IGROV-1_0.75mm-3_proc_relThresh_5_5.mat');
unlabeledSK_OV_3_3Noise = unlabeledSK_OV_3_3.noise(Probe);

%Unlabeled IGROV-1 Phantom controls

unlabeledIGROV_1_1 = load('Data/Phantom/Unlabeled Cells 20220417/20220417_Unlabeled_IGROV-1_0.75mm-1/Processed_Data_and_Figures_relThresh_5_5/20220417_Unlabeled_IGROV-1_0.75mm-1_proc_relThresh_5_5.mat');
unlabeledIGROV_1_1Noise = unlabeledIGROV_1_1.noise(Probe);

unlabeledIGROV_1_2 = load('Data/Phantom/Unlabeled Cells 20220417/20220417_Unlabeled_IGROV-1_0.75mm-2/Processed_Data_and_Figures_relThresh_5_5/20220417_Unlabeled_IGROV-1_0.75mm-2_proc_relThresh_5_5.mat');
unlabeledIGROV_1_2Noise = unlabeledIGROV_1_2.noise(Probe);

unlabeledIGROV_1_3 = load('Data/Phantom/Unlabeled Cells 20220417/20220417_Unlabeled_IGROV-1_0.75mm-3/Processed_Data_and_Figures_relThresh_5_5/20220417_Unlabeled_IGROV-1_0.75mm-3_proc_relThresh_5_5.mat');
unlabeledIGROV_1_3Noise = unlabeledIGROV_1_3.noise(Probe);

%Mouse Controls
mouseControl_1 = load("Data/Mice/Control_Nude_Mouse_Tail_2/Processed_Data_and_Figures_relThresh_5_5 (No PPG Filtering)/Control_Nude_Mouse_Tail_2_proc_relThresh_5_5.mat");
mouseControl_1Noise = mouseControl_1.noise(Probe);

mouseControl_2 = load("Data/Mice/Control_Nude_Mouse_Tail_3/Processed_Data_and_Figures_relThresh_5_5 (No PPG Filtering)/Control_Nude_Mouse_Tail_3_proc_relThresh_5_5.mat");
mouseControl_2Noise = mouseControl_2.noise(Probe);

mouseControl_3 = load("Data/Mice/20220223_Nude_Control_Tail/Processed_Data_and_Figures_relThresh_5_5/20220223_Nude_Control_Tail_proc_relThresh_5_5.mat");
mouseControl_3Noise = mouseControl_3.noise(Probe);

%Mean and STD of phantom PBS noise
meanPhantomNoise = mean([phantomControl_1Noise phantomControl_2Noise phantomControl_3Noise]);

stdPhantomNoise = std([phantomControl_1Noise phantomControl_2Noise phantomControl_3Noise]);

%Mean and STD of phantom unlabeled L1210A noise
meanUnlabeledL1210ANoise = mean([unlabeledL1210A_1Noise unlabeledL1210A_2Noise unlabeledL1210A_3Noise]);
stdUnlabeledL1210ANoise = std([unlabeledL1210A_1Noise unlabeledL1210A_2Noise unlabeledL1210A_3Noise]);

%Mean and STD of phantom unlabeled SK-OV-3 noise
meanUnlabeledSK_OV_3Noise = mean([unlabeledSK_OV_3_1Noise unlabeledSK_OV_3_2Noise unlabeledSK_OV_3_3Noise]);
stdUnlabeledSK_OV_3Noise = std([unlabeledSK_OV_3_1Noise unlabeledSK_OV_3_2Noise unlabeledSK_OV_3_3Noise]);

%Mean and STD of phantom unlabeled IGROV-1 noise
meanUnlabeledIGROV_1Noise = mean([unlabeledIGROV_1_1Noise unlabeledIGROV_1_2Noise unlabeledIGROV_1_3Noise]);
stdUnlabeledIGROV_1Noise = std([unlabeledIGROV_1_1Noise unlabeledIGROV_1_2Noise unlabeledIGROV_1_3Noise]);


%Mean and STD of mouse controls
meanMouseNoise = mean([mouseControl_1Noise mouseControl_2Noise mouseControl_3Noise]);

stdMouseNoise = std([mouseControl_1Noise mouseControl_2Noise mouseControl_3Noise]);


%JG Phantom vs Pre-labeled Phantom vs Prelabeled Tail SNR

%JGLI Phantom SNR
microspherePhantom1 = load('Data/Phantom/JGLI_0.75mm_2/Processed_Data_and_Figures_relThresh_5_5/JGLI_0.75mm_2_proc_relThresh_5_5.mat');
microspherePhantom1Pks = microspherePhantom1.fwd_peaks(Probe).pks;
% microspherePhantom1SNR = 20*log10(microspherePhantom1Pks/meanPhantomNoise);
microspherePhantom1SNR = microspherePhantom1.fwd_match_snr(1).dB;
microspherePhantom2 = load('Data/Phantom/JGLI_0.75mm_3/Processed_Data_and_Figures_relThresh_5_5/JGLI_0.75mm_3_proc_relThresh_5_5.mat');
microspherePhantom2Pks = microspherePhantom2.fwd_peaks(Probe).pks;
% microspherePhantom2SNR = 20*log10(microspherePhantom2Pks/meanPhantomNoise);
microspherePhantom2SNR = microspherePhantom2.fwd_match_snr(1).dB;
microspherePhantom3 = load('Data/Phantom/JGLI_0.75mm_4/Processed_Data_and_Figures_relThresh_5_5/JGLI_0.75mm_4_proc_relThresh_5_5.mat');
microspherePhantom3Pks = microspherePhantom3.fwd_peaks(Probe).pks;
% microspherePhantom3SNR = 20*log10(microspherePhantom3Pks./meanPhantomNoise);
microspherePhantom3SNR = microspherePhantom3.fwd_match_snr(1).dB;

%OTL38 L1210A Phantom SNR
L1210Aphantom1 = load('Data/Phantom/OTL38_L1210A_1000_0.75mm_1/Processed_Data_and_Figures_relThresh_5_5/OTL38_L1210A_1000_0.75mm_1_proc_relThresh_5_5.mat');
OTL38L1210APks_1 = L1210Aphantom1.fwd_peaks(Probe).pks;
% OTL38L1210ASNR_1 = 20*log10(OTL38L1210APks_1./meanUnlabeledL1210ANoise);
OTL38L1210ASNR_1 = L1210Aphantom1.fwd_match_snr(1).dB;
L1210Aphantom2 = load('Data/Phantom/OTL38_L1210A_1000_0.75mm_2/Processed_Data_and_Figures_relThresh_5_5/OTL38_L1210A_1000_0.75mm_2_proc_relThresh_5_5.mat');
OTL38L1210APks_2 = L1210Aphantom2.fwd_peaks(Probe).pks;
% OTL38L1210ASNR_2 = 20*log10(OTL38L1210APks_2./meanUnlabeledL1210ANoise);
OTL38L1210ASNR_2 = L1210Aphantom2.fwd_match_snr(1).dB;
L1210Aphantom3 = load('Data/Phantom/OTL38_L1210A_1000_0.75mm_3/Processed_Data_and_Figures_relThresh_5_5/OTL38_L1210A_1000_0.75mm_3_proc_relThresh_5_5.mat');
OTL38L1210APks_3 = L1210Aphantom3.fwd_peaks(Probe).pks;
% OTL38L1210ASNR_3 = 20*log10(OTL38L1210APks_3./meanUnlabeledL1210ANoise);
OTL38L1210ASNR_3 = L1210Aphantom3.fwd_match_snr(1).dB;

%OTL38 SK-OV-3 Phantom SNR
SK_OV_3phantom1 = load("Data/Phantom/20220318_OTL38_SK-OV-3_0.75mm_1/Processed_Data_and_Figures_relThresh_5_5/20220318_OTL38_SK-OV-3_0.75mm_1_proc_relThresh_5_5.mat");
OTL38SK_OV_3SNR_1 = SK_OV_3phantom1.fwd_match_snr(1).dB;

SK_OV_3phantom2 = load("Data/Phantom/20220318_OTL38_SK-OV-3_0.75mm_2/Processed_Data_and_Figures_relThresh_5_5/20220318_OTL38_SK-OV-3_0.75mm_2_proc_relThresh_5_5.mat");
OTL38SK_OV_3SNR_2 = SK_OV_3phantom2.fwd_match_snr(2).dB;

SK_OV_3phantom3 = load("Data/Phantom/20220318_OTL38_SK-OV-3_0.75mm_3/Processed_Data_and_Figures_relThresh_5_5/20220318_OTL38_SK-OV-3_0.75mm_3_proc_relThresh_5_5.mat");
OTL38SK_OV_3SNR_3 = SK_OV_3phantom3.fwd_match_snr(1).dB;

%OTL38 IGROV-1 Phantom SNR
IGROV_1phantom1 = load("Data/Phantom/20220414_IGROV-1_0.75mm-1/Processed_Data_and_Figures_relThresh_5_5/20220414_IGROV-1_0.75mm-1_proc_relThresh_5_5.mat");
OTL38IGROV_1SNR_1 = IGROV_1phantom1.fwd_match_snr(1).dB;

IGROV_1phantom2 = load("Data/Phantom/20220414_IGROV-1_0.75mm-2/Processed_Data_and_Figures_relThresh_5_5/20220414_IGROV-1_0.75mm-2_proc_relThresh_5_5.mat");
OTL38IGROV_1SNR_2 = IGROV_1phantom2.fwd_match_snr(1).dB;

IGROV_1phantom3 = load("Data/Phantom/20220414_IGROV-1_0.75mm-3/Processed_Data_and_Figures_relThresh_5_5/20220414_IGROV-1_0.75mm-3_proc_relThresh_5_5.mat");
OTL38IGROV_1SNR_3 = IGROV_1phantom3.fwd_match_snr(1).dB;

%L1210A Prelabeled SNR
prelabeledL1210A1 = load('Data/Mice/OTL38_L1210A_Nude_Mouse_Tail_1/Processed_Data_and_Figures_relThresh_5_5 (No PPG Filtering)/OTL38_L1210A_Nude_Mouse_Tail_1_proc_relThresh_5_5.mat');
OTL38prelabeled1SNR = 20*log10(prelabeledL1210A1.fwd_peaks(1).pks./meanMouseNoise);
prelabeledL1210A2 = load('Data/Mice/OTL38_L1210A_Nude_Mouse_Tail_2/Processed_Data_and_Figures_relThresh_5_5 (No PPG Filtering)/OTL38_L1210A_Nude_Mouse_Tail_2_proc_relThresh_5_5.mat');
OTL38prelabeled2SNR = 20*log10(prelabeledL1210A2.fwd_peaks(1).pks./meanMouseNoise);
prelabeledL1210A3 = load('/Users/jspace/Library/CloudStorage/OneDrive-SharedLibraries-NortheasternUniversity/Niedre, Mark - Niedre_Lab/Josh/Papers and Conferences/NIR 1/Data/Mice/20220223__OTL38_Prelabeled_L1210A_Tail_try_5/Processed_Data_and_Figures_relThresh_5_5/20220223__OTL38_Prelabeled_L1210A_Tail_try_5_proc_relThresh_5_5.mat');
OTL38prelabeled3SNR = 20*log10(prelabeledL1210A3.fwd_peaks(1).pks./meanMouseNoise);

%Mean and STD of JGLI SNR 
meanMicropshereSNR = mean([microspherePhantom1SNR' microspherePhantom2SNR' microspherePhantom3SNR']);
stdMicropshereSNR = std([microspherePhantom1SNR' microspherePhantom2SNR' microspherePhantom3SNR']);

%Mean and STD of OTL38 L1210A Phantom SNR
meanOTL38L1210APhantomSNR = mean([OTL38L1210ASNR_1' OTL38L1210ASNR_2' OTL38L1210ASNR_3']);
stdOTL38L1210APhantomSNR =  std([OTL38L1210ASNR_1' OTL38L1210ASNR_2' OTL38L1210ASNR_3']);

%Mean and STD of OTL38 SK-OV-3 Phantom SNR
meanOTL38SK_OV_3PhantomSNR = mean([OTL38SK_OV_3SNR_1' OTL38SK_OV_3SNR_2' OTL38SK_OV_3SNR_3']);
stdOTL38SK_OV_3PhantomSNR = std([OTL38SK_OV_3SNR_1' OTL38SK_OV_3SNR_2' OTL38SK_OV_3SNR_3']);

%Mean and STD of OTL38 IGROV-1 Phantom SNR

meanOTL38IGROV_1PhantomSNR = mean([OTL38IGROV_1SNR_1' OTL38IGROV_1SNR_2' OTL38IGROV_1SNR_3']);
stdOTL38IGROV_1PhantomSNR = std([OTL38IGROV_1SNR_1' OTL38IGROV_1SNR_2' OTL38IGROV_1SNR_3']);





%Mean and STD of OTL38 L1210A prelabeled tail scans
meanOTL38TailSNR = mean([OTL38prelabeled1SNR' OTL38prelabeled2SNR' OTL38prelabeled3SNR']);
stdOTL38TailSNR = std([OTL38prelabeled1SNR' OTL38prelabeled2SNR' OTL38prelabeled3SNR']);

%L1210A Prelabeled Count Rate
binSize =5; %time of bins (ex: 5 = 5 minutes)

%1 minute count rate using histcounts
oneMinuteBins = [0:1*60:60*60];
scan1CountRate1Minute = histcounts(prelabeledL1210A1.time(prelabeledL1210A1.fwd_peaks(Probe).locs),oneMinuteBins);
scan2CountRate1Minute = histcounts(prelabeledL1210A2.time(prelabeledL1210A2.fwd_peaks(Probe).locs),oneMinuteBins);
scan3CountRate1Minute = histcounts(prelabeledL1210A3.time(prelabeledL1210A3.fwd_peaks(Probe).locs),oneMinuteBins);

%Putting all the scans together to get the mean,max,min
AllScansCountRate = cat(3, scan1CountRate1Minute, scan2CountRate1Minute,scan3CountRate1Minute);

meanCountRateAll3Scans = mean(AllScansCountRate,3);


countRateSTD1Minute = std([scan1CountRate1Minute; scan2CountRate1Minute; scan3CountRate1Minute]);

%Normalized to scan 3 std calulations for error bars
normalizedCountRateSTD1Minute=  std([scan1CountRate1Minute/scan3CountRate1Minute(1); scan2CountRate1Minute/scan3CountRate1Minute(1); scan3CountRate1Minute/scan3CountRate1Minute(1)]);

%range calculations for error bars
maxValuesAllScansCountRate = max(AllScansCountRate, [],3);
minValuesAllScansCountRate = min(AllScansCountRate,[],3);

%5 minute count rate
fiveMinuteBins = [0:5*60:60*60];
scan1CountRate5Minute = histcounts(prelabeledL1210A1.time(prelabeledL1210A1.fwd_peaks(Probe).locs),fiveMinuteBins);
scan2CountRate5Minute = histcounts(prelabeledL1210A2.time(prelabeledL1210A2.fwd_peaks(Probe).locs),fiveMinuteBins);
scan3CountRate5Minute = histcounts(prelabeledL1210A3.time(prelabeledL1210A3.fwd_peaks(Probe).locs),fiveMinuteBins);

countRateSTD5Minute = std([scan1CountRate5Minute; scan2CountRate5Minute; scan3CountRate5Minute]);

%Normalized to scan 3
normalizedCountRateSTD5Minute=  std([scan1CountRate5Minute/scan3CountRate5Minute(1); scan2CountRate5Minute/scan3CountRate5Minute(1); scan3CountRate5Minute/scan3CountRate5Minute(1)]);

%Calculations not using histcounts

%Number of fwd peaks per minute for scan 1
timeOfPeaksInMinutesScan1 = prelabeledL1210A1.time(prelabeledL1210A1.fwd_peaks(1).locs)/60;
numberofPeaksPerMinuteScan1 = zeros(60,1);
for i = 1:60
    if i ==1
    numberofPeaksPerMinuteScan1(i) = sum(timeOfPeaksInMinutesScan1 < i);
    else
      numberofPeaksPerMinuteScan1(i) = sum(timeOfPeaksInMinutesScan1 > i-1 & timeOfPeaksInMinutesScan1 < i);  
    end
end

%Number of total peaks per minute for scan 1
timeOfToalPeaksInMinutesScan1 = prelabeledL1210A1.time(prelabeledL1210A1.peaks(1).locs)/60;
numberofTotalPeaksPerMinuteScan1 = zeros(60,1);
for i = 1:60
    if i ==1
    numberofTotalPeaksPerMinuteScan1(i) = sum(timeOfToalPeaksInMinutesScan1 < i);
    else
      numberofTotalPeaksPerMinuteScan1(i) = sum(timeOfToalPeaksInMinutesScan1 > i-1 & timeOfToalPeaksInMinutesScan1 < i);  
    end
end
%Number of fwd peaks per minute for scan 2
timeOfPeaksInMinutesScan2 = prelabeledL1210A2.time(prelabeledL1210A2.fwd_peaks(1).locs)/60;
numberofPeaksPerMinuteScan2 = zeros(60,1);
for i = 1:60
    if i ==1
    numberofPeaksPerMinuteScan2(i) = sum(timeOfPeaksInMinutesScan2 < i);
    else
      numberofPeaksPerMinuteScan2(i) = sum(timeOfPeaksInMinutesScan2 > i-1 & timeOfPeaksInMinutesScan2 < i);  
    end
end

%Number of total peaks per minute for scan 2
timeOfTotalPeaksInMinutesScan2 = prelabeledL1210A2.time(prelabeledL1210A2.peaks(1).locs)/60;
numberofTotalPeaksPerMinuteScan2 = zeros(60,1);
for i = 1:60
    if i ==1
    numberofTotalPeaksPerMinuteScan2(i) = sum(timeOfTotalPeaksInMinutesScan2 < i);
    else
      numberofTotalPeaksPerMinuteScan2(i) = sum(timeOfTotalPeaksInMinutesScan2 > i-1 & timeOfTotalPeaksInMinutesScan2 < i);  
    end
end

%Number of fwd peaks per minute for scan 3
timeOfPeaksInMinutesScan3 = prelabeledL1210A3.time(prelabeledL1210A3.fwd_peaks(1).locs)/60;
numberofPeaksPerMinuteScan3 = zeros(60,1);
for i = 1:60
    if i ==1
    numberofPeaksPerMinuteScan3(i) = sum(timeOfPeaksInMinutesScan3 < i);
    else
      numberofPeaksPerMinuteScan3(i) = sum(timeOfPeaksInMinutesScan3 > i-1 & timeOfPeaksInMinutesScan3 < i);  
    end
end

%Number of total peaks per minute for scan 3
timeOfTotalPeaksInMinutesScan3 = prelabeledL1210A3.time(prelabeledL1210A3.peaks(1).locs)/60;
numberofTotalPeaksPerMinuteScan3 = zeros(60,1);
for i = 1:60
    if i ==1
    numberofTotalPeaksPerMinuteScan3(i) = sum(timeOfTotalPeaksInMinutesScan3 < i);
    else
      numberofTotalPeaksPerMinuteScan3(i) = sum(timeOfTotalPeaksInMinutesScan3 > i-1 & timeOfTotalPeaksInMinutesScan3 < i);  
    end
end

%calculations with normalized fwd matches count per minute
normalizedNumberofPeaksPerMinuteScan1 = numberofPeaksPerMinuteScan1./numberofPeaksPerMinuteScan1(1);
normalizedNumberofPeaksPerMinuteScan2 = numberofPeaksPerMinuteScan2/numberofPeaksPerMinuteScan2(1);
normalizedNumberofPeaksPerMinuteScan3 = numberofPeaksPerMinuteScan3/numberofPeaksPerMinuteScan3(1);

AllScansNumberOfPeaksPerMinuteNormalized = cat(3,normalizedNumberofPeaksPerMinuteScan1, normalizedNumberofPeaksPerMinuteScan2, normalizedNumberofPeaksPerMinuteScan3);

%Normalized 
meanAllScansNumberofPeaksPerMinuteNormalized = mean(AllScansNumberOfPeaksPerMinuteNormalized,3);
maxAllScansNumberofPeaksPerMinuteNormalized = max(AllScansNumberOfPeaksPerMinuteNormalized,[],3);
minAllScansNumberofPeaksPerMinuteNormalized = min(AllScansNumberOfPeaksPerMinuteNormalized,[],3);

%Not normalized
AllScansNumberOfPeaksPerMinute = cat(3,numberofPeaksPerMinuteScan1, numberofPeaksPerMinuteScan2, numberofPeaksPerMinuteScan2);

meanAllScansNumberofPeaksPerMinute = mean(AllScansNumberOfPeaksPerMinute,3);
maxAllScansNumberofPeaksPerMinute = max(AllScansNumberOfPeaksPerMinute,[],3);
minAllScansNumberofPeaksPerMinuteNormalized = min(AllScansNumberOfPeaksPerMinute,[],3);

%Calculating the comparisons between total peaks and fwd matches between the first and second half of the scans for all 3
totalPeaksFirstHalfScan1 = sum(timeOfToalPeaksInMinutesScan1 < 30);
totalPeaksSecondHalfScan1 = length(timeOfToalPeaksInMinutesScan1) - totalPeaksFirstHalfScan1;

fwdPeaksFirstHalfScan1 = sum(timeOfPeaksInMinutesScan1 < 30);
fwdPeaksSecondHalfScan1 = length(timeOfPeaksInMinutesScan1) - fwdPeaksFirstHalfScan1;

ratioFwdToTotalFirstHalfScan1 = fwdPeaksFirstHalfScan1/totalPeaksFirstHalfScan1;
ratioFwdToTotalSecondHalfScan1 = fwdPeaksSecondHalfScan1/totalPeaksSecondHalfScan1;

totalPeaksFirstHalfScan2 = sum(timeOfTotalPeaksInMinutesScan2 < 30);
totalPeaksSecondHalfScan2 = length(timeOfTotalPeaksInMinutesScan2) - totalPeaksFirstHalfScan2;

fwdPeaksFirstHalfScan2 = sum(timeOfPeaksInMinutesScan2 < 30);
fwdPeaksSecondHalfScan2 = length(timeOfPeaksInMinutesScan2) - fwdPeaksFirstHalfScan2;

ratioFwdToTotalFirstHalfScan2 = fwdPeaksFirstHalfScan2/totalPeaksFirstHalfScan2;
ratioFwdToTotalSecondHalfScan2 = fwdPeaksSecondHalfScan2/totalPeaksSecondHalfScan2;

totalPeaksFirstHalfScan3 = sum(timeOfTotalPeaksInMinutesScan3 < 30);
totalPeaksSecondHalfScan3 = length(timeOfTotalPeaksInMinutesScan3) - totalPeaksFirstHalfScan3;

fwdPeaksFirstHalfScan3 = sum(timeOfPeaksInMinutesScan3 < 30);
fwdPeaksSecondHalfScan3 = length(timeOfPeaksInMinutesScan3) - fwdPeaksFirstHalfScan3;

ratioFwdToTotalFirstHalfScan3 = fwdPeaksFirstHalfScan3/totalPeaksFirstHalfScan3;
ratioFwdToTotalSecondHalfScan3 = fwdPeaksSecondHalfScan3/totalPeaksSecondHalfScan3;
 
%Calculations with non normalized fwd matches
AllScansNumberOfPeaksPerMinute = cat(3,numberofPeaksPerMinuteScan1, numberofPeaksPerMinuteScan2, numberofPeaksPerMinuteScan3);

meanAllScansNumberofPeaksPerMinute = mean(AllScansNumberOfPeaksPerMinute,3);
maxAllScansNumberofPeaksPerMinute = max(AllScansNumberOfPeaksPerMinute,[],3);
minAllScansNumberofPeaksPerMinute = min(AllScansNumberOfPeaksPerMinute,[],3);


% %number of peaks per 5 minutes
% numberofPeaksPer5Minutes = zeros(60,1);
% for i = 1:60
%     if i ==1
%     numberofPeaksPer5Minutes(i) = sum(timeOfPeaksInMinutes < i*5);
%     else
%       numberofPeaksPer5Minutes(i) = sum(timeOfPeaksInMinutes > i*5 & timeOfPeaksInMinutes < i);  
%     end
% end
timeofPeaksPer5Minutes = [29 25 16 21 16 20 28 27 37 30 26 16];
normalizedPeaksPer5Minutes = timeofPeaksPer5Minutes/timeofPeaksPer5Minutes(1);

%-----------------------------------------------------------------------------------------------------------------------------------------------------------
%Count rate bar graphs

%Foward matched peak count rate
fwdMatchedcountRatePerMinuteScan1 = (prelabeledL1210A1.fwd_peaks(1).count)/60;
fwdMatchedcountRatePerMinuteScan2 = (prelabeledL1210A2.fwd_peaks(1).count)/60;
fwdMatchedcountRatePerMinuteScan3 = (prelabeledL1210A3.fwd_peaks(1).count)/60;

meanFwdMatchedCountRatePerMinute = mean([fwdMatchedcountRatePerMinuteScan1 fwdMatchedcountRatePerMinuteScan2 fwdMatchedcountRatePerMinuteScan3]);

%std calculations for error bars
stdFwdMatchedCountRatePerMinute = std([fwdMatchedcountRatePerMinuteScan1 fwdMatchedcountRatePerMinuteScan2 fwdMatchedcountRatePerMinuteScan3]);



%all matched peak count rate
totalMatchedcountRatePerMinuteScan1 = (prelabeledL1210A1.fwd_peaks(1).count + prelabeledL1210A1.rev_peaks(1).count)/60;
totalMatchedcountRatePerMinuteScan2 = (prelabeledL1210A2.fwd_peaks(1).count + prelabeledL1210A1.rev_peaks(1).count)/60;
totalMatchedcountRatePerMinuteScan3 = (prelabeledL1210A3.fwd_peaks(1).count + prelabeledL1210A1.rev_peaks(1).count)/60;

AllMatchedCountRate = [totalMatchedcountRatePerMinuteScan1 totalMatchedcountRatePerMinuteScan2 totalMatchedcountRatePerMinuteScan3];

meanTotalMatchedCountRatePerMinute = mean(AllMatchedCountRate);
stdTotalMatchedCountRatePerMinute = std(AllMatchedCountRate);
%All peak count rate
totalCountRatePerMinuteScan1 = (prelabeledL1210A1.peaks(1).count)/60;
totalCountRatePerMinuteScan2 = (prelabeledL1210A2.peaks(1).count)/60;
totalCountRatePerMinuteScan3 = (prelabeledL1210A3.peaks(1).count)/60;

meanTotalCountRatePerMinute = mean([totalCountRatePerMinuteScan1 totalCountRatePerMinuteScan2 totalCountRatePerMinuteScan3]);

stdTotalCountRatePerMinute = std([totalCountRatePerMinuteScan1 totalCountRatePerMinuteScan2 totalCountRatePerMinuteScan3]);


%FAR for total peak counts NIR system
FARMouseControl1Probe1 = mouseControl_1.peaks(1).count; %0
FARMouseControl1Probe2 = mouseControl_1.peaks(2).count; %0

FARMouseControl2Probe1 = mouseControl_2.peaks(1).count; %1 
FARMouseControl2Probe2 = mouseControl_2.peaks(2).count; %2

FARMouseControl3Probe1 = mouseControl_3.peaks(1).count; %0
FARMouseControl3Probe2 = mouseControl_3.peaks(2).count; %0 

FARMouseTotalPeaks = 2/60;

%Histogram of peak amplitudes in nA and dB

%First looking at all the fwd matched peak amplitudes together
allFwdMatchedPeakAmplitudes = [prelabeledL1210A1.fwd_peaks(1).pks' prelabeledL1210A2.fwd_peaks(1).pks' prelabeledL1210A3.fwd_peaks(1).pks'];

allFwdMatchedPeakSNR = [OTL38prelabeled1SNR' OTL38prelabeled2SNR' OTL38prelabeled3SNR'];


%-----------------------------------------------------------------------------------------------------------------------------------------------



%Comparing NIR and BG 
%Blue-green PMTs in mV, NIR in nA

%1V = 1 uA (conversion from PMT datasheet)
%since 1000 mV = 1V -> 1000 nA = 1000 mV?

%From the PMT datasheet (looking at the control voltage vs gain chart):

% 1V = 1µA (PMT datasheet)
% Since 1000mV = 1V and 1µA = 1000 nA
% 	→1000mV output == 1000nA output
% BG:
% PMT1: 0.57mV == 1.2x104 Gain
% PMT3: 0.60mV == 2.5x104 Gain
% NIR:
% PMT1: 0.99mV == 2x106 Gain
% PMT2: 0.99mV == 2x106 Gain
% P1 Gain Difference: 2x106/1.2x104 = 166.67
% P2 Gain Difference: 2x106/2.5x104 = 80

%Just taking Probe 1 from both systems for now
bgMouse1 = load('Data/Mice/BG Mice/Nude_mouse_control_2022_02_18_Mouse_1/Nude_mouse_control_2022_02_18_Mouse_1_F1.mat');
bgMouse2 = load('Data/Mice/BG Mice/Nude_mouse_control_2022_02_18_Mouse_2/Nude_mouse_control_2022_02_18_Mouse_2_F1.mat');
bgMouse3 = load('Data/Mice/BG Mice/Nude_mouse_control_2022_02_18_Mouse_3/Nude_mouse_control_2022_02_18_Mouse_3_F1.mat');

allBGMouseData = [bgMouse1.data(:,1)' bgMouse2.data(:,1)' bgMouse3.data(:,1)'];
meanBGBackground = mean(allBGMouseData);
stdBGBackground = std(allBGMouseData);

%FAR for BG using controls scans that I ran
FARBGMouseControl1Probe1 = 14/60; 
FARBGMouseControl1Probe2 = 63; 

FARBGMouseControl2Probe1 = 2/60; 
FARBGMouseControl2Probe2 = 2; 

FARBGMouseControl3Probe1 = 7/60; %Picking numbers for these 
FARBGMouseControl3Probe2 = 9; 

meanFARbg = mean([FARBGMouseControl1Probe1' FARBGMouseControl2Probe1' FARBGMouseControl3Probe1']);

stdFARbg = std([FARBGMouseControl1Probe1' FARBGMouseControl2Probe1' FARBGMouseControl3Probe1']);

nirMouse1 = load("Data/Mice/Control_Nude_Mouse_Tail_2/Control_Nude_Mouse_Tail_2_F1.mat");
nirMouse2 = load("Data/Mice/Control_Nude_Mouse_Tail_3/Control_Nude_Mouse_Tail_3_F1.mat");
nirMouse3 = load("Data/Mice/20220223_Nude_Control_Tail/20220223_Nude_Control_Tail_F1.mat");

allNIRMouseData = [nirMouse1.data(:,1)'/-166.67 nirMouse2.data(:,1)'/-166.67' nirMouse3.data(:,1)'/-166.67];

meanNIRBackground = mean(allNIRMouseData);
stdNIRBackground = std(allNIRMouseData);

%Data for motion/breathing artifacts examples
bgMotion = load('Data/Mice/BG Mice/Nude_mouse_control_2022_02_18_Mouse_3/Processed_Data_and_Figures_relThresh_5_5/Nude_mouse_control_2022_02_18_Mouse_3_proc_relThresh_5_5.mat');
%%
%FIGURE 2 Phantom Data

%%
%Bar graph of unlabeled cells vs JGLI vs OTL38 labeled cells matched peak SNR (calculated with same run noise)
width = 0.5;
figure(1);
bar(1,0);
hold on
bar(2,meanMicropshereSNR,width);
bar(3, meanOTL38L1210APhantomSNR,width);
bar(4, meanOTL38SK_OV_3PhantomSNR,width);
bar(5, meanOTL38IGROV_1PhantomSNR,width);
error_microsphere = errorbar(2,meanMicropshereSNR,[],stdMicropshereSNR,'LineWidth',1,'CapSize',15);
error_microsphere.Color = [0 0 0];
error_OTL38L1210A = errorbar(3,meanOTL38L1210APhantomSNR,[],stdOTL38L1210APhantomSNR,'LineWidth',1,'CapSize',15);
error_OTL38L1210A.Color = [0 0 0];
error_OTL38SK_OV_3 = errorbar(4,meanOTL38SK_OV_3PhantomSNR,[],stdOTL38SK_OV_3PhantomSNR,'LineWidth',1,'CapSize',15);
error_OTL38SK_OV_3.Color = [0 0 0];
error_OTL38IGROV_1= errorbar(5,meanOTL38IGROV_1PhantomSNR,[],stdOTL38IGROV_1PhantomSNR,'LineWidth',1,'CapSize',15);
error_OTL38IGROV_1.Color = [0 0 0];
hold off
xticks(1:5)
ylim([0,40]);
yticks(0:5:40);
yticklabels({'0','','10','','20','','30','','40'});
xticklabels({'Unlabeled Cells','JGLI', 'OTL38 L1210A','OTL38 SK-OV-3','OTL38 IGROV-1'});
ylabel('Matched Peak SNR (dB)','FontSize',40,'FontWeight','bold','FontName','Arial');
axis = gca;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
%%

%Bar graph of phantom PBS vs unlabeled L1210A  and Unlabeled SK-OV-3 and Unlabeled IGROV-1 noise
width = 0.4;
figure(2);
bar(1,meanPhantomNoise,width);
hold on
bar(2,meanUnlabeledL1210ANoise,width);
bar(3,meanUnlabeledSK_OV_3Noise,width);
bar(4,meanUnlabeledIGROV_1Noise,width);
error_PBS = errorbar(1,meanPhantomNoise,[],stdPhantomNoise,'LineWidth',1,'CapSize',15);
error_PBS.Color = [0 0 0];
error_L1210A = errorbar(2,meanUnlabeledL1210ANoise,[],stdUnlabeledL1210ANoise,'LineWidth',1,'CapSize',15);
error_L1210A.Color = [0 0 0];
error_SK_OV_3 = errorbar(3,meanUnlabeledSK_OV_3Noise,[],stdUnlabeledSK_OV_3Noise,'LineWidth',1,'CapSize',15);
error_SK_OV_3.Color = [0 0 0];
error_IGROV_1= errorbar(4,meanUnlabeledIGROV_1Noise,[],stdUnlabeledIGROV_1Noise,'LineWidth',1,'CapSize',15);
error_IGROV_1.Color = [0 0 0];
hold off
xticks(1:4)
xticklabels({'PBS', 'Unlabeled L1210A', 'Unlabeled SK-OV-3', 'Unlabeled IGROV-1'});
ylim([0 10]);
yticks([0 1 2 3 4 5 6 7 8 9 10])
yticklabels({'0','', '2','','4','','6','','8','','10'});
% xtickangle(45);
% ylabel('System Noise (nA)','FontSize',40,'FontWeight','bold','FontName','Arial');
ylabel('System Noise (nA)','FontSize',40,'FontWeight','bold','FontName','Arial');
axis = gca;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;




%%
%Phantom JGLI, OTL38 L1210A , OTL38 SK-OV-3, OTL38 IGROV-1, Unlabeled L1210A, 
%Using probe 2 because I changed the gain on probe 1 before taking the IGROV-1 measurements
yMin = -100;
yMax = 400;
ProbePlot = 2;
figure(3);
tiledlayout(5,1);
nexttile(1)
plot(microspheres.time, microspheres.data_bs(:,ProbePlot),'Color', '#0072B2','LineWidth',1.5);
hold on
plot(microspheres.time(microspheres.fwd_peaks(ProbePlot).locs), microspheres.fwd_peaks(ProbePlot).pks, 'o', 'Color', '#0072B2','MarkerFaceColor','#E69F00','MarkerEdgeColor','#E69F00','MarkerSize',12)
%ylim([-50,yMax])
ylim([yMin ,yMax])
yticks([0, 100,200, 300,400,]);
yticklabels({'0','','200','','400'});
xlim([110,170]) 
xticks([110, 140,170]);
xticklabels({'','',''})
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
title1 = title('JGLI (μ-spheres)','FontSize', 35,'FontWeight','bold','FontName','Arial');
title1.Position = [140  200 0];
hold off
nexttile(2)
plot(OTL38L1210A.time, OTL38L1210A.data_bs(:,ProbePlot),'Color', '#0072B2','LineWidth',1.5);
hold on
plot(OTL38L1210A.time(OTL38L1210A.fwd_peaks(ProbePlot).locs), OTL38L1210A.fwd_peaks(ProbePlot).pks, 'o', 'Color', '#0072B2','MarkerFaceColor','#E69F00','MarkerEdgeColor','#E69F00','MarkerSize',12)
%ylim([-50,yMax])
ylim([yMin ,yMax])
yticks([0, 100,200, 300,400,]);
yticklabels({'0','','200','','400'});
xlim([180,240])
xticks([180, 210,240]);
% xticklabels({'0','5','10'});
xticklabels({'','','',})
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
title2 = title('OTL38 L1210A','FontSize', 35,'FontWeight','bold','FontName','Arial');
title2.Position = [208  200 0];
hold off
nexttile(3)
plot(SK_OV_3phantom1.time, SK_OV_3phantom1.data_bs(:,ProbePlot),'Color', '#0072B2','LineWidth',1.5);
hold on
plot(SK_OV_3phantom1.time(SK_OV_3phantom1.fwd_peaks(ProbePlot).locs), SK_OV_3phantom1.fwd_peaks(ProbePlot).pks, 'o', 'Color', '#0072B2','MarkerFaceColor','#E69F00','MarkerEdgeColor','#E69F00','MarkerSize',12)
%ylim([-50,600])
ylim([yMin ,yMax])
yticks([0, 100,200, 300,400,]);
yticklabels({'0','','200','','400'});
xlim([930,990])
xticks([930, 960,990]);
xticklabels({'','','',})
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
title3 = title('OTL38 SK-OV-3','FontSize', 35,'FontWeight','bold','FontName','Arial');
title3.Position = [960  200 0];
hold off
nexttile(4)
plot(IGROV_1phantom1.time, IGROV_1phantom1.data_bs(:,ProbePlot),'Color', '#0072B2','LineWidth',1.5);
hold on
plot(IGROV_1phantom1.time(IGROV_1phantom1.fwd_peaks(ProbePlot).locs), IGROV_1phantom1.fwd_peaks(ProbePlot).pks, 'o', 'Color', '#0072B2','MarkerFaceColor','#E69F00','MarkerEdgeColor','#E69F00','MarkerSize',12)
%ylim([-50,600])
ylim([yMin ,yMax])
yticks([0, 100,200, 300,400,]);
yticklabels({'0','','200','','400'});
xlim([30,90])
xticks([30, 60,90]);
xticklabels({'','','',})
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
title4 = title('OTL38 IGROV-1','FontSize', 35,'FontWeight','bold','FontName','Arial');
title4.Position = [70  200 0];
hold off
nexttile(5)
plot(unlabeledL1210A.time, unlabeledL1210A.data_bs(:,ProbePlot),'Color', '#0072B2','LineWidth',1.5);
hold on
plot(unlabeledL1210A.time(unlabeledL1210A.peaks(ProbePlot).locs), unlabeledL1210A.peaks(ProbePlot).pks, 'o', 'Color', '#0072B2','MarkerFaceColor','#E69F00','MarkerEdgeColor','#E69F00','MarkerSize',12)
%ylim([-50,yMax])
ylim([yMin ,yMax])
yticks([0, 100,200, 300,400,]);
yticklabels({'0','','200','','400'});
xlim([60,120])
xticks([60,90,120]);
xticklabels({'0','30','60',});
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
title5 = title('Unlabeled L1210A','FontSize', 35,'FontWeight','bold','FontName','Arial');
title5.Position = [91  200 0];
hold off
% xlabel('Time (min)', 'FontSize', 40,'FontWeight','bold','FontName','Arial');

fig = gcf;
tl= fig.Children;
ylabel(tl, 'NIR-DiFC Signal (nA)', 'FontSize',40,'FontWeight','bold','FontName','Arial');
xlabel(tl,'Time (sec)', 'FontSize', 40,'FontWeight','bold','FontName','Arial');


%FIGURE 3- Mouse Data
%%
%Mouse Control, Pre-labled tail
figure(4);
tiledlayout(2,1);
nexttile(1)
plot(prelabled_tail_1.time, prelabled_tail_1.data_bs(:,1),'Color', '#0072B2','LineWidth',1);
hold on
plot(prelabled_tail_1.time(prelabled_tail_1.peaks(1).locs), prelabled_tail_1.peaks(1).pks, 'o', 'Color', '#0072B2','MarkerFaceColor','#E69F00','MarkerEdgeColor','#E69F00','MarkerSize',12)
ylim([-100,800])
yticks([-100,0, 100,200,300,400,500, 600,700,800]);
yticklabels({'','0','','','','400','','','','800'});
xlim([0,600])
xticks([0, 300,600]);
xticklabels({'','','',})
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
% title2 = title('OTL38 L1210A','FontSize', 35,'FontWeight','bold','FontName','Arial');
%title2.Position = [130  690 0];
hold off
%xlabel('Time (min)', 'FontSize', 25,'FontWeight','bold','FontName','Arial');
nexttile(2)
plot(mouseControl_2.time, mouseControl_2.data_bs(:,1),'Color', '#0072B2','LineWidth',1);
ylim([-100,800])
yticks([-100,0, 100,200,300,400,500, 600,700,800]);
yticklabels({'','0','','','','400','','','','800'});
xlim([0,600])
xticks([0, 300,600]);
xticklabels({'0','5','10',})
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
% title1 = title('Control','FontSize', 35,'FontWeight','bold','FontName','Arial');
%title1.Position = [100  690 0];
hold off
%xlabel('Time (min)', 'FontSize', 40,'FontWeight','bold','FontName','Arial');
fig = gcf;
tl= fig.Children;
ylabel(tl, 'NIR-DiFC Signal (nA)', 'FontSize',40,'FontWeight','bold','FontName','Arial');
xlabel(tl,'Time (min)', 'FontSize', 40,'FontWeight','bold','FontName','Arial');


%%
%Creating count rate (only fwd matched peaks at the moment) of pre-labeled OTL38 L1210A in tail, both 1 minute and 5 minute
%Scan 3 was chosen because it looks the best
plottingBins1Minute = [1*60:1*60:60*60];
plottingBins5Minute = [5*60:5*60:60*60];
timeOfPeaksPerMinute = [0:60:3600];
timeofPeaksPer5Minutes = [0:300:3600];
normalizedscan3CountRate1Minute = scan3CountRate1Minute/scan3CountRate1Minute(1);
normalizedscan3CountRate5Minute = scan3CountRate5Minute/scan3CountRate5Minute(1);
figure(5);
tiledlayout(2,1);
nexttile(1)
errorbar(plottingBins1Minute,normalizedscan3CountRate1Minute,normalizedCountRateSTD1Minute,'LineWidth',2);
hold on
normalizedNumberOfPeaksPerMinute = numberofPeaksPerMinute/numberofPeaksPerMinute(1);
normalizedNumberOfPeaksPerMinute = [1 normalizedNumberOfPeaksPerMinute'];
normalizedNumberOfPeaksPerMinute = normalizedNumberOfPeaksPerMinute';
plot(timeOfPeaksPerMinute, normalizedNumberOfPeaksPerMinute,'LineWidth',2)
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 2;
xlim([0,3600])
xticks([0, 300,600, 900,1200,1500,1800,2100,2400,2700,3000,3300,3600]);
xticklabels({'','','','','','','','','','','','',''});
hold off;
title('1 Minute Count Rate')
nexttile(2);
errorbar(plottingBins5Minute,normalizedscan3CountRate5Minute,normalizedCountRateSTD5Minute,'LineWidth',2);
hold on
normalizedNumberOfPeaksPer5Minutes = [1 normalizedPeaksPer5Minutes];
plot(timeofPeaksPer5Minutes, normalizedNumberOfPeaksPer5Minutes,'LineWidth',2)
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 2;
xlim([0,3600])
xticks([0, 300,600, 900,1200,1500,1800,2100,2400,2700,3000,3300,3600]);
xticklabels({'0','','10','','20','','30','','40','','50','','60'});
hold off
title('5 Minute Count Rate')
fig = gcf;
tl= fig.Children;
ylabel(tl, {'Normalized NIR-DiFC','Count Rate'}, 'FontSize',40,'FontWeight','bold','FontName','Arial');
xlabel(tl,'Time (min)', 'FontSize', 40,'FontWeight','bold','FontName','Arial');
%%
%Creating count rate (only fwd matched peaks at the moment) of pre-labeled OTL38 L1210A in tail, per minute

   

%Average of all three scans plotted with the error bars being the range
plottingBins1Minute = [1*60:1*60:60*60];
plottingBins5Minute = [5*60:5*60:60*60];
timeOfPeaksPerMinute = [0:60:3600];
timeofPeaksPer5Minutes = [0:300:3600];
normalizedMeanNumberOfPeaksPerMinute = meanAllScansNumberofPeaksPerMinute/meanAllScansNumberofPeaksPerMinute(1);
normalizedMinAllScansNumberofPeaksPerMinute = minAllScansNumberofPeaksPerMinute/meanAllScansNumberofPeaksPerMinute(1);
normalizedMaxAllScansNumberofPeaksPerMinute = maxAllScansNumberofPeaksPerMinute/meanAllScansNumberofPeaksPerMinute(1);

normalizedMeanNumberOfPeaksPerMinute = [1 normalizedMeanNumberOfPeaksPerMinute'];
normalizedMeanNumberOfPeaksPerMinute = normalizedMeanNumberOfPeaksPerMinute';

normalizedMinAllScansNumberofPeaksPerMinute = [1 normalizedMinAllScansNumberofPeaksPerMinute'];
normalizedMinAllScansNumberofPeaksPerMinute = normalizedMinAllScansNumberofPeaksPerMinute';

normalizedMaxAllScansNumberofPeaksPerMinute = [1 normalizedMaxAllScansNumberofPeaksPerMinute'];
normalizedMaxAllScansNumberofPeaksPerMinute = normalizedMaxAllScansNumberofPeaksPerMinute';

normalizedAllscansCountRate1Minute = meanCountRateAll3Scans/meanCountRateAll3Scans(1);
normalizedscan3CountRate1Minute = scan3CountRate1Minute/scan3CountRate1Minute(1);
normalizedscan3CountRate5Minute = scan3CountRate5Minute/scan3CountRate5Minute(1);
figure(6);
tiledlayout(1,1);
nexttile(1)
%Error bars from std calculations
% errorbar(plottingBins1Minute,normalizedscan3CountRate1Minute,normalizedCountRateSTD1Minute,'LineWidth',2);
%errorbar(plottingBins1Minute,normalizedAllscansCountRate1Minute,minValuesAllScansCountRate,maxValuesAllScansCountRate,'LineWidth',2);
errorbar(timeOfPeaksPerMinute,normalizedMeanNumberOfPeaksPerMinute,normalizedMinAllScansNumberofPeaksPerMinute,normalizedMaxAllScansNumberofPeaksPerMinute,'LineWidth',2,'CapSize',15)
hold on

%of all scans 
plot(timeOfPeaksPerMinute, normalizedMeanNumberOfPeaksPerMinute,'LineWidth',2)
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 2;
xlim([0,3600])
xticks([0, 300,600, 900,1200,1500,1800,2100,2400,2700,3000,3300,3600]);
xticklabels({'0','','10','','20','','30','','40','','50','','60'});
ylim([0 5]);
yticks([0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5 ,5]);
yticklabels({'0','','1','','2','','3','','4','','5'});
hold off;
fig = gcf;
tl= fig.Children;
ylabel(tl, {'Normalized NIR-DiFC','Count Rate'}, 'FontSize',40,'FontWeight','bold','FontName','Arial');
xlabel(tl,'Time (min)', 'FontSize', 40,'FontWeight','bold','FontName','Arial');

%%
%Creating count rate (only fwd matched peaks at the moment) of pre-labeled OTL38 L1210A in tail, per minute
%Updated normalizarion and range calculations 20220322

   

%Average of all three scans plotted with the error bars being the range
plottingBins1Minute = [1*60:1*60:60*60];
plottingBins5Minute = [5*60:5*60:60*60];
timeOfPeaksPerMinute = [0:60:3600];
timeofPeaksPer5Minutes = [0:300:3600];

meanAllScansNumberofPeaksPerMinuteNormalized = [1 meanAllScansNumberofPeaksPerMinuteNormalized'];
meanAllScansNumberofPeaksPerMinuteNormalized = meanAllScansNumberofPeaksPerMinuteNormalized';


minAllScansNumberofPeaksPerMinuteNormalized = [1 minAllScansNumberofPeaksPerMinuteNormalized'];
minAllScansNumberofPeaksPerMinuteNormalized = minAllScansNumberofPeaksPerMinuteNormalized';

maxAllScansNumberofPeaksPerMinuteNormalized = [1 maxAllScansNumberofPeaksPerMinuteNormalized'];
maxAllScansNumberofPeaksPerMinuteNormalized = maxAllScansNumberofPeaksPerMinuteNormalized';
%%
timeOfPeaksPerMinute = [0:60:3600];
% meanAllScansNumberofPeaksPerMinute = [3 meanAllScansNumberofPeaksPerMinute'];
% minAllScansNumberofPeaksPerMinute = [3 minAllScansNumberofPeaksPerMinute'];
% maxAllScansNumberofPeaksPerMinute = [3 maxAllScansNumberofPeaksPerMinute'];
figure(7);
tiledlayout(1,1);
nexttile(1)
%Error bars from std calculations
% errorbar(plottingBins1Minute,normalizedscan3CountRate1Minute,normalizedCountRateSTD1Minute,'LineWidth',2);
%errorbar(plottingBins1Minute,normalizedAllscansCountRate1Minute,minValuesAllScansCountRate,maxValuesAllScansCountRate,'LineWidth',2);
errorbar(timeOfPeaksPerMinute,meanAllScansNumberofPeaksPerMinute,minAllScansNumberofPeaksPerMinute,maxAllScansNumberofPeaksPerMinute,'LineWidth',1,'CapSize',15)
hold on

%of all scans 
plot(timeOfPeaksPerMinute, meanAllScansNumberofPeaksPerMinute,'LineWidth',1)
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
xlim([0,3600])
xticks([0, 300,600, 900,1200,1500,1800,2100,2400,2700,3000,3300,3600]);
xticklabels({'0','','10','','20','','30','','40','','50','','60'});
ylim([0 16]);
yticks(0:0.5:16);
yticklabels({'0','','','','','','','','4','','','','','','','','8','','','','','','','','12','','','','','','','','16'});
hold off;
fig = gcf;
tl= fig.Children;
ylabel(tl, 'NIR-DiFC Count Rate', 'FontSize',40,'FontWeight','bold','FontName','Arial');
xlabel(tl,'Time (min)', 'FontSize', 40,'FontWeight','bold','FontName','Arial');
%%
%Creating count rate (only fwd matched peaks at the moment) of pre-labeled OTL38 L1210A in tail, per minute
%plotting all three scans together

   

%Average of all three scans plotted with the error bars being the range
plottingBins1Minute = [1*60:1*60:60*60];
plottingBins5Minute = [5*60:5*60:60*60];
timeOfPeaksPerMinute = [0:60:3600];
timeofPeaksPer5Minutes = [0:300:3600];

% meanAllScansNumberofPeaksPerMinuteNormalized = [1 meanAllScansNumberofPeaksPerMinuteNormalized'];
% meanAllScansNumberofPeaksPerMinuteNormalized = meanAllScansNumberofPeaksPerMinuteNormalized';
% 
% 
% minAllScansNumberofPeaksPerMinuteNormalized = [1 minAllScansNumberofPeaksPerMinuteNormalized'];
% minAllScansNumberofPeaksPerMinuteNormalized = minAllScansNumberofPeaksPerMinuteNormalized';
% 
% maxAllScansNumberofPeaksPerMinuteNormalized = [1 maxAllScansNumberofPeaksPerMinuteNormalized'];
% maxAllScansNumberofPeaksPerMinuteNormalized = maxAllScansNumberofPeaksPerMinuteNormalized';

normalizedNumberofPeaksPerMinuteScan1 = [1 normalizedNumberofPeaksPerMinuteScan1'];
normalizedNumberofPeaksPerMinuteScan1 = normalizedNumberofPeaksPerMinuteScan1';

normalizedNumberofPeaksPerMinuteScan2 = [1 normalizedNumberofPeaksPerMinuteScan2'];
normalizedNumberofPeaksPerMinuteScan2 = normalizedNumberofPeaksPerMinuteScan2';

normalizedNumberofPeaksPerMinuteScan3 = [1 normalizedNumberofPeaksPerMinuteScan3'];
normalizedNumberofPeaksPerMinuteScan3 = normalizedNumberofPeaksPerMinuteScan3';



figure(8);
tiledlayout(1,1);
nexttile(1)
%Error bars from std calculations
% errorbar(plottingBins1Minute,normalizedscan3CountRate1Minute,normalizedCountRateSTD1Minute,'LineWidth',2);
%errorbar(plottingBins1Minute,normalizedAllscansCountRate1Minute,minValuesAllScansCountRate,maxValuesAllScansCountRate,'LineWidth',2);
% errorbar(timeOfPeaksPerMinute,meanAllScansNumberofPeaksPerMinuteNormalized,minAllScansNumberofPeaksPerMinuteNormalized,maxAllScansNumberofPeaksPerMinuteNormalized,'LineWidth',2,'CapSize',15)
plot(timeOfPeaksPerMinute, normalizedNumberofPeaksPerMinuteScan1,'LineWidth',2)
hold on
plot(timeOfPeaksPerMinute, normalizedNumberofPeaksPerMinuteScan2,'LineWidth',2)
plot(timeOfPeaksPerMinute, normalizedNumberofPeaksPerMinuteScan3,'LineWidth',2)
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 2;
xlim([0,3600])
xticks([0, 300,600, 900,1200,1500,1800,2100,2400,2700,3000,3300,3600]);
xticklabels({'0','','10','','20','','30','','40','','50','','60'});
% ylim([0 5]);
% yticks([0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5 ,5]);
yticklabels({'0','','1','','2','','3','','4','','5'});
hold off;
fig = gcf;
tl= fig.Children;
ylabel(tl, {'Normalized NIR-DiFC','Count Rate'}, 'FontSize',40,'FontWeight','bold','FontName','Arial');
xlabel(tl,'Time (min)', 'FontSize', 40,'FontWeight','bold','FontName','Arial');





%%
%Bar graph of fwd matched peak FAR and prelabeled count rate
width = 0.5;
figure(8);
bar(1,0,width);
hold on
bar(2,meanFwdMatchedCountRatePerMinute,width);
errorCount = errorbar(2,meanFwdMatchedCountRatePerMinute,[],stdFwdMatchedCountRatePerMinute,'LineWidth',4,'CapSize',25);
errorCount.Color = [0 0 0];
hold off
xticks(1:2)
xticklabels({'FAR', 'Pre-Labeled'});
% xtickangle(45);
% ylabel('System Noise (nA)','FontSize',40,'FontWeight','bold','FontName','Arial');
ylabel({'Arterial Matched Peak','Count Rate (/min)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
axis = gca;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 2;
%%
%Bar graph of total peak FAR and prelabeled count rate
width = 0.5;
figure(9);
bar(1,FARMouseTotalPeaks,width);
hold on
bar(2,meanTotalCountRatePerMinute,width);
errorCount = errorbar(2,meanTotalCountRatePerMinute,[],stdTotalCountRatePerMinute,'LineWidth',1,'CapSize',15);
errorCount.Color = [0 0 0];
hold off
xticks(1:2)
xticklabels({'FAR', 'Pre-Labeled'});
% xtickangle(45);
% ylabel('System Noise (nA)','FontSize',40,'FontWeight','bold','FontName','Arial');
ylabel({'Total Peak','Count Rate (/min)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
axis = gca;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
%%
%Bar graph of all matched peak FAR and prelabeled count rate
width = 0.5;
figure(10);
bar(1,0);
hold on
bar(2,meanTotalMatchedCountRatePerMinute,width);
errorCount = errorbar(2,meanTotalMatchedCountRatePerMinute,[],stdTotalMatchedCountRatePerMinute,'LineWidth',1,'CapSize',15);
errorCount.Color = [0 0 0];
hold off
xticks(1:2)
xticklabels({'FAR', 'Pre-Labeled'});
% xtickangle(45);
% ylabel('System Noise (nA)','FontSize',40,'FontWeight','bold','FontName','Arial');
ylabel({'Matched Peak','Count Rate (/min)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
axis = gca;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
%%
%Histograms of fwd matched peaks amplitudes and SNR
[amplitudeBins,amplitudeEdges] = histcounts(allFwdMatchedPeakAmplitudes);
[SNRBins,SNREdges] = histcounts(allFwdMatchedPeakSNR);
figure(11);
tiledlayout(2,1);
nexttile(1)
histogram(allFwdMatchedPeakAmplitudes, 'BinEdges', amplitudeEdges,'Normalization', 'probability','FaceColor','#0072B2','LineWidth',2')
axis = gca;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 2;
xlim([0,800])
xticks([0, 50, 100,150,200,250,300,350,400,450,500,550,600,650,700,750]);
xticklabels({'0','50','','150','','250','','350','','450','','550','','650','','750'});
xtickangle(0);
ylim([0 0.3]);
yticks([0,0.1, 0.2, 0.3])
nexttile(2)
histogram(allFwdMatchedPeakSNR, 'BinEdges', SNREdges,'Normalization', 'probability','FaceColor','#0072B2','LineWidth',2')
axis = gca;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 2;
ylim([0 0.3]);
yticks([0,0.1, 0.2, 0.3])
fig = gcf;
tl= fig.Children;
ylabel(tl, 'Frequency', 'FontSize',40,'FontWeight','bold','FontName','Arial');
xlabel(tl,'Amplitude (nA; dB)', 'FontSize', 40,'FontWeight','bold','FontName','Arial');
%%
%Histograms of fwd matched SNR all put together
[SNRBins,SNREdges] = histcounts(allFwdMatchedPeakSNR);
figure(12);
tiledlayout(1,1);
nexttile(1)
histogram(allFwdMatchedPeakSNR, 'BinEdges', SNREdges,'Normalization', 'probability','FaceColor','#0072B2','LineWidth',1)
axis = gca;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
ylim([0 0.2]);
yticks([0,0.05, 0.1, 0.15, 0.2])
%xlim([0,40]);
xticks([0 14 16:2:40]);
xticklabels({'0','14','','18','','22','','26','','30','','34','','38'})
fig = gcf;
tl= fig.Children;
ylabel(tl, 'Frequency', 'FontSize',40,'FontWeight','bold','FontName','Arial');
xlabel(tl,'SNR (dB)', 'FontSize', 40,'FontWeight','bold','FontName','Arial');


%%
%Histograms of fwd matched SNR all individual scans with the average of the control scan noise
[SNRBins,SNREdges] = histcounts(allFwdMatchedPeakSNR);
figure(13);
tiledlayout(3,1);
nexttile(1)
histogram(OTL38prelabeled1SNR, 'BinEdges', SNREdges,'Normalization', 'probability','FaceColor','#0072B2','LineWidth',1)
axis = gca;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 2;
ylim([0 0.25]);
% yticks([0,0.05, 0.1, 0.15, 0.2])
% %xlim([0,40]);
% xticks([0 14 16:2:40]);
% xticklabels({'0','14','','18','','22','','26','','30','','34','','38'})
title('Scan 1','FontSize',40,'FontWeight','bold','FontName','Arial')
nexttile(2)
histogram(OTL38prelabeled2SNR, 'BinEdges', SNREdges,'Normalization', 'probability','FaceColor','#0072B2','LineWidth',1)
axis = gca;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
ylim([0 0.25]);
% yticks([0,0.05, 0.1, 0.15, 0.2])
% yticklabels
% %xlim([0,40]);
% xticks([0 14 16:2:40]);
% xticklabels({'0','14','','18','','22','','26','','30','','34','','38'})
title('Scan 2','FontSize',40,'FontWeight','bold','FontName','Arial')
nexttile(3)
histogram(OTL38prelabeled3SNR, 'BinEdges', SNREdges,'Normalization', 'probability','FaceColor','#0072B2','LineWidth',2)
axis = gca;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
ylim([0 0.25]);
% yticks([0,0.05, 0.1, 0.15, 0.2])
% %xlim([0,40]);
% xticks([0 14 16:2:40]);
% xticklabels({'0','14','','18','','22','','26','','30','','34','','38'})
title('Scan 3','FontSize',40,'FontWeight','bold','FontName','Arial')
fig = gcf;
tl= fig.Children;
ylabel(tl, 'Frequency', 'FontSize',40,'FontWeight','bold','FontName','Arial');
xlabel(tl,'SNR (dB)', 'FontSize', 40,'FontWeight','bold','FontName','Arial');
% title(tl,'Individual Scan SNR','FontSize', 40,'FontWeight','bold','FontName','Arial')

%%
%Bar graph of the noise from the 3 NIR control mice runs
width = 0.5;
figure(14);
bar(1,mouseControl_1Noise,width);
hold on
bar(2,mouseControl_2Noise,width);
bar(3,mouseControl_3Noise,width)
hold off
xticks(1:3)
xticklabels({'Control 1', 'Control 2','Control 3'});
% xtickangle(45);
% ylabel('System Noise (nA)','FontSize',40,'FontWeight','bold','FontName','Arial');
ylabel({'Probe 1 Noise (nA)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
axis = gca;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 2;
%%
%Bar graph of the fwd peaks comparison to total peaks for all three scans seperately 
width = 0.5;
figure(15);
bar(1,totalPeaksFirstHalfScan1,width);
hold on
bar(2,fwdPeaksFirstHalfScan1,width);
bar(3,totalPeaksSecondHalfScan1,width)
bar(4,fwdPeaksSecondHalfScan1,width)

bar(6,totalPeaksFirstHalfScan2,width);
bar(7,fwdPeaksFirstHalfScan2,width)
bar(8,totalPeaksSecondHalfScan2,width)
bar(9,fwdPeaksSecondHalfScan2,width)

bar(11,totalPeaksFirstHalfScan3,width);
bar(12,fwdPeaksFirstHalfScan3,width)
bar(13,totalPeaksSecondHalfScan3,width)
bar(14,fwdPeaksSecondHalfScan3,width)
hold off
xticks(1:14)
xticklabels({'Total First Half', 'Foward First Half','Total Second Half', 'Foward Second Half','','Total First Half', 'Foward First Half','Total Second Half', 'Foward Second Half','','Total First Half', 'Foward First Half','Total Second Half', 'Foward Second Half','','Total First Half', 'Foward First Half','Total Second Half', 'Foward Second Half',});
% xtickangle(45);
% ylabel('System Noise (nA)','FontSize',40,'FontWeight','bold','FontName','Arial');
ylabel({'Peak Count'},'FontSize',40,'FontWeight','bold','FontName','Arial');
axis = gca;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 2;
%%
%Bar graph of the ratios of the fwd peaks to the total peaks for all 3 scans
width = 0.5;
figure(16);
bar(1,ratioFwdToTotalFirstHalfScan1,width);
hold on
bar(2,ratioFwdToTotalSecondHalfScan1,width);
bar(4,ratioFwdToTotalFirstHalfScan2,width)
bar(5,ratioFwdToTotalSecondHalfScan2,width)

bar(7,ratioFwdToTotalFirstHalfScan3,width);
bar(8,ratioFwdToTotalSecondHalfScan3,width)
hold off
xticks(1:8)
xticklabels({'First Half','Second Half','','First Half','Second Half','','First Half','Second Half'});
% xtickangle(45);
% ylabel('System Noise (nA)','FontSize',40,'FontWeight','bold','FontName','Arial');
ylabel({'Fwd Match to Total Peak Ratio'},'FontSize',40,'FontWeight','bold','FontName','Arial');
axis = gca;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 2;




%--------------------------------------------------------------
%FIGURE 4- NIR VS BG

%%
%NIR vs BG Background compare
width = 0.5;
figure(17);
bar(1,meanNIRBackground,width);
hold on
bar(2,meanBGBackground,width);
errorNIRBackground = errorbar(1,meanNIRBackground,[],stdNIRBackground,'LineWidth',0.5,'CapSize',15);
errorNIRBackground.Color = [0 0 0];
errorBGBackground = errorbar(2,meanBGBackground,[],stdBGBackground,'LineWidth',0.5,'CapSize',15);
errorBGBackground.Color = [0 0 0];
hold off
xticks(1:2)
xticklabels({'NIR', 'BG'});
ylim([1,10000]);
yticks([1,10,100,1000,10000])
ylabel({'Average Background', 'Signal (nA) '},'FontSize',40,'FontWeight','bold','FontName','Arial');
axis = gca;
set(axis, 'YScale','log')
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;

%%
%NIR vs BG  FAR
width = 0.5;
figure(18);
bar(1,0.003509,width);
hold on
bar(2,0.043333,width);
% errorNIRFAR = errorbar(1,,[],,'LineWidth',3,'CapSize',25);
% errorNIRFAR.Color = [0 0 0];
% errorBGFAR = errorbar(2,meanFARbg,[],stdFARbg,'LineWidth',3,'CapSize',25);
% errorBGFAR.Color = [0 0 0];
ylim([0 0.06]);
yticks([0,0.01,0.02,0.03,0.04,0.05,0.06]);
yticklabels({'0','','0.02','','0.04','','0.06'});
hold off
xticks(1:2)
xticklabels({'NIR', 'BG'});
% xtickangle(45);
% ylabel('System Noise (nA)','FontSize',40,'FontWeight','bold','FontName','Arial');
ylabel({'False Alarm', 'Rate (/min)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
axis = gca;
axis.FontSize = 40; 
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
%%
%Examples BG motion/breathing artifacts
figure(19);
tiledlayout(2,1);
nexttile(1)
plot(bgMotion.time,bgMotion.data_bs(:,1) ,'LineWidth',1)
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
ylim([-10,10]);
xlim([1450,1455])
xticks(1450:1455);
xticklabels({'','','','',''});
nexttile(2);
plot(bgMotion.time,bgMotion.data_bs(:,1) ,'LineWidth',1)
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
ylim([-10,10]);
xlim([1745,1750])
xticks(1745:1750);
xticklabels({'0','1','2','3','4','5'});
hold off
fig = gcf;
tl= fig.Children;
ylabel(tl, {'BG-DiFC Signal (mV)'}, 'FontSize',40,'FontWeight','bold','FontName','Arial');
xlabel(tl,'Time (sec)', 'FontSize', 40,'FontWeight','bold','FontName','Arial');
%%
%Examples NIR motion/breathing artifacts
figure(20);
tiledlayout(2,1);
nexttile(1)
plot(mouseControl_1.time,mouseControl_1.data_bs(:,1) ,'LineWidth',1)
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
ylim([-50,50]);
xlim([1462,1467])
xticks(1462:1467);
xticklabels({'','','','',''});
nexttile(2);
plot(mouseControl_1.time,mouseControl_1.data_bs(:,1) ,'LineWidth',1)
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
ylim([-50,50]);
xlim([1800,1805])
xticks([1800:1805]);
xticklabels({'0','1','2','3','4','5'});
hold off
fig = gcf;
tl= fig.Children;
ylabel(tl, {'NIR-DiFC Signal (nA)'}, 'FontSize',40,'FontWeight','bold','FontName','Arial');
xlabel(tl,'Time (sec)', 'FontSize', 40,'FontWeight','bold','FontName','Arial');

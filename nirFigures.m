%figure for NIR Paper 1
%System Characterization 
%20220226, Josh Pace
%20220722, Josh Pace (responding to revisions)

clear; close all;clc

%% Data for Plots

%Phantom control, JG LI, OTL38 labeled L1210A

%Phantom control
phantomControl = load('Data/Phantom/Old/PBS_0.75mm_2_proc_relThresh_5_5.mat');

%JG LI microspheres
microspheres = load('Data/Phantom/Old/JGLI_0.75mm_2_proc_relThresh_5_5.mat');

%Unlabeled L1210A
unlabeledL1210A = load('Data/Phantom/Unlabeled Cells 20220417/20220417_Unlabeled_L1210A_0.75mm-1/Processed_Data_and_Figures_relThresh_5_5/20220417_Unlabeled_L1210A_0.75mm-1_proc_relThresh_5_5.mat');

%OTL38 Labeled L1210A
OTL38L1210A = load('Data/Phantom/OTL38_L1210A_500_0.75mm_1_proc_relThresh_5_5.mat');

%Prelabled cell injection #1
%prelabled = load('/Users/joshpace/Library/CloudStorage/OneDrive-SharedLibraries-NortheasternUniversity/Niedre, Mark - Niedre_Lab/Josh/DiFC Data/NIR/OTL38 Mice/OTL38 L1210A 20210729/OTL38_L1210A_Nude_Mouse_Tail_1/Processed_Data_and_Figures_relThresh_5_5 (No PPG Filtering)/OTL38_L1210A_Nude_Mouse_Tail_1_proc_relThresh_5_5.mat');
% #2
%file without unmatched_peaks variable
% prelabled_tail_1 = load('/Users/jspace/Library/CloudStorage/OneDrive-SharedLibraries-NortheasternUniversity/Niedre, Mark - Niedre_Lab/Josh/DiFC Data/NIR/OTL38 Mice/OTL38 L1210A 20210729/OTL38_L1210A_Nude_Mouse_Tail_2/Processed_Data_and_Figures_relThresh_5_5 (No PPG Filtering)/OTL38_L1210A_Nude_Mouse_Tail_2_proc_relThresh_5_5.mat');

%file with un_matched_peaks variable
prelabled_tail_1 = load('Data/Mice/OTL38_L1210A_Nude_Mouse_Tail_2/OTL38_L1210A_Nude_Mouse_Tail_2_proc_relThresh_5_5.mat');
%control mouse 
% mouseControl = load('Data/Mice/Control_Nude_Mouse_Tail_2/Processed_Data_and_Figures_relThresh_5_5 (No PPG Filtering)/Control_Nude_Mouse_Tail_2_proc_relThresh_5_5.mat');


%Applicable Calculations 
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
mouseControl_1 = load("Data/Mice/Control_Nude_Mouse_Tail_2/Control_Nude_Mouse_Tail_2_proc_relThresh_5_5.mat");
mouseControl_1Noise = mouseControl_1.noise(Probe);
mouseControl_1Background = -mouseControl_1.data(Probe);

mouseControl_2 = load("Data/Mice/Control_Nude_Mouse_Tail_3/Control_Nude_Mouse_Tail_3_proc_relThresh_5_5.mat");
mouseControl_2Noise = mouseControl_2.noise(Probe);
mouseControl_2Background = -mouseControl_2.data(Probe);

mouseControl_3 = load("Data/Mice/20220223_Nude_Control_Tail/20220223_Nude_Control_Tail_proc_relThresh_5_5.mat");
mouseControl_3Noise = mouseControl_3.noise(Probe);
mouseControl_3Background = -mouseControl_3.data(Probe);

%CFSE L1210A Only
CFSE_L1210A_Only = load('Data/Mice/CFSE Only L1210A Tail Scan/CFSE_L1210A_Control_Tail_1_proc_relThresh_5_5.mat');


%Mice for ell count rate

prelabeledLeg20220621 = load('Data/Mice/Cell Count Rate Mice/20220621_OTL38_Prelabeled_L1210A_Leg_1_2_proc_relThresh_5_5.mat');
prelabeledLeg20220625 = load('Data/Mice/Cell Count Rate Mice/20220625_OTL38_Prelabeled_L1210A_Leg_1_proc_relThresh_5_5.mat');

prelabeledLeg20220630 = load('Data/Mice/Cell Count Rate Mice/20220630_OTL38_Prelabeled_L1210A_Leg_5_proc_relThresh_5_5.mat');

%Count rate vs cells in the blood
prelabeledLeg20220625_FwdPeakLocsInSec = prelabeledLeg20220625.fwd_peaks(1).locs/2000;
prelabeledLeg20220625_NumberofFwdMatches_Last10min = length(prelabeledLeg20220625_FwdPeakLocsInSec(prelabeledLeg20220625_FwdPeakLocsInSec >= prelabeledLeg20220625.scan_length-600));

prelabeledLeg20220625_RevPeakLocsInSec = prelabeledLeg20220625.rev_peaks(1).locs/2000;
prelabeledLeg20220625_NumberofRevMatches_Last10min = length(prelabeledLeg20220625_RevPeakLocsInSec(prelabeledLeg20220625_RevPeakLocsInSec >= prelabeledLeg20220625.scan_length-600));

prelabeledLeg20220625_NumberofMatches_Last10min = prelabeledLeg20220625_NumberofFwdMatches_Last10min + prelabeledLeg20220625_NumberofRevMatches_Last10min;

prelabeledLeg20220625_FwdPeakLocsInSec = prelabeledLeg20220625.fwd_peaks(1).locs/2000;
prelabeledLeg20220625_NumberofFwdMatches_Last15min = length(prelabeledLeg20220625_FwdPeakLocsInSec(prelabeledLeg20220625_FwdPeakLocsInSec >= prelabeledLeg20220625.scan_length-900));

prelabeledLeg20220625_RevPeakLocsInSec = prelabeledLeg20220625.rev_peaks(1).locs/2000;
prelabeledLeg20220625_NumberofRevMatches_Last15min = length(prelabeledLeg20220625_RevPeakLocsInSec(prelabeledLeg20220625_RevPeakLocsInSec >= prelabeledLeg20220625.scan_length-900));

prelabeledLeg20220625_NumberofMatches_Last15min = prelabeledLeg20220625_NumberofFwdMatches_Last15min + prelabeledLeg20220625_NumberofRevMatches_Last15min;


prelabeledLeg20220621_FwdPeakLocsInSec = prelabeledLeg20220621.fwd_peaks(1).locs/2000;
prelabeledLeg20220621_NumberofFwdMatches_Last10min = length(prelabeledLeg20220621_FwdPeakLocsInSec(prelabeledLeg20220621_FwdPeakLocsInSec >= prelabeledLeg20220621.scan_length-600));

prelabeledLeg20220621_RevPeakLocsInSec = prelabeledLeg20220621.rev_peaks(1).locs/2000;
prelabeledLeg20220621_NumberofRevMatches_Last10min = length(prelabeledLeg20220621_RevPeakLocsInSec(prelabeledLeg20220621_RevPeakLocsInSec >= prelabeledLeg20220621.scan_length-600));

prelabeledLeg20220621_NumberofMatches_Last10min = prelabeledLeg20220621_NumberofFwdMatches_Last10min + prelabeledLeg20220621_NumberofRevMatches_Last10min;

prelabeledLeg20220621_FwdPeakLocsInSec = prelabeledLeg20220621.fwd_peaks(1).locs/2000;
prelabeledLeg20220621_NumberofFwdMatches_Last15min = length(prelabeledLeg20220621_FwdPeakLocsInSec(prelabeledLeg20220621_FwdPeakLocsInSec >= prelabeledLeg20220621.scan_length-900));

prelabeledLeg20220621_RevPeakLocsInSec = prelabeledLeg20220621.rev_peaks(1).locs/2000;
prelabeledLeg20220621_NumberofRevMatches_Last15min = length(prelabeledLeg20220621_RevPeakLocsInSec(prelabeledLeg20220621_RevPeakLocsInSec >= prelabeledLeg20220621.scan_length-900));

prelabeledLeg20220621_NumberofMatches_Last15min = prelabeledLeg20220621_NumberofFwdMatches_Last15min + prelabeledLeg20220621_NumberofRevMatches_Last15min;

prelabeledLeg20220630_FwdPeakLocsInSec = prelabeledLeg20220630.fwd_peaks(1).locs/2000;
prelabeledLeg20220630_NumberofFwdMatches_Last10min = length(prelabeledLeg20220630_FwdPeakLocsInSec(prelabeledLeg20220630_FwdPeakLocsInSec >= prelabeledLeg20220630.scan_length-600));

prelabeledLeg20220630_RevPeakLocsInSec = prelabeledLeg20220630.rev_peaks(1).locs/2000;
prelabeledLeg20220630_NumberofRevMatches_Last10min = length(prelabeledLeg20220630_RevPeakLocsInSec(prelabeledLeg20220630_RevPeakLocsInSec >= prelabeledLeg20220630.scan_length-600));

prelabeledLeg20220630_NumberofMatches_Last10min = prelabeledLeg20220630_NumberofFwdMatches_Last10min + prelabeledLeg20220630_NumberofRevMatches_Last10min;

prelabeledLeg20220630_FwdPeakLocsInSec = prelabeledLeg20220630.fwd_peaks(1).locs/2000;
prelabeledLeg20220630_NumberofFwdMatches_Last15min = length(prelabeledLeg20220630_FwdPeakLocsInSec(prelabeledLeg20220630_FwdPeakLocsInSec >= prelabeledLeg20220630.scan_length-900));

prelabeledLeg20220630_RevPeakLocsInSec = prelabeledLeg20220630.rev_peaks(1).locs/2000;
prelabeledLeg20220630_NumberofRevMatches_Last15min = length(prelabeledLeg20220630_RevPeakLocsInSec(prelabeledLeg20220630_RevPeakLocsInSec >= prelabeledLeg20220630.scan_length-900));

prelabeledLeg20220630_NumberofMatches_Last15min = prelabeledLeg20220630_NumberofFwdMatches_Last15min + prelabeledLeg20220630_NumberofRevMatches_Last15min;

meanprelabeledLegMatchedCountsLast10Min = mean([prelabeledLeg20220625_NumberofMatches_Last10min prelabeledLeg20220621_NumberofMatches_Last10min prelabeledLeg20220621_NumberofMatches_Last10min]);
stdprelabeledLegMatchedCountsLast10Min = std([prelabeledLeg20220625_NumberofMatches_Last10min prelabeledLeg20220621_NumberofMatches_Last10min prelabeledLeg20220621_NumberofMatches_Last10min]);

meanprelabeledLegMatchedCountsLast15Min = mean([prelabeledLeg20220625_NumberofMatches_Last15min prelabeledLeg20220621_NumberofMatches_Last15min prelabeledLeg20220621_NumberofMatches_Last15min]);
stdprelabeledLegMatchedCountsLast15Min = std([prelabeledLeg20220625_NumberofMatches_Last15min prelabeledLeg20220621_NumberofMatches_Last15min prelabeledLeg20220621_NumberofMatches_Last15min]);

prelabeledLeg20220625_NumberofCellsInBloodper2mL = (49/1200)*2000;
prelabeledLeg20220621_NumberofCellsInBloodper2mL = (26/1300)*2000;
prelabeledLeg20220630_NumberofCellsInBloodper2mL = (27/1000)*2000;

prelabeledLeg20220625_NumberofCellsInBloodper1mL = (49/1200)*1000;
prelabeledLeg20220621_NumberofCellsInBloodper1mL = (26/1300)*1000;
prelabeledLeg20220630_NumberofCellsInBloodper1mL = (27/1000)*1000;

allprelabeledLeg20220625_NumberofCellsInBloodper1mL = [prelabeledLeg20220625_NumberofCellsInBloodper1mL prelabeledLeg20220621_NumberofCellsInBloodper1mL prelabeledLeg20220630_NumberofCellsInBloodper1mL];

meanFCCellCount = mean([prelabeledLeg20220625_NumberofCellsInBloodper2mL prelabeledLeg20220621_NumberofCellsInBloodper2mL prelabeledLeg20220630_NumberofCellsInBloodper2mL]);
stdFCCellCount = std([prelabeledLeg20220625_NumberofCellsInBloodper2mL prelabeledLeg20220621_NumberofCellsInBloodper2mL prelabeledLeg20220630_NumberofCellsInBloodper2mL]);

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

meanMouseBackground = mean([mean(mouseControl_1Background) mean(mouseControl_2Background) mean(mouseControl_3Background)]);
stdMouseBackground = std([mean(mouseControl_1Background) mean(mouseControl_2Background) mean(mouseControl_3Background)]);

%JG Phantom vs Pre-labeled Phantom vs Prelabeled Tail SNR

%JGLI Phantom SNR
microspherePhantom1 = load('Data/Phantom/JGLI_0.75mm_2/Processed_Data_and_Figures_relThresh_5_5/JGLI_0.75mm_2_proc_relThresh_5_5.mat');
microspherePhantom1Pks = microspherePhantom1.fwd_peaks(1).pks;
% microspherePhantom1SNR = 20*log10(microspherePhantom1Pks/meanPhantomNoise);
microspherePhantom1SNR = microspherePhantom1.fwd_match_snr(1).dB;
microspherePhantom2 = load('Data/Phantom/JGLI_0.75mm_3/Processed_Data_and_Figures_relThresh_5_5/JGLI_0.75mm_3_proc_relThresh_5_5.mat');
microspherePhantom2Pks = microspherePhantom2.fwd_peaks(1).pks;
% microspherePhantom2SNR = 20*log10(microspherePhantom2Pks/meanPhantomNoise);
microspherePhantom2SNR = microspherePhantom2.fwd_match_snr(1).dB;
microspherePhantom3 = load('Data/Phantom/JGLI_0.75mm_4/Processed_Data_and_Figures_relThresh_5_5/JGLI_0.75mm_4_proc_relThresh_5_5.mat');
microspherePhantom3Pks = microspherePhantom3.fwd_peaks(1).pks;
% microspherePhantom3SNR = 20*log10(microspherePhantom3Pks./meanPhantomNoise);
microspherePhantom3SNR = microspherePhantom3.fwd_match_snr(1).dB;

%OTL38 L1210A Phantom SNR
L1210Aphantom1 = load('Data/Phantom/OTL38_L1210A_1000_0.75mm_1/Processed_Data_and_Figures_relThresh_5_5/OTL38_L1210A_1000_0.75mm_1_proc_relThresh_5_5.mat');
OTL38L1210APks_1 = L1210Aphantom1.fwd_peaks(1).pks;
% OTL38L1210ASNR_1 = 20*log10(OTL38L1210APks_1./meanUnlabeledL1210ANoise);
OTL38L1210ASNR_1 = L1210Aphantom1.fwd_match_snr(1).dB;
L1210Aphantom2 = load('Data/Phantom/OTL38_L1210A_1000_0.75mm_2/Processed_Data_and_Figures_relThresh_5_5/OTL38_L1210A_1000_0.75mm_2_proc_relThresh_5_5.mat');
OTL38L1210APks_2 = L1210Aphantom2.fwd_peaks(1).pks;
% OTL38L1210ASNR_2 = 20*log10(OTL38L1210APks_2./meanUnlabeledL1210ANoise);
OTL38L1210ASNR_2 = L1210Aphantom2.fwd_match_snr(1).dB;
L1210Aphantom3 = load('Data/Phantom/OTL38_L1210A_1000_0.75mm_3/Processed_Data_and_Figures_relThresh_5_5/OTL38_L1210A_1000_0.75mm_3_proc_relThresh_5_5.mat');
OTL38L1210APks_3 = L1210Aphantom3.fwd_peaks(1).pks;
% OTL38L1210ASNR_3 = 20*log10(OTL38L1210APks_3./meanUnlabeledL1210ANoise);
OTL38L1210ASNR_3 = L1210Aphantom3.fwd_match_snr(1).dB;


L1210AphantomPeaksPerMinMax = [max(L1210Aphantom1.pk_per_min.num) max(L1210Aphantom2.pk_per_min.num) max(L1210Aphantom3.pk_per_min.num)];
L1210AphantomPeaksPerMinMin = [min(L1210Aphantom1.pk_per_min.num) min(L1210Aphantom2.pk_per_min.num) min(L1210Aphantom3.pk_per_min.num)];

%OTL38 SK-OV-3 Phantom SNR
SK_OV_3phantom1 = load("Data/Phantom/20220318_OTL38_SK-OV-3_0.75mm_1/Processed_Data_and_Figures_relThresh_5_5/20220318_OTL38_SK-OV-3_0.75mm_1_proc_relThresh_5_5.mat");
OTL38SK_OV_3Pks_1 = SK_OV_3phantom1.fwd_peaks(1).pks;
OTL38SK_OV_3SNR_1 = SK_OV_3phantom1.fwd_match_snr(1).dB;

SK_OV_3phantom2 = load("Data/Phantom/20220318_OTL38_SK-OV-3_0.75mm_2/Processed_Data_and_Figures_relThresh_5_5/20220318_OTL38_SK-OV-3_0.75mm_2_proc_relThresh_5_5.mat");
OTL38SK_OV_3Pks_2 = SK_OV_3phantom2.fwd_peaks(2).pks;
OTL38SK_OV_3SNR_2 = SK_OV_3phantom2.fwd_match_snr(2).dB;

SK_OV_3phantom3 = load("Data/Phantom/20220318_OTL38_SK-OV-3_0.75mm_3/Processed_Data_and_Figures_relThresh_5_5/20220318_OTL38_SK-OV-3_0.75mm_3_proc_relThresh_5_5.mat");
OTL38SK_OV_3Pks_3 = SK_OV_3phantom3.fwd_peaks(1).pks;
OTL38SK_OV_3SNR_3 = SK_OV_3phantom3.fwd_match_snr(1).dB;

SK_OV_3phantomPeaksPerMin = [max(SK_OV_3phantom1.pk_per_min.num) max(SK_OV_3phantom2.pk_per_min.num) max(SK_OV_3phantom3.pk_per_min.num)];

%OTL38 IGROV-1 Phantom SNR
IGROV_1phantom1 = load("Data/Phantom/20220414_IGROV-1_0.75mm-1/Processed_Data_and_Figures_relThresh_5_5/20220414_IGROV-1_0.75mm-1_proc_relThresh_5_5.mat");
OTL38IGROV_1Pks_1 = IGROV_1phantom1.fwd_peaks(1).pks;
OTL38IGROV_1SNR_1 = IGROV_1phantom1.fwd_match_snr(1).dB;

IGROV_1phantom2 = load("Data/Phantom/20220414_IGROV-1_0.75mm-2/Processed_Data_and_Figures_relThresh_5_5/20220414_IGROV-1_0.75mm-2_proc_relThresh_5_5.mat");
OTL38IGROV_1Pks_2 = IGROV_1phantom2.fwd_peaks(1).pks;
OTL38IGROV_1SNR_2 = IGROV_1phantom2.fwd_match_snr(1).dB;

IGROV_1phantom3 = load("Data/Phantom/20220414_IGROV-1_0.75mm-3/Processed_Data_and_Figures_relThresh_5_5/20220414_IGROV-1_0.75mm-3_proc_relThresh_5_5.mat");
OTL38IGROV_1Pks_3 = IGROV_1phantom3.fwd_peaks(1).pks;
OTL38IGROV_1SNR_3 = IGROV_1phantom3.fwd_match_snr(1).dB;

IGROV_1phantomPeaksPerMin = [max(IGROV_1phantom1.pk_per_min.num) max(IGROV_1phantom2.pk_per_min.num) max(IGROV_1phantom3.pk_per_min.num)];
%L1210A Prelabeled SNR
prelabeledL1210A1 = load('Data/Mice/OTL38_L1210A_Nude_Mouse_Tail_1/OTL38_L1210A_Nude_Mouse_Tail_1_proc_relThresh_5_5.mat');
OTL38prelabeled1SNR = 20*log10(prelabeledL1210A1.fwd_peaks(1).pks./meanMouseNoise);
prelabeledL1210A2 = load('Data/Mice/OTL38_L1210A_Nude_Mouse_Tail_2/Processed_Data_and_Figures_relThresh_5_5 (No PPG Filtering)/OTL38_L1210A_Nude_Mouse_Tail_2_proc_relThresh_5_5.mat');
OTL38prelabeled2SNR = 20*log10(prelabeledL1210A2.fwd_peaks(1).pks./meanMouseNoise);
prelabeledL1210A3 = load('/Users/jspace/Library/CloudStorage/OneDrive-SharedLibraries-NortheasternUniversity/Niedre, Mark - Niedre_Lab/Josh/Papers and Conferences/NIR 1/Data/Mice/20220223__OTL38_Prelabeled_L1210A_Tail_try_5/Processed_Data_and_Figures_relThresh_5_5/20220223__OTL38_Prelabeled_L1210A_Tail_try_5_proc_relThresh_5_5.mat');
OTL38prelabeled3SNR = 20*log10(prelabeledL1210A3.fwd_peaks(1).pks./meanMouseNoise);

%OTL38 clearance scans (20220724) 

preOTL38Baseline = load('Data/Mice/20220724 OTL38 Clearance/20220724_Baseline_Pre_2.5ug_OTL38_Tail_proc_relThresh_5_5.mat');
preOTL38BaselineBackground = -preOTL38Baseline.data(:,2);
preOTL38BaselineNoise = preOTL38Baseline.noise(2);

postOTL38_3Hours = load('Data/Mice/20220724 OTL38 Clearance/20220724_3hrs_Post_2.5ug_OTL38_Tail_proc_relThresh_5_5.mat');
postOTL38_3HoursBackground = -postOTL38_3Hours.data(:,2);
postOTL38_3HoursNoise = postOTL38_3Hours.noise(2);

postOTL38_6Hours = load('Data/Mice/20220724 OTL38 Clearance/20220724_6hrs_Post_2.5ug_OTL38_Tail_proc_relThresh_5_5.mat');
postOTL38_6HoursBackground = -postOTL38_6Hours.data(:,2);
postOTL38_6HoursNoise = postOTL38_6Hours.noise(1);%Using Probe 1 noise instead!!!!!!!

postOTL38_9Hours = load('Data/Mice/20220724 OTL38 Clearance/20220724_9hrs_Post_2.5ug_OTL38_Tail_proc_relThresh_5_5.mat');
postOTL38_9HoursBackground = -postOTL38_9Hours.data(:,2);
postOTL38_9HoursNoise = postOTL38_9Hours.noise(2);

postOTL38_12Hours = load('Data/Mice/20220724 OTL38 Clearance/20220724_12hrs_Post_2.5ug_OTL38_Tail_Retape_proc_relThresh_5_5.mat');
postOTL38_12HoursBackground = -postOTL38_12Hours.data(:,2);
postOTL38_12HoursNoise = postOTL38_12Hours.noise(2);

postOTL38_24Hours = load('Data/Mice/20220724 OTL38 Clearance/20220724_24hrs_Post_2.5ug_OTL38_Tail_proc_relThresh_5_5.mat');
postOTL38_24HoursBackground = -postOTL38_24Hours.data(:,2);
postOTL38_24HoursNoise = postOTL38_24Hours.noise(2);

postOTL38_24Hours_2 = load('Data/Mice/20220724 OTL38 Clearance/20220724_24hrs_Post_2.5ug_OTL38_Tail_2_proc_relThresh_5_5.mat');
postOTL38_24_2HoursBackground = -postOTL38_24Hours_2.data(:,2);
postOTL38_24_2HoursNoise = postOTL38_24Hours_2.noise(2);

%OTL38 clearance scans (20220802) 

preOTL38Baseline_2 = load('Data/Mice/20220802 OTL38 Clearance/20220802_Baseline_Pre_2.5ug_OTL38_Tail_proc_relThresh_5_5.mat');
preOTL38BaselineBackground_2 = -preOTL38Baseline_2.data(:,2);
preOTL38BaselineNoise_2 = preOTL38Baseline_2.noise(2);

postOTL38_3Hours_2 = load('Data/Mice/20220802 OTL38 Clearance/20220802_3hrs_Post_2.5ug_OTL38_Tail_proc_relThresh_5_5.mat');
postOTL38_3HoursBackground_2 = -postOTL38_3Hours_2.data(:,2);
postOTL38_3HoursNoise_2 = postOTL38_3Hours_2.noise(2);

postOTL38_6Hours_2 = load('Data/Mice/20220802 OTL38 Clearance/20220802_6hrs_Post_2.5ug_OTL38_Tail_proc_relThresh_5_5.mat');
postOTL38_6HoursBackground_2 = -postOTL38_6Hours_2.data(:,2);
postOTL38_6HoursNoise_2 = postOTL38_6Hours_2.noise(2);

postOTL38_9Hours_2 = load('Data/Mice/20220802 OTL38 Clearance/20220802_9hrs_Post_2.5ug_OTL38_Tail_proc_relThresh_5_5.mat');
postOTL38_9HoursBackground_2 = -postOTL38_9Hours_2.data(:,2);
postOTL38_9HoursNoise_2 = postOTL38_9Hours_2.noise(2);

postOTL38_12Hours_2 = load('Data/Mice/20220802 OTL38 Clearance/20220802_12hrs_Post_2.5ug_OTL38_Tail_proc_relThresh_5_5.mat');
postOTL38_12HoursBackground_2 = -postOTL38_12Hours_2.data(:,2);
postOTL38_12HoursNoise_2 = postOTL38_12Hours_2.noise(2);

postOTL38_24Hours_2nd = load('Data/Mice/20220802 OTL38 Clearance/20220802_24hrs_Post_2.5ug_OTL38_Tail_proc_relThresh_5_5.mat');
postOTL38_24HoursBackground_2 = -postOTL38_24Hours_2nd.data(:,2);
postOTL38_24HoursNoise_2 = postOTL38_24Hours_2nd.noise(2);

%OTL38 clearance scans (20220805) 
preOTL38Baseline_3 = load('Data/Mice/20220805 OTL38 Clearance/20220805_Baseline_Pre_2.5ug_OTL38_Tail_second_10min_proc_relThresh_5_5.mat');
preOTL38BaselineBackground_3 = -preOTL38Baseline_3.data(:,2);
preOTL38BaselineNoise_3 = preOTL38Baseline_3.noise(2);

postOTL38_3Hours_3 = load('Data/Mice/20220805 OTL38 Clearance/20220805_3hrs_Post_2.5ug_OTL38_Tail_second_10min_proc_relThresh_5_5.mat');
postOTL38_3HoursBackground_3 = -postOTL38_3Hours_3.data(:,1);
postOTL38_3HoursNoise_3 = postOTL38_3Hours_3.noise(1);

postOTL38_6Hours_3 = load('Data/Mice/20220805 OTL38 Clearance/20220805_6hrs_Post_2.5ug_OTL38_Tail_second_10mins_proc_relThresh_5_5.mat');
postOTL38_6HoursBackground_3 = -postOTL38_6Hours_3.data(:,1);
postOTL38_6HoursNoise_3 = postOTL38_6Hours_3.noise(1);

postOTL38_9Hours_3 = load('Data/Mice/20220805 OTL38 Clearance/20220805_9hrs_Post_2.5ug_OTL38_Tail_first_10min_proc_relThresh_5_5.mat');
postOTL38_9HoursBackground_3 = -postOTL38_9Hours_3.data(:,1);
postOTL38_9HoursNoise_3 = postOTL38_9Hours_3.noise(1);

postOTL38_12Hours_3 = load('Data/Mice/20220805 OTL38 Clearance/20220805_12hrs_Post_2.5ug_OTL38_Tail_second_10min_proc_relThresh_5_5.mat');
postOTL38_12HoursBackground_3 = -postOTL38_12Hours_3.data(:,1);
postOTL38_12HoursNoise_3 = postOTL38_12Hours_3.noise(1);

postOTL38_24Hours_3 = load('Data/Mice/20220805 OTL38 Clearance/20220805_24hrs_Post_2.5ug_OTL38_Tail_second_10min_proc_relThresh_5_5.mat');
postOTL38_24HoursBackground_3 = -postOTL38_24Hours_3.data(:,2);
postOTL38_24HoursNoise_3 = postOTL38_24Hours_3.noise(2);

%OTL38 Clearance over time calculations (first scan)
postOTL38_3HoursNoiseRatio = postOTL38_3HoursNoise/preOTL38BaselineNoise;
postOTL38_3HoursBackgroundRatio = mean(postOTL38_3HoursBackground)/mean(preOTL38BaselineBackground);


postOTL38_6HoursNoiseRatio = postOTL38_6HoursNoise/preOTL38BaselineNoise;
postOTL38_6HoursBackgroundRatio = mean(postOTL38_6HoursBackground)/mean(preOTL38BaselineBackground);

postOTL38_9HoursNoiseRatio = postOTL38_9HoursNoise/preOTL38BaselineNoise;
postOTL38_9HoursBackgroundRatio = mean(postOTL38_9HoursBackground)/mean(preOTL38BaselineBackground);

postOTL38_12HoursNoiseRatio = postOTL38_12HoursNoise/preOTL38BaselineNoise;
postOTL38_12HoursBackgroundRatio = mean(postOTL38_12HoursBackground)/mean(preOTL38BaselineBackground);

postOTL38_24_2HoursNoiseRatio = postOTL38_24_2HoursNoise/preOTL38BaselineNoise;
postOTL38_24_2HoursBackgroundRatio = mean(postOTL38_24_2HoursBackground)/mean(preOTL38BaselineBackground);

%OTL38 Clearance over time calculations (second scan)
postOTL38_3HoursNoiseRatio_2 = postOTL38_3HoursNoise_2/preOTL38BaselineNoise_2;
postOTL38_3HoursBackgroundRatio_2 = mean(postOTL38_3HoursBackground_2)/mean(preOTL38BaselineBackground_2);


postOTL38_6HoursNoiseRatio_2 = postOTL38_6HoursNoise_2/preOTL38BaselineNoise_2;
postOTL38_6HoursBackgroundRatio_2 = mean(postOTL38_6HoursBackground_2)/mean(preOTL38BaselineBackground_2);

postOTL38_9HoursNoiseRatio_2 = postOTL38_9HoursNoise_2/preOTL38BaselineNoise_2;
postOTL38_9HoursBackgroundRatio_2 = mean(postOTL38_9HoursBackground_2)/mean(preOTL38BaselineBackground_2);

postOTL38_12HoursNoiseRatio_2 = postOTL38_12HoursNoise_2/preOTL38BaselineNoise_2;
postOTL38_12HoursBackgroundRatio_2 = mean(postOTL38_12HoursBackground_2)/mean(preOTL38BaselineBackground_2);

postOTL38_24HoursNoiseRatio_2 = postOTL38_24HoursNoise_2/preOTL38BaselineNoise_2;
postOTL38_24HoursBackgroundRatio_2 = mean(postOTL38_24HoursBackground_2)/mean(preOTL38BaselineBackground_2);

%OTL38 Clearance over time calculations (third scan)
postOTL38_3HoursNoiseRatio_3 = postOTL38_3HoursNoise_3/preOTL38BaselineNoise_3;
postOTL38_3HoursBackgroundRatio_3 = mean(postOTL38_3HoursBackground_3)/mean(preOTL38BaselineBackground_3);


postOTL38_6HoursNoiseRatio_3 = postOTL38_6HoursNoise_3/preOTL38BaselineNoise_3;
postOTL38_6HoursBackgroundRatio_3 = mean(postOTL38_6HoursBackground_3)/mean(preOTL38BaselineBackground_3);

postOTL38_9HoursNoiseRatio_3 = postOTL38_9HoursNoise_3/preOTL38BaselineNoise_3;
postOTL38_9HoursBackgroundRatio_3 = mean(postOTL38_9HoursBackground_3)/mean(preOTL38BaselineBackground_3);

postOTL38_12HoursNoiseRatio_3 = postOTL38_12HoursNoise_3/preOTL38BaselineNoise_3;
postOTL38_12HoursBackgroundRatio_3 = mean(postOTL38_12HoursBackground_3)/mean(preOTL38BaselineBackground_3);

postOTL38_24HoursNoiseRatio_3 = postOTL38_24HoursNoise_3/preOTL38BaselineNoise_3;
postOTL38_24HoursBackgroundRatio_3 = mean(postOTL38_24HoursBackground_3)/mean(preOTL38BaselineBackground_3);

%Finding the average and std of the 3 mice for the OTL38 clearance scans
meanPostOTL38_3HoursBackgroundRatio = mean([postOTL38_3HoursBackgroundRatio postOTL38_3HoursBackgroundRatio_2 postOTL38_3HoursBackgroundRatio_3]); 
stdPostOTL38_3HoursBackgroundRatio = std([postOTL38_3HoursBackgroundRatio postOTL38_3HoursBackgroundRatio_2 postOTL38_3HoursBackgroundRatio_3]); 

meanPostOTL38_6HoursBackgroundRatio = mean([postOTL38_6HoursBackgroundRatio postOTL38_6HoursBackgroundRatio_2 postOTL38_6HoursBackgroundRatio_3]);
stdPostOTL38_6HoursBackgroundRatio = std([postOTL38_6HoursBackgroundRatio postOTL38_6HoursBackgroundRatio_2 postOTL38_6HoursBackgroundRatio_3]);

meanPostOTL38_9HoursBackgroundRatio = mean([postOTL38_9HoursBackgroundRatio postOTL38_9HoursBackgroundRatio_2 postOTL38_9HoursBackgroundRatio_3]);
stdPostOTL38_9HoursBackgroundRatio = std([postOTL38_9HoursBackgroundRatio postOTL38_9HoursBackgroundRatio_2 postOTL38_9HoursBackgroundRatio_3]);

meanPostOTL38_12HoursBackgroundRatio = mean([postOTL38_12HoursBackgroundRatio postOTL38_12HoursBackgroundRatio_2 postOTL38_12HoursBackgroundRatio_3]);
stdPostOTL38_12HoursBackgroundRatio = std([postOTL38_12HoursBackgroundRatio postOTL38_12HoursBackgroundRatio_2 postOTL38_12HoursBackgroundRatio_3]);

meanPostOTL38_24HoursBackgroundRatio = mean([postOTL38_24_2HoursBackgroundRatio postOTL38_24HoursBackgroundRatio_2 postOTL38_24HoursBackgroundRatio_3]);
stdPostOTL38_24HoursBackgroundRatio = std([postOTL38_24_2HoursBackgroundRatio postOTL38_24HoursBackgroundRatio_2 postOTL38_24HoursBackgroundRatio_3]);

meanPostOTL38_3HoursNoiseRatio = mean([postOTL38_3HoursNoiseRatio postOTL38_3HoursNoiseRatio_2 postOTL38_3HoursNoiseRatio_3]);
stdPostOTL38_3HoursNoiseRatio = std([postOTL38_3HoursNoiseRatio postOTL38_3HoursNoiseRatio_2 postOTL38_3HoursNoiseRatio_3]);

meanPostOTL38_6HoursNoiseRatio = mean([postOTL38_6HoursNoiseRatio postOTL38_6HoursNoiseRatio_2 postOTL38_6HoursNoiseRatio_3]);
stdPostOTL38_6HoursNoiseRatio = std([postOTL38_6HoursNoiseRatio postOTL38_6HoursNoiseRatio_2 postOTL38_6HoursNoiseRatio_3]);

meanPostOTL38_9HoursNoiseRatio = mean([postOTL38_9HoursNoiseRatio postOTL38_9HoursNoiseRatio_2 postOTL38_9HoursNoiseRatio_3]);
stdPostOTL38_9HoursNoiseRatio = std([postOTL38_9HoursNoiseRatio postOTL38_9HoursNoiseRatio_2 postOTL38_9HoursNoiseRatio_3]);

meanPostOTL38_12HoursNoiseRatio = mean([postOTL38_12HoursNoiseRatio postOTL38_12HoursNoiseRatio_2 postOTL38_12HoursNoiseRatio_3]);
stdPostOTL38_12HoursNoiseRatio = std([postOTL38_12HoursNoiseRatio postOTL38_12HoursNoiseRatio_2 postOTL38_12HoursNoiseRatio_3]);

meanPostOTL38_24HoursNoiseRatio = mean([postOTL38_24_2HoursNoiseRatio postOTL38_24HoursNoiseRatio_2 postOTL38_24HoursNoiseRatio_3]);
stdPostOTL38_24HoursNoiseRatio = std([postOTL38_24_2HoursNoiseRatio postOTL38_24HoursNoiseRatio_2 postOTL38_24HoursNoiseRatio_3]);


%Calculating noise and background for different time points post OTL38 clearance for the original mouse control scans (using mean of three OTL38 mice background ratio) 
% [controlMouse1Noise3HoursPostOTL38,controlMouse1Background3HoursPostOTL38] = getBackgroundAndNoise(mouseControl_1.data,meanPostOTL38_3HoursBackgroundRatio);
% [controlMouse2Noise3HoursPostOTL38,controlMouse2Background3HoursPostOTL38] = getBackgroundAndNoise(mouseControl_2.data,meanPostOTL38_3HoursBackgroundRatio);
% [controlMouse3Noise3HoursPostOTL38,controlMouse3Background3HoursPostOTL38] = getBackgroundAndNoise(mouseControl_3.data,meanPostOTL38_3HoursBackgroundRatio);
% meanControlMouseNoise3HoursPostOTL38 = mean([controlMouse1Noise3HoursPostOTL38(2) controlMouse2Noise3HoursPostOTL38(2) controlMouse3Noise3HoursPostOTL38(2)]); %Probe 2
% stdControlMouseNoise3HoursPostOTL38 = std([controlMouse1Noise3HoursPostOTL38(2) controlMouse2Noise3HoursPostOTL38(2) controlMouse3Noise3HoursPostOTL38(2)]); %Probe 2
% meanControlMouseBackground3HoursPostOTL38 = mean([controlMouse1Background3HoursPostOTL38(2) controlMouse2Background3HoursPostOTL38(2) controlMouse3Background3HoursPostOTL38(2)]);
% stdControlMouseBackground3HoursPostOTL38 = std([controlMouse1Background3HoursPostOTL38(2) controlMouse2Background3HoursPostOTL38(2) controlMouse3Background3HoursPostOTL38(2)]);
% 
% controlMouse1CalculatedNoise3HoursRatio = controlMouse1Noise3HoursPostOTL38(2)/mouseControl_1Noise;
% controlMouse2CalculatedNoise3HoursRatio = controlMouse2Noise3HoursPostOTL38(2)/mouseControl_2Noise;
% controlMouse3CalculatedNoise3HoursRatio = controlMouse3Noise3HoursPostOTL38(2)/mouseControl_3Noise;
% meanControlMouseCaculatedNoise3HoursPostOTL38Ratio = mean([controlMouse1CalculatedNoise3HoursRatio controlMouse2CalculatedNoise3HoursRatio controlMouse3CalculatedNoise3HoursRatio]);
% stdControlMouseCaculatedNoise3HoursPostOTL38Ratio = std([controlMouse1CalculatedNoise3HoursRatio controlMouse2CalculatedNoise3HoursRatio controlMouse3CalculatedNoise3HoursRatio]);
% 
% controlMouse1CalculatedBackground3HoursRatio = mean(controlMouse1Background3HoursPostOTL38(2))/mouseControl_1Background;
% controlMouse2CalculatedBackground3HoursRatio = mean(controlMouse2Background3HoursPostOTL38(2))/mouseControl_2Background;
% controlMouse3CalculatedBackground3HoursRatio = mean(controlMouse3Background3HoursPostOTL38(2))/mouseControl_3Background;
% meanControlMouseCaculatedBackground3HoursPostOTL38Ratio = mean([controlMouse1CalculatedBackground3HoursRatio controlMouse2CalculatedBackground3HoursRatio controlMouse3CalculatedBackground3HoursRatio]);
% stdControlMouseCaculatedBackground3HoursPostOTL38Ratio = std([controlMouse1CalculatedBackground3HoursRatio controlMouse2CalculatedBackground3HoursRatio controlMouse3CalculatedBackground3HoursRatio]);
% 
% 
% [controlMouse1Noise6HoursPostOTL38,controlMouse1Background6HoursPostOTL38] = getBackgroundAndNoise(mouseControl_1.data,meanPostOTL38_6HoursBackgroundRatio);
% [controlMouse2Noise6HoursPostOTL38,controlMouse2Background6HoursPostOTL38] = getBackgroundAndNoise(mouseControl_2.data,meanPostOTL38_6HoursBackgroundRatio);
% [controlMouse3Noise6HoursPostOTL38,controlMouse3Background6HoursPostOTL38] = getBackgroundAndNoise(mouseControl_3.data,meanPostOTL38_6HoursBackgroundRatio);
% meanControlMouseNoise6HoursPostOTL38 = mean([controlMouse1Noise6HoursPostOTL38(2) controlMouse2Noise6HoursPostOTL38(2) controlMouse3Noise6HoursPostOTL38(2)]);
% stdControlMouseNoise6HoursPostOTL38 = std([controlMouse1Noise6HoursPostOTL38(2) controlMouse2Noise6HoursPostOTL38(2) controlMouse3Noise6HoursPostOTL38(2)]);
% meanControlMouseNoise6HoursPostOTL38Ratio = meanControlMouseNoise6HoursPostOTL38/meanMouseNoise;
% meanControlMouseBackground6HoursPostOTL38 = mean([controlMouse1Background6HoursPostOTL38(2) controlMouse2Background6HoursPostOTL38(2) controlMouse3Background6HoursPostOTL38(2)]);
% stdControlMouseBackground6HoursPostOTL38 = std([controlMouse1Background6HoursPostOTL38(2) controlMouse2Background6HoursPostOTL38(2) controlMouse3Background6HoursPostOTL38(2)]);
% 
% controlMouse1CalculatedNoise6HoursRatio = controlMouse1Noise6HoursPostOTL38(2)/mouseControl_1Noise;
% controlMouse2CalculatedNoise6HoursRatio = controlMouse2Noise6HoursPostOTL38(2)/mouseControl_2Noise;
% controlMouse3CalculatedNoise6HoursRatio = controlMouse3Noise6HoursPostOTL38(2)/mouseControl_3Noise;
% meanControlMouseCaculatedNoise6HoursPostOTL38Ratio = mean([controlMouse1CalculatedNoise6HoursRatio controlMouse2CalculatedNoise6HoursRatio controlMouse3CalculatedNoise6HoursRatio]);
% stdControlMouseCaculatedNoise6HoursPostOTL38Ratio = std([controlMouse1CalculatedNoise6HoursRatio controlMouse2CalculatedNoise6HoursRatio controlMouse3CalculatedNoise6HoursRatio]);
% 
% controlMouse1CalculatedBackground6HoursRatio = mean(controlMouse1Background6HoursPostOTL38(2))/mouseControl_1Background;
% controlMouse2CalculatedBackground6HoursRatio = mean(controlMouse2Background6HoursPostOTL38(2))/mouseControl_2Background;
% controlMouse3CalculatedBackground6HoursRatio = mean(controlMouse3Background6HoursPostOTL38(2))/mouseControl_3Background;
% meanControlMouseCaculatedBackground6HoursPostOTL38Ratio = mean([controlMouse1CalculatedBackground6HoursRatio controlMouse2CalculatedBackground6HoursRatio controlMouse3CalculatedBackground6HoursRatio]);
% stdControlMouseCaculatedBackground6HoursPostOTL38Ratio = std([controlMouse1CalculatedBackground6HoursRatio controlMouse2CalculatedBackground6HoursRatio controlMouse3CalculatedBackground6HoursRatio]);
% 
% 
% [controlMouse1Noise9HoursPostOTL38,controlMouse1Background9HoursPostOTL38] = getBackgroundAndNoise(mouseControl_1.data,meanPostOTL38_9HoursBackgroundRatio);
% [controlMouse2Noise9HoursPostOTL38,controlMouse2Background9HoursPostOTL38] = getBackgroundAndNoise(mouseControl_2.data,meanPostOTL38_9HoursBackgroundRatio);
% [controlMouse3Noise9HoursPostOTL38,controlMouse3Background9HoursPostOTL38] = getBackgroundAndNoise(mouseControl_3.data,meanPostOTL38_9HoursBackgroundRatio);
% meanControlMouseNoise9HoursPostOTL38 = mean([controlMouse1Noise9HoursPostOTL38(2) controlMouse2Noise9HoursPostOTL38(2) controlMouse3Noise9HoursPostOTL38(2)]);
% stdControlMouseNoise9HoursPostOTL38 = std([controlMouse1Noise9HoursPostOTL38(2) controlMouse2Noise9HoursPostOTL38(2) controlMouse3Noise9HoursPostOTL38(2)]);
% meanControlMouseNoise9HoursPostOTL38Ratio = meanControlMouseNoise9HoursPostOTL38/meanMouseNoise;
% meanControlMouseBackground9HoursPostOTL38 = mean([controlMouse1Background9HoursPostOTL38(2) controlMouse2Background9HoursPostOTL38(2) controlMouse3Background9HoursPostOTL38(2)]);
% stdControlMouseBackground9HoursPostOTL38 = std([controlMouse1Background9HoursPostOTL38(2) controlMouse2Background9HoursPostOTL38(2) controlMouse3Background9HoursPostOTL38(2)]);
% 
% controlMouse1CalculatedNoise9HoursRatio = controlMouse1Noise9HoursPostOTL38(2)/mouseControl_1Noise;
% controlMouse2CalculatedNoise9HoursRatio = controlMouse2Noise9HoursPostOTL38(2)/mouseControl_2Noise;
% controlMouse3CalculatedNoise9HoursRatio = controlMouse3Noise9HoursPostOTL38(2)/mouseControl_3Noise;
% meanControlMouseCaculatedNoise9HoursPostOTL38Ratio = mean([controlMouse1CalculatedNoise9HoursRatio controlMouse2CalculatedNoise9HoursRatio controlMouse3CalculatedNoise9HoursRatio]);
% stdControlMouseCaculatedNoise9HoursPostOTL38Ratio = std([controlMouse1CalculatedNoise9HoursRatio controlMouse2CalculatedNoise9HoursRatio controlMouse3CalculatedNoise9HoursRatio]);
% 
% controlMouse1CalculatedBackground9HoursRatio = mean(controlMouse1Background9HoursPostOTL38(2))/mouseControl_1Background;
% controlMouse2CalculatedBackground9HoursRatio = mean(controlMouse2Background9HoursPostOTL38(2))/mouseControl_2Background;
% controlMouse3CalculatedBackground9HoursRatio = mean(controlMouse3Background9HoursPostOTL38(2))/mouseControl_3Background;
% meanControlMouseCaculatedBackground9HoursPostOTL38Ratio = mean([controlMouse1CalculatedBackground9HoursRatio controlMouse2CalculatedBackground9HoursRatio controlMouse3CalculatedBackground9HoursRatio]);
% stdControlMouseCaculatedBackground9HoursPostOTL38Ratio = std([controlMouse1CalculatedBackground9HoursRatio controlMouse2CalculatedBackground9HoursRatio controlMouse3CalculatedBackground9HoursRatio]);
% 
% [controlMouse1Noise12HoursPostOTL38,controlMouse1Background12HoursPostOTL38] = getBackgroundAndNoise(mouseControl_1.data,meanPostOTL38_12HoursBackgroundRatio);
% [controlMouse2Noise12HoursPostOTL38,controlMouse2Background12HoursPostOTL38] = getBackgroundAndNoise(mouseControl_2.data,meanPostOTL38_12HoursBackgroundRatio);
% [controlMouse3Noise12HoursPostOTL38,controlMouse3Background12HoursPostOTL38] = getBackgroundAndNoise(mouseControl_3.data,meanPostOTL38_12HoursBackgroundRatio);
% meanControlMouseNoise12HoursPostOTL38 = mean([controlMouse1Noise12HoursPostOTL38(2) controlMouse2Noise12HoursPostOTL38(2) controlMouse3Noise12HoursPostOTL38(2)]);
% stdControlMouseNoise12HoursPostOTL38 = std([controlMouse1Noise12HoursPostOTL38(2) controlMouse2Noise12HoursPostOTL38(2) controlMouse3Noise12HoursPostOTL38(2)]);
% meanControlMouseNoise12HoursPostOTL38Ratio = meanControlMouseNoise12HoursPostOTL38/meanMouseNoise;
% meanControlMouseBackground12HoursPostOTL38 = mean([controlMouse1Background12HoursPostOTL38(2) controlMouse2Background12HoursPostOTL38(2) controlMouse3Background12HoursPostOTL38(2)]);
% stdControlMouseBackground12HoursPostOTL38 = std([controlMouse1Background12HoursPostOTL38(2) controlMouse2Background12HoursPostOTL38(2) controlMouse3Background12HoursPostOTL38(2)]);
% 
% controlMouse1CalculatedNoise12HoursRatio = controlMouse1Noise12HoursPostOTL38(2)/mouseControl_1Noise;
% controlMouse2CalculatedNoise12HoursRatio = controlMouse2Noise12HoursPostOTL38(2)/mouseControl_2Noise;
% controlMouse3CalculatedNoise12HoursRatio = controlMouse3Noise12HoursPostOTL38(2)/mouseControl_3Noise;
% meanControlMouseCaculatedNoise12HoursPostOTL38Ratio = mean([controlMouse1CalculatedNoise12HoursRatio controlMouse2CalculatedNoise12HoursRatio controlMouse3CalculatedNoise12HoursRatio]);
% stdControlMouseCaculatedNoise12HoursPostOTL38Ratio = std([controlMouse1CalculatedNoise12HoursRatio controlMouse2CalculatedNoise12HoursRatio controlMouse3CalculatedNoise12HoursRatio]);
% 
% controlMouse1CalculatedBackground12HoursRatio = mean(controlMouse1Background12HoursPostOTL38(2))/mouseControl_1Background;
% controlMouse2CalculatedBackground12HoursRatio = mean(controlMouse2Background12HoursPostOTL38(2))/mouseControl_2Background;
% controlMouse3CalculatedBackground12HoursRatio = mean(controlMouse3Background12HoursPostOTL38(2))/mouseControl_3Background;
% meanControlMouseCaculatedBackground12HoursPostOTL38Ratio = mean([controlMouse1CalculatedBackground12HoursRatio controlMouse2CalculatedBackground12HoursRatio controlMouse3CalculatedBackground12HoursRatio]);
% stdControlMouseCaculatedBackground12HoursPostOTL38Ratio = std([controlMouse1CalculatedBackground12HoursRatio controlMouse2CalculatedBackground12HoursRatio controlMouse3CalculatedBackground12HoursRatio]);
% 
% [controlMouse1Noise24HoursPostOTL38,controlMouse1Background24HoursPostOTL38] = getBackgroundAndNoise(mouseControl_1.data,meanPostOTL38_24HoursBackgroundRatio);
% [controlMouse2Noise24HoursPostOTL38,controlMouse2Background24HoursPostOTL38] = getBackgroundAndNoise(mouseControl_2.data,meanPostOTL38_24HoursBackgroundRatio);
% [controlMouse3Noise24HoursPostOTL38,controlMouse3Background24HoursPostOTL38] = getBackgroundAndNoise(mouseControl_3.data,meanPostOTL38_24HoursBackgroundRatio);
% meanControlMouseNoise24HoursPostOTL38 = mean([controlMouse1Noise24HoursPostOTL38(2) controlMouse2Noise24HoursPostOTL38(2) controlMouse3Noise24HoursPostOTL38(2)]);
% stdControlMouseNoise24HoursPostOTL38 = std([controlMouse1Noise24HoursPostOTL38(2) controlMouse2Noise24HoursPostOTL38(2) controlMouse3Noise24HoursPostOTL38(2)]);
% meanControlMouseNoise24_2HoursPostOTL38Ratio = meanControlMouseNoise24HoursPostOTL38/meanMouseNoise;
% meanControlMouseBackground24HoursPostOTL38 = mean([controlMouse1Background24HoursPostOTL38(2) controlMouse2Background24HoursPostOTL38(2) controlMouse3Background24HoursPostOTL38(2)]);
% stdControlMouseBackground24HoursPostOTL38 = std([controlMouse1Background24HoursPostOTL38(2) controlMouse2Background24HoursPostOTL38(2) controlMouse3Background24HoursPostOTL38(2)]);
% 
% controlMouse1CalculatedNoise24HoursRatio = controlMouse1Noise24HoursPostOTL38(2)/mouseControl_1Noise;
% controlMouse2CalculatedNoise24HoursRatio = controlMouse2Noise24HoursPostOTL38(2)/mouseControl_2Noise;
% controlMouse3CalculatedNoise24HoursRatio = controlMouse3Noise24HoursPostOTL38(2)/mouseControl_3Noise;
% meanControlMouseCaculatedNoise24HoursPostOTL38Ratio = mean([controlMouse1CalculatedNoise24HoursRatio controlMouse2CalculatedNoise24HoursRatio controlMouse3CalculatedNoise24HoursRatio]);
% stdControlMouseCaculatedNoise24HoursPostOTL38Ratio = std([controlMouse1CalculatedNoise24HoursRatio controlMouse2CalculatedNoise24HoursRatio controlMouse3CalculatedNoise24HoursRatio]);
% 
% controlMouse1CalculatedBackground24HoursRatio = mean(controlMouse1Background24HoursPostOTL38(2))/mouseControl_1Background;
% controlMouse2CalculatedBackground24HoursRatio = mean(controlMouse2Background24HoursPostOTL38(2))/mouseControl_2Background;
% controlMouse3CalculatedBackground24HoursRatio = mean(controlMouse3Background24HoursPostOTL38(2))/mouseControl_3Background;
% meanControlMouseCaculatedBackground24HoursPostOTL38Ratio = mean([controlMouse1CalculatedBackground24HoursRatio controlMouse2CalculatedBackground24HoursRatio controlMouse3CalculatedBackground24HoursRatio]);
% stdControlMouseCaculatedBackground24HoursPostOTL38Ratio = std([controlMouse1CalculatedBackground24HoursRatio controlMouse2CalculatedBackground24HoursRatio controlMouse3CalculatedBackground24HoursRatio]);

%Calculating noise and background for different time points post OTL38 clearance for the original mouse control scans (using each background ratio (control mouse 1 -> OTL38 mouse 1 etc.)
[controlMouse1Noise3HoursPostOTL38,controlMouse1Background3HoursPostOTL38] = getBackgroundAndNoise(mouseControl_1.data,postOTL38_3HoursBackgroundRatio);
[controlMouse2Noise3HoursPostOTL38,controlMouse2Background3HoursPostOTL38] = getBackgroundAndNoise(mouseControl_2.data,postOTL38_3HoursBackgroundRatio_2);
[controlMouse3Noise3HoursPostOTL38,controlMouse3Background3HoursPostOTL38] = getBackgroundAndNoise(mouseControl_3.data,postOTL38_3HoursBackgroundRatio_3);
meanControlMouseNoise3HoursPostOTL38 = mean([controlMouse1Noise3HoursPostOTL38(2) controlMouse2Noise3HoursPostOTL38(2) controlMouse3Noise3HoursPostOTL38(2)]); %Probe 2
stdControlMouseNoise3HoursPostOTL38 = std([controlMouse1Noise3HoursPostOTL38(2) controlMouse2Noise3HoursPostOTL38(2) controlMouse3Noise3HoursPostOTL38(2)]); %Probe 2
meanControlMouseBackground3HoursPostOTL38 = mean([controlMouse1Background3HoursPostOTL38(2) controlMouse2Background3HoursPostOTL38(2) controlMouse3Background3HoursPostOTL38(2)]);
stdControlMouseBackground3HoursPostOTL38 = std([controlMouse1Background3HoursPostOTL38(2) controlMouse2Background3HoursPostOTL38(2) controlMouse3Background3HoursPostOTL38(2)]);

controlMouse1CalculatedNoise3HoursRatio = controlMouse1Noise3HoursPostOTL38(2)/mouseControl_1Noise;
controlMouse2CalculatedNoise3HoursRatio = controlMouse2Noise3HoursPostOTL38(2)/mouseControl_2Noise;
controlMouse3CalculatedNoise3HoursRatio = controlMouse3Noise3HoursPostOTL38(2)/mouseControl_3Noise;
meanControlMouseCaculatedNoise3HoursPostOTL38Ratio = mean([controlMouse1CalculatedNoise3HoursRatio controlMouse2CalculatedNoise3HoursRatio controlMouse3CalculatedNoise3HoursRatio]);
stdControlMouseCaculatedNoise3HoursPostOTL38Ratio = std([controlMouse1CalculatedNoise3HoursRatio controlMouse2CalculatedNoise3HoursRatio controlMouse3CalculatedNoise3HoursRatio]);

controlMouse1CalculatedBackground3HoursRatio = mean(controlMouse1Background3HoursPostOTL38(2))/mouseControl_1Background;
controlMouse2CalculatedBackground3HoursRatio = mean(controlMouse2Background3HoursPostOTL38(2))/mouseControl_2Background;
controlMouse3CalculatedBackground3HoursRatio = mean(controlMouse3Background3HoursPostOTL38(2))/mouseControl_3Background;
meanControlMouseCaculatedBackground3HoursPostOTL38Ratio = mean([controlMouse1CalculatedBackground3HoursRatio controlMouse2CalculatedBackground3HoursRatio controlMouse3CalculatedBackground3HoursRatio]);
stdControlMouseCaculatedBackground3HoursPostOTL38Ratio = std([controlMouse1CalculatedBackground3HoursRatio controlMouse2CalculatedBackground3HoursRatio controlMouse3CalculatedBackground3HoursRatio]);


[controlMouse1Noise6HoursPostOTL38,controlMouse1Background6HoursPostOTL38] = getBackgroundAndNoise(mouseControl_1.data,postOTL38_6HoursBackgroundRatio);
[controlMouse2Noise6HoursPostOTL38,controlMouse2Background6HoursPostOTL38] = getBackgroundAndNoise(mouseControl_2.data,postOTL38_6HoursBackgroundRatio_2);
[controlMouse3Noise6HoursPostOTL38,controlMouse3Background6HoursPostOTL38] = getBackgroundAndNoise(mouseControl_3.data,postOTL38_6HoursBackgroundRatio_3);
meanControlMouseNoise6HoursPostOTL38 = mean([controlMouse1Noise6HoursPostOTL38(2) controlMouse2Noise6HoursPostOTL38(2) controlMouse3Noise6HoursPostOTL38(2)]);
stdControlMouseNoise6HoursPostOTL38 = std([controlMouse1Noise6HoursPostOTL38(2) controlMouse2Noise6HoursPostOTL38(2) controlMouse3Noise6HoursPostOTL38(2)]);
meanControlMouseNoise6HoursPostOTL38Ratio = meanControlMouseNoise6HoursPostOTL38/meanMouseNoise;
meanControlMouseBackground6HoursPostOTL38 = mean([controlMouse1Background6HoursPostOTL38(2) controlMouse2Background6HoursPostOTL38(2) controlMouse3Background6HoursPostOTL38(2)]);
stdControlMouseBackground6HoursPostOTL38 = std([controlMouse1Background6HoursPostOTL38(2) controlMouse2Background6HoursPostOTL38(2) controlMouse3Background6HoursPostOTL38(2)]);

controlMouse1CalculatedNoise6HoursRatio = controlMouse1Noise6HoursPostOTL38(2)/mouseControl_1Noise;
controlMouse2CalculatedNoise6HoursRatio = controlMouse2Noise6HoursPostOTL38(2)/mouseControl_2Noise;
controlMouse3CalculatedNoise6HoursRatio = controlMouse3Noise6HoursPostOTL38(2)/mouseControl_3Noise;
meanControlMouseCaculatedNoise6HoursPostOTL38Ratio = mean([controlMouse1CalculatedNoise6HoursRatio controlMouse2CalculatedNoise6HoursRatio controlMouse3CalculatedNoise6HoursRatio]);
stdControlMouseCaculatedNoise6HoursPostOTL38Ratio = std([controlMouse1CalculatedNoise6HoursRatio controlMouse2CalculatedNoise6HoursRatio controlMouse3CalculatedNoise6HoursRatio]);

controlMouse1CalculatedBackground6HoursRatio = mean(controlMouse1Background6HoursPostOTL38(2))/mouseControl_1Background;
controlMouse2CalculatedBackground6HoursRatio = mean(controlMouse2Background6HoursPostOTL38(2))/mouseControl_2Background;
controlMouse3CalculatedBackground6HoursRatio = mean(controlMouse3Background6HoursPostOTL38(2))/mouseControl_3Background;
meanControlMouseCaculatedBackground6HoursPostOTL38Ratio = mean([controlMouse1CalculatedBackground6HoursRatio controlMouse2CalculatedBackground6HoursRatio controlMouse3CalculatedBackground6HoursRatio]);
stdControlMouseCaculatedBackground6HoursPostOTL38Ratio = std([controlMouse1CalculatedBackground6HoursRatio controlMouse2CalculatedBackground6HoursRatio controlMouse3CalculatedBackground6HoursRatio]);


[controlMouse1Noise9HoursPostOTL38,controlMouse1Background9HoursPostOTL38] = getBackgroundAndNoise(mouseControl_1.data,postOTL38_9HoursBackgroundRatio);
[controlMouse2Noise9HoursPostOTL38,controlMouse2Background9HoursPostOTL38] = getBackgroundAndNoise(mouseControl_2.data,postOTL38_9HoursBackgroundRatio_2);
[controlMouse3Noise9HoursPostOTL38,controlMouse3Background9HoursPostOTL38] = getBackgroundAndNoise(mouseControl_3.data,postOTL38_9HoursBackgroundRatio_3);
meanControlMouseNoise9HoursPostOTL38 = mean([controlMouse1Noise9HoursPostOTL38(2) controlMouse2Noise9HoursPostOTL38(2) controlMouse3Noise9HoursPostOTL38(2)]);
stdControlMouseNoise9HoursPostOTL38 = std([controlMouse1Noise9HoursPostOTL38(2) controlMouse2Noise9HoursPostOTL38(2) controlMouse3Noise9HoursPostOTL38(2)]);
meanControlMouseNoise9HoursPostOTL38Ratio = meanControlMouseNoise9HoursPostOTL38/meanMouseNoise;
meanControlMouseBackground9HoursPostOTL38 = mean([controlMouse1Background9HoursPostOTL38(2) controlMouse2Background9HoursPostOTL38(2) controlMouse3Background9HoursPostOTL38(2)]);
stdControlMouseBackground9HoursPostOTL38 = std([controlMouse1Background9HoursPostOTL38(2) controlMouse2Background9HoursPostOTL38(2) controlMouse3Background9HoursPostOTL38(2)]);

controlMouse1CalculatedNoise9HoursRatio = controlMouse1Noise9HoursPostOTL38(2)/mouseControl_1Noise;
controlMouse2CalculatedNoise9HoursRatio = controlMouse2Noise9HoursPostOTL38(2)/mouseControl_2Noise;
controlMouse3CalculatedNoise9HoursRatio = controlMouse3Noise9HoursPostOTL38(2)/mouseControl_3Noise;
meanControlMouseCaculatedNoise9HoursPostOTL38Ratio = mean([controlMouse1CalculatedNoise9HoursRatio controlMouse2CalculatedNoise9HoursRatio controlMouse3CalculatedNoise9HoursRatio]);
stdControlMouseCaculatedNoise9HoursPostOTL38Ratio = std([controlMouse1CalculatedNoise9HoursRatio controlMouse2CalculatedNoise9HoursRatio controlMouse3CalculatedNoise9HoursRatio]);

controlMouse1CalculatedBackground9HoursRatio = mean(controlMouse1Background9HoursPostOTL38(2))/mouseControl_1Background;
controlMouse2CalculatedBackground9HoursRatio = mean(controlMouse2Background9HoursPostOTL38(2))/mouseControl_2Background;
controlMouse3CalculatedBackground9HoursRatio = mean(controlMouse3Background9HoursPostOTL38(2))/mouseControl_3Background;
meanControlMouseCaculatedBackground9HoursPostOTL38Ratio = mean([controlMouse1CalculatedBackground9HoursRatio controlMouse2CalculatedBackground9HoursRatio controlMouse3CalculatedBackground9HoursRatio]);
stdControlMouseCaculatedBackground9HoursPostOTL38Ratio = std([controlMouse1CalculatedBackground9HoursRatio controlMouse2CalculatedBackground9HoursRatio controlMouse3CalculatedBackground9HoursRatio]);

[controlMouse1Noise12HoursPostOTL38,controlMouse1Background12HoursPostOTL38] = getBackgroundAndNoise(mouseControl_1.data,postOTL38_12HoursBackgroundRatio);
[controlMouse2Noise12HoursPostOTL38,controlMouse2Background12HoursPostOTL38] = getBackgroundAndNoise(mouseControl_2.data,postOTL38_12HoursBackgroundRatio_2);
[controlMouse3Noise12HoursPostOTL38,controlMouse3Background12HoursPostOTL38] = getBackgroundAndNoise(mouseControl_3.data,postOTL38_12HoursBackgroundRatio_3);
meanControlMouseNoise12HoursPostOTL38 = mean([controlMouse1Noise12HoursPostOTL38(2) controlMouse2Noise12HoursPostOTL38(2) controlMouse3Noise12HoursPostOTL38(2)]);
stdControlMouseNoise12HoursPostOTL38 = std([controlMouse1Noise12HoursPostOTL38(2) controlMouse2Noise12HoursPostOTL38(2) controlMouse3Noise12HoursPostOTL38(2)]);
meanControlMouseNoise12HoursPostOTL38Ratio = meanControlMouseNoise12HoursPostOTL38/meanMouseNoise;
meanControlMouseBackground12HoursPostOTL38 = mean([controlMouse1Background12HoursPostOTL38(2) controlMouse2Background12HoursPostOTL38(2) controlMouse3Background12HoursPostOTL38(2)]);
stdControlMouseBackground12HoursPostOTL38 = std([controlMouse1Background12HoursPostOTL38(2) controlMouse2Background12HoursPostOTL38(2) controlMouse3Background12HoursPostOTL38(2)]);

controlMouse1CalculatedNoise12HoursRatio = controlMouse1Noise12HoursPostOTL38(2)/mouseControl_1Noise;
controlMouse2CalculatedNoise12HoursRatio = controlMouse2Noise12HoursPostOTL38(2)/mouseControl_2Noise;
controlMouse3CalculatedNoise12HoursRatio = controlMouse3Noise12HoursPostOTL38(2)/mouseControl_3Noise;
meanControlMouseCaculatedNoise12HoursPostOTL38Ratio = mean([controlMouse1CalculatedNoise12HoursRatio controlMouse2CalculatedNoise12HoursRatio controlMouse3CalculatedNoise12HoursRatio]);
stdControlMouseCaculatedNoise12HoursPostOTL38Ratio = std([controlMouse1CalculatedNoise12HoursRatio controlMouse2CalculatedNoise12HoursRatio controlMouse3CalculatedNoise12HoursRatio]);

controlMouse1CalculatedBackground12HoursRatio = mean(controlMouse1Background12HoursPostOTL38(2))/mouseControl_1Background;
controlMouse2CalculatedBackground12HoursRatio = mean(controlMouse2Background12HoursPostOTL38(2))/mouseControl_2Background;
controlMouse3CalculatedBackground12HoursRatio = mean(controlMouse3Background12HoursPostOTL38(2))/mouseControl_3Background;
meanControlMouseCaculatedBackground12HoursPostOTL38Ratio = mean([controlMouse1CalculatedBackground12HoursRatio controlMouse2CalculatedBackground12HoursRatio controlMouse3CalculatedBackground12HoursRatio]);
stdControlMouseCaculatedBackground12HoursPostOTL38Ratio = std([controlMouse1CalculatedBackground12HoursRatio controlMouse2CalculatedBackground12HoursRatio controlMouse3CalculatedBackground12HoursRatio]);

[controlMouse1Noise24HoursPostOTL38,controlMouse1Background24HoursPostOTL38] = getBackgroundAndNoise(mouseControl_1.data,postOTL38_24_2HoursBackgroundRatio);
[controlMouse2Noise24HoursPostOTL38,controlMouse2Background24HoursPostOTL38] = getBackgroundAndNoise(mouseControl_2.data,postOTL38_24HoursBackgroundRatio_2);
[controlMouse3Noise24HoursPostOTL38,controlMouse3Background24HoursPostOTL38] = getBackgroundAndNoise(mouseControl_3.data,postOTL38_24HoursBackgroundRatio_3);
meanControlMouseNoise24HoursPostOTL38 = mean([controlMouse1Noise24HoursPostOTL38(2) controlMouse2Noise24HoursPostOTL38(2) controlMouse3Noise24HoursPostOTL38(2)]);
stdControlMouseNoise24HoursPostOTL38 = std([controlMouse1Noise24HoursPostOTL38(2) controlMouse2Noise24HoursPostOTL38(2) controlMouse3Noise24HoursPostOTL38(2)]);
meanControlMouseNoise24_2HoursPostOTL38Ratio = meanControlMouseNoise24HoursPostOTL38/meanMouseNoise;
meanControlMouseBackground24HoursPostOTL38 = mean([controlMouse1Background24HoursPostOTL38(2) controlMouse2Background24HoursPostOTL38(2) controlMouse3Background24HoursPostOTL38(2)]);
stdControlMouseBackground24HoursPostOTL38 = std([controlMouse1Background24HoursPostOTL38(2) controlMouse2Background24HoursPostOTL38(2) controlMouse3Background24HoursPostOTL38(2)]);

controlMouse1CalculatedNoise24HoursRatio = controlMouse1Noise24HoursPostOTL38(2)/mouseControl_1Noise;
controlMouse2CalculatedNoise24HoursRatio = controlMouse2Noise24HoursPostOTL38(2)/mouseControl_2Noise;
controlMouse3CalculatedNoise24HoursRatio = controlMouse3Noise24HoursPostOTL38(2)/mouseControl_3Noise;
meanControlMouseCaculatedNoise24HoursPostOTL38Ratio = mean([controlMouse1CalculatedNoise24HoursRatio controlMouse2CalculatedNoise24HoursRatio controlMouse3CalculatedNoise24HoursRatio]);
stdControlMouseCaculatedNoise24HoursPostOTL38Ratio = std([controlMouse1CalculatedNoise24HoursRatio controlMouse2CalculatedNoise24HoursRatio controlMouse3CalculatedNoise24HoursRatio]);

controlMouse1CalculatedBackground24HoursRatio = mean(controlMouse1Background24HoursPostOTL38(2))/mouseControl_1Background;
controlMouse2CalculatedBackground24HoursRatio = mean(controlMouse2Background24HoursPostOTL38(2))/mouseControl_2Background;
controlMouse3CalculatedBackground24HoursRatio = mean(controlMouse3Background24HoursPostOTL38(2))/mouseControl_3Background;
meanControlMouseCaculatedBackground24HoursPostOTL38Ratio = mean([controlMouse1CalculatedBackground24HoursRatio controlMouse2CalculatedBackground24HoursRatio controlMouse3CalculatedBackground24HoursRatio]);
stdControlMouseCaculatedBackground24HoursPostOTL38Ratio = std([controlMouse1CalculatedBackground24HoursRatio controlMouse2CalculatedBackground24HoursRatio controlMouse3CalculatedBackground24HoursRatio]);
%Calculating noise for each of the OTL38 mice at the different time points using the ratio of the higher background and the baseline scan (since it is stable, I want to show the noise and backgkround correlate if scan is stable) 
[OTL38Mouse1CalculatedNoise3Hours, OTL38Mouse1CalculatedBackground3Hours] = getBackgroundAndNoise(preOTL38Baseline.data,meanPostOTL38_3HoursBackgroundRatio);
[OTL38Mouse2CalculatedNoise3Hours, OTL38Mouse2CalculatedBackground3Hours] = getBackgroundAndNoise(preOTL38Baseline_2.data,meanPostOTL38_3HoursBackgroundRatio);
[OTL38Mouse3CalculatedNoise3Hours, OTL38Mouse3CalculatedBackground3Hours] = getBackgroundAndNoise(preOTL38Baseline_3.data,meanPostOTL38_3HoursBackgroundRatio);
OTL38Mouse1CalculatedNoise3HoursRatio = OTL38Mouse1CalculatedNoise3Hours/preOTL38BaselineNoise;
OTL38Mouse2CalculatedNoise3HoursRatio = OTL38Mouse2CalculatedNoise3Hours/preOTL38BaselineNoise_2;
OTL38Mouse3CalculatedNoise3HoursRatio = OTL38Mouse3CalculatedNoise3Hours/preOTL38BaselineNoise_3;
meanOTL38MiceCalculatedNoise3HourRatio = mean([OTL38Mouse1CalculatedNoise3HoursRatio(2) OTL38Mouse2CalculatedNoise3HoursRatio(2) OTL38Mouse3CalculatedNoise3HoursRatio(2)]);
stdOTL38MiceCalculatedNoise3HourRatio = std([OTL38Mouse1CalculatedNoise3HoursRatio(2) OTL38Mouse2CalculatedNoise3HoursRatio(2) OTL38Mouse3CalculatedNoise3HoursRatio(2)]);

[OTL38Mouse1CalculatedNoise6Hours, OTL38Mouse1CalculatedBackground6Hours] = getBackgroundAndNoise(preOTL38Baseline.data,meanPostOTL38_6HoursBackgroundRatio);
[OTL38Mouse2CalculatedNoise6Hours, OTL38Mouse2CalculatedBackground6Hours] = getBackgroundAndNoise(preOTL38Baseline_2.data,meanPostOTL38_6HoursBackgroundRatio);
[OTL38Mouse3CalculatedNoise6Hours, OTL38Mouse3CalculatedBackground6Hours] = getBackgroundAndNoise(preOTL38Baseline_3.data,meanPostOTL38_6HoursBackgroundRatio);
OTL38Mouse1CalculatedNoise6HoursRatio = OTL38Mouse1CalculatedNoise6Hours/preOTL38BaselineNoise;
OTL38Mouse2CalculatedNoise6HoursRatio = OTL38Mouse2CalculatedNoise6Hours/preOTL38BaselineNoise_2;
OTL38Mouse3CalculatedNoise6HoursRatio = OTL38Mouse3CalculatedNoise6Hours/preOTL38BaselineNoise_3;
meanOTL38MiceCalculatedNoise6HourRatio = mean([OTL38Mouse1CalculatedNoise6HoursRatio(2) OTL38Mouse2CalculatedNoise6HoursRatio(2) OTL38Mouse3CalculatedNoise6HoursRatio(2)]);
stdOTL38MiceCalculatedNoise6HourRatio = std([OTL38Mouse1CalculatedNoise6HoursRatio(2) OTL38Mouse2CalculatedNoise6HoursRatio(2) OTL38Mouse3CalculatedNoise6HoursRatio(2)]);

[OTL38Mouse1CalculatedNoise9Hours, OTL38Mouse1CalculatedBackground9Hours] = getBackgroundAndNoise(preOTL38Baseline.data,meanPostOTL38_9HoursBackgroundRatio);
[OTL38Mouse2CalculatedNoise9Hours, OTL38Mouse2CalculatedBackground9Hours] = getBackgroundAndNoise(preOTL38Baseline_2.data,meanPostOTL38_9HoursBackgroundRatio);
[OTL38Mouse3CalculatedNoise9Hours, OTL38Mouse3CalculatedBackground9Hours] = getBackgroundAndNoise(preOTL38Baseline_3.data,meanPostOTL38_9HoursBackgroundRatio);
OTL38Mouse1CalculatedNoise9HoursRatio = OTL38Mouse1CalculatedNoise9Hours/preOTL38BaselineNoise;
OTL38Mouse2CalculatedNoise9HoursRatio = OTL38Mouse2CalculatedNoise9Hours/preOTL38BaselineNoise_2;
OTL38Mouse3CalculatedNoise9HoursRatio = OTL38Mouse3CalculatedNoise9Hours/preOTL38BaselineNoise_3;
meanOTL38MiceCalculatedNoise9HourRatio = mean([OTL38Mouse1CalculatedNoise9HoursRatio(2) OTL38Mouse2CalculatedNoise9HoursRatio(2) OTL38Mouse3CalculatedNoise9HoursRatio(2)]);
stdOTL38MiceCalculatedNoise9HourRatio = std([OTL38Mouse1CalculatedNoise9HoursRatio(2) OTL38Mouse2CalculatedNoise9HoursRatio(2) OTL38Mouse3CalculatedNoise9HoursRatio(2)]);

[OTL38Mouse1CalculatedNoise12Hours, OTL38Mouse1CalculatedBackground12Hours] = getBackgroundAndNoise(preOTL38Baseline.data,meanPostOTL38_12HoursBackgroundRatio);
[OTL38Mouse2CalculatedNoise12Hours, OTL38Mouse2CalculatedBackground12Hours] = getBackgroundAndNoise(preOTL38Baseline_2.data,meanPostOTL38_12HoursBackgroundRatio);
[OTL38Mouse3CalculatedNoise12Hours, OTL38Mouse3CalculatedBackground12Hours] = getBackgroundAndNoise(preOTL38Baseline_3.data,meanPostOTL38_12HoursBackgroundRatio);
OTL38Mouse1CalculatedNoise12HoursRatio = OTL38Mouse1CalculatedNoise12Hours/preOTL38BaselineNoise;
OTL38Mouse2CalculatedNoise12HoursRatio = OTL38Mouse2CalculatedNoise12Hours/preOTL38BaselineNoise_2;
OTL38Mouse3CalculatedNoise12HoursRatio = OTL38Mouse3CalculatedNoise12Hours/preOTL38BaselineNoise_3;
meanOTL38MiceCalculatedNoise12HourRatio = mean([OTL38Mouse1CalculatedNoise12HoursRatio(2) OTL38Mouse2CalculatedNoise12HoursRatio(2) OTL38Mouse3CalculatedNoise12HoursRatio(2)]);
stdOTL38MiceCalculatedNoise12HourRatio = std([OTL38Mouse1CalculatedNoise12HoursRatio(2) OTL38Mouse2CalculatedNoise12HoursRatio(2) OTL38Mouse3CalculatedNoise12HoursRatio(2)]);

[OTL38Mouse1CalculatedNoise24Hours, OTL38Mouse1CalculatedBackground24Hours] = getBackgroundAndNoise(preOTL38Baseline.data,meanPostOTL38_24HoursBackgroundRatio);
[OTL38Mouse2CalculatedNoise24Hours, OTL38Mouse2CalculatedBackground24Hours] = getBackgroundAndNoise(preOTL38Baseline_2.data,meanPostOTL38_24HoursBackgroundRatio);
[OTL38Mouse3CalculatedNoise24Hours, OTL38Mouse3CalculatedBackground24Hours] = getBackgroundAndNoise(preOTL38Baseline_3.data,meanPostOTL38_24HoursBackgroundRatio);
OTL38Mouse1CalculatedNoise24HoursRatio = OTL38Mouse1CalculatedNoise24Hours/preOTL38BaselineNoise;
OTL38Mouse2CalculatedNoise24HoursRatio = OTL38Mouse2CalculatedNoise24Hours/preOTL38BaselineNoise_2;
OTL38Mouse3CalculatedNoise24HoursRatio = OTL38Mouse3CalculatedNoise24Hours/preOTL38BaselineNoise_3;
meanOTL38MiceCalculatedNoise24HourRatio = mean([OTL38Mouse1CalculatedNoise24HoursRatio(2) OTL38Mouse2CalculatedNoise24HoursRatio(2) OTL38Mouse3CalculatedNoise24HoursRatio(2)]);
stdOTL38MiceCalculatedNoise24HourRatio = std([OTL38Mouse1CalculatedNoise24HoursRatio(2) OTL38Mouse2CalculatedNoise24HoursRatio(2) OTL38Mouse3CalculatedNoise24HoursRatio(2)]);

%Using the clearance time data, I found the ratio of the noise compared to baseline, I used the same ratios to find what the noise would be for each of the prelabeled scans (using those baseline noise from the 3 control mouse scans to multiply the ratios)
allFwdMatchedPeakAmplitudes = [prelabeledL1210A1.fwd_peaks(1).pks' prelabeledL1210A2.fwd_peaks(1).pks' prelabeledL1210A3.fwd_peaks(1).pks'];

allFwdMatchedPeakSNR = [OTL38prelabeled1SNR' OTL38prelabeled2SNR' OTL38prelabeled3SNR']; %With regular, no OTL38 background
baselinePeaksAbove14dB = sum(allFwdMatchedPeakSNR >= 14);
baselinePeaksBelow14dB = sum(allFwdMatchedPeakSNR < 14);

allFwdMatchedPeakSNR3HoursPostOTL38 = 20*log10(allFwdMatchedPeakAmplitudes./meanControlMouseNoise3HoursPostOTL38);
postOTL383HoursPeaksAbove14dB = sum(allFwdMatchedPeakSNR3HoursPostOTL38 >= 14);
postOTL383HoursPeaksBelow14dB = sum(allFwdMatchedPeakSNR3HoursPostOTL38 < 14);

allFwdMatchedPeakSNR6HoursPostOTL38 = 20*log10(allFwdMatchedPeakAmplitudes./meanControlMouseNoise6HoursPostOTL38);
postOTL386HoursPeaksAbove14dB = sum(allFwdMatchedPeakSNR6HoursPostOTL38 >= 14);
postOTL386HoursPeaksBelow14dB = sum(allFwdMatchedPeakSNR6HoursPostOTL38 < 14);

allFwdMatchedPeakSNR9HoursPostOTL38 = 20*log10(allFwdMatchedPeakAmplitudes./meanControlMouseNoise9HoursPostOTL38);
postOTL389HoursPeaksAbove14dB = sum(allFwdMatchedPeakSNR9HoursPostOTL38 >= 14);
postOTL389HoursPeaksBelow14dB = sum(allFwdMatchedPeakSNR9HoursPostOTL38 < 14);

allFwdMatchedPeakSNR12HoursPostOTL38 = 20*log10(allFwdMatchedPeakAmplitudes./meanControlMouseNoise12HoursPostOTL38);
postOTL3812HoursPeaksAbove14dB = sum(allFwdMatchedPeakSNR12HoursPostOTL38 >= 14);
postOTL3812HoursPeaksBelow14dB = sum(allFwdMatchedPeakSNR12HoursPostOTL38 < 14);

allFwdMatchedPeakSNR24HoursPostOTL38 = 20*log10(allFwdMatchedPeakAmplitudes./meanControlMouseNoise24HoursPostOTL38);
postOTL3824HoursPeaksAbove14dB = sum(allFwdMatchedPeakSNR24HoursPostOTL38 >= 14);
postOTL3824HoursPeaksBelow14dB = sum(allFwdMatchedPeakSNR24HoursPostOTL38 < 14);


allSNRtogether = [allFwdMatchedPeakSNR' allFwdMatchedPeakSNR3HoursPostOTL38' allFwdMatchedPeakSNR6HoursPostOTL38' allFwdMatchedPeakSNR9HoursPostOTL38' allFwdMatchedPeakSNR12HoursPostOTL38' allFwdMatchedPeakSNR24HoursPostOTL38'];
[N,allSNREdges] = histcounts(allSNRtogether);




%Mean and STD of JGLI SNR 
meanMicropshereSNR = mean([microspherePhantom1SNR' microspherePhantom2SNR' microspherePhantom3SNR']);
stdMicropshereSNR = std([microspherePhantom1SNR' microspherePhantom2SNR' microspherePhantom3SNR']);

%Mean and STD of JGLI Peak Amp
meanMicropsherePeakAmp = mean([microspherePhantom1Pks' microspherePhantom2Pks' microspherePhantom3Pks']);
stdMicropsherePeakAmp = std([microspherePhantom1Pks' microspherePhantom2Pks' microspherePhantom3Pks']);

%Mean and STD of OTL38 L1210A Phantom SNR
meanOTL38L1210APhantomSNR = mean([OTL38L1210ASNR_1' OTL38L1210ASNR_2' OTL38L1210ASNR_3']);
stdOTL38L1210APhantomSNR =  std([OTL38L1210ASNR_1' OTL38L1210ASNR_2' OTL38L1210ASNR_3']);

%Mean and STD of OTL38 L1210A Phantom Peak Amp
meanOTL38L1210APhantomPeakAmp = mean([OTL38L1210APks_1' OTL38L1210APks_2' OTL38L1210APks_3']);
stdOTL38L1210APhantomPeakAmp = std([OTL38L1210APks_1' OTL38L1210APks_2' OTL38L1210APks_3']);

%Mean and STD of OTL38 SK-OV-3 Phantom SNR
meanOTL38SK_OV_3PhantomSNR = mean([OTL38SK_OV_3SNR_1' OTL38SK_OV_3SNR_2' OTL38SK_OV_3SNR_3']);
stdOTL38SK_OV_3PhantomSNR = std([OTL38SK_OV_3SNR_1' OTL38SK_OV_3SNR_2' OTL38SK_OV_3SNR_3']);

%Mean and STD of OTL38 SK-OV-3 Phantom Peak Amp
meanOTL38SK_OV_3PhantomPeakAmp = mean([OTL38SK_OV_3Pks_1' OTL38SK_OV_3Pks_2' OTL38SK_OV_3Pks_3']);
stdOTL38SK_OV_3PhantomPeakAmp = std([OTL38SK_OV_3Pks_1' OTL38SK_OV_3Pks_2' OTL38SK_OV_3Pks_3']);

%Mean and STD of OTL38 IGROV-1 Phantom SNR
meanOTL38IGROV_1PhantomSNR = mean([OTL38IGROV_1SNR_1' OTL38IGROV_1SNR_2' OTL38IGROV_1SNR_3']);
stdOTL38IGROV_1PhantomSNR = std([OTL38IGROV_1SNR_1' OTL38IGROV_1SNR_2' OTL38IGROV_1SNR_3']);

%Mean and STD of OTL38 IGROV-1 Phantom Peak Amp
meanOTL38IGROV_1PhantomPeakAmp = mean([OTL38IGROV_1Pks_1' OTL38IGROV_1Pks_2' OTL38IGROV_1Pks_3']);
stdOTL38IGROV_1PhantomPeakAmp = std([OTL38IGROV_1Pks_1' OTL38IGROV_1Pks_2' OTL38IGROV_1Pks_3']);


%Fluoresecnce values for cells and microspheres from FC Data
meanJGLIfluoresence = 19109;
stdJGLIfluoresence = 4487;

meanOTL38L1210Afluoresence  = 22101;
stdOTL38L1210Afluoresence  = 8566;

meanOTL38SK_OV_3fluoresence  = 8069;
stdOTL38SK_OV_3fluoresence  = 6122;

meanOTL38IGROV_1fluoresence  = 17552;
stdOTL38IGROV_1fluoresence  = 20442;

meanUnLabeledCellsFluorescence = mean([93.1 246 146]); 
stdUnLabeledCellsFluorescence = std([93.1 246 146]); 

%Mean fluoresence pof the peaks in the phantom for each cell type. 
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
% FIGURE 1 Background data and signal processing panel
fontSize = 40;
figure(1);
x = tiledlayout(2,2);
nexttile(1) 
plot(prelabeledL1210A1.time, -prelabeledL1210A1.data(:,1),'Color', '#E69F00','LineWidth',1.5);
hold on
plot(prelabeledL1210A1.time(prelabeledL1210A1.peaks(1).locs), prelabeledL1210A1.peaks(1).pks, 'o', 'Color', '#000000','MarkerFaceColor','#000000','MarkerEdgeColor','#000000','MarkerSize',12)
ylim([0 5000])
yticks([0, 2500,5000]);
% yticklabels({'0','','200','','400'});
xlim([160,220])
xticks([160,190,220]);
xticklabels({'','','',})
axis = gca;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
% title5 = title('Unlabeled L1210A','FontSize', 35,'FontWeight','bold','FontName','Arial');
% title5.Position = [91  200 0];
hold off
nexttile(3) 
plot(prelabeledL1210A1.time, -prelabeledL1210A1.data(:,2),'Color', '#0072B2','LineWidth',1.5);
hold on
plot(prelabeledL1210A1.time(prelabeledL1210A1.peaks(2).locs), prelabeledL1210A1.peaks(2).pks, 'o', 'Color', '#CC79A7','MarkerFaceColor','#CC79A7','MarkerEdgeColor','#CC79A7','MarkerSize',12)
ylim([0 5000])
yticks([0, 2500,5000]);
% yticklabels({'0','','200','','400'});
xlim([160,220])
xticks([160,190,220]);
xticklabels({0'','30','60',})
axis = gca;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
% title5 = title('Unlabeled L1210A','FontSize', 35,'FontWeight','bold','FontName','Arial');
% title5.Position = [91  200 0];
hold off
xlabel('Time (sec)','FontSize',fontSize,'FontWeight','bold','FontName','Arial');
nexttile(2) 
plot(prelabeledL1210A1.time, prelabeledL1210A1.data_bs(:,2),'Color', '#0072B2','LineWidth',1.5);
hold on
plot(prelabeledL1210A1.time(prelabeledL1210A1.fwd_peaks(2).locs), prelabeledL1210A1.fwd_peaks(2).pks, '>', 'Color', '#009E73','MarkerFaceColor','#009E73','MarkerEdgeColor','#009E73','MarkerSize',12)
plot(prelabeledL1210A1.time(prelabeledL1210A1.rev_peaks(2).locs), prelabeledL1210A1.rev_peaks(2).pks, '<', 'Color', '#D55E00','MarkerFaceColor','#D55E00','MarkerEdgeColor','#D55E00','MarkerSize',12)
plot(prelabeledL1210A1.time(prelabeledL1210A1.unmatched_peaks(2).locs), prelabeledL1210A1.unmatched_peaks(2).pks, 'o', 'Color', '#E69F00','MarkerFaceColor','#E69F00','MarkerEdgeColor','#E69F00','MarkerSize',12)
ylim([-100 500])
yticks([0, 250,500]);
% yticklabels({'0','','200','','400'});
xlim([160,220])
xticks([160,190,220]);
xticklabels({'0','30','60',})
axis = gca;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
% title5 = title('Unlabeled L1210A','FontSize', 35,'FontWeight','bold','FontName','Arial');
% title5.Position = [91  200 0];
ylabel(x,'NIR-DiFC Signal (nA)','FontSize',fontSize,'FontWeight','bold','FontName','Arial');
xlabel('Time (sec)','FontSize',fontSize,'FontWeight','bold','FontName','Arial');

%%FIGURE 2
%%
%Comparing mean FC intensity to mean DiFC peak Amp
markerSize = 300;
FCmeanIntensity = [meanOTL38SK_OV_3fluoresence meanOTL38IGROV_1fluoresence meanOTL38L1210Afluoresence];
DiFCmeanPeakAmp = [meanOTL38SK_OV_3PhantomPeakAmp meanOTL38IGROV_1PhantomPeakAmp meanOTL38L1210APhantomPeakAmp];
figure(2);
scatter(meanOTL38SK_OV_3PhantomPeakAmp,meanOTL38SK_OV_3fluoresence,markerSize,'filled');
hold on
scatter(meanOTL38IGROV_1PhantomPeakAmp,meanOTL38IGROV_1fluoresence,markerSize,'filled');
scatter(meanOTL38L1210APhantomPeakAmp,meanOTL38L1210Afluoresence,markerSize,'filled');
hold off;
legend({'SK-OV-3 OTL38','IGROV-1 OTL38','L1210A OTL38'},'Location','southeast')
ylabel('FC Mean Intensity');
xlabel('DiFC Mean Peak Amplitude');
axis = gca;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
box on;
ylim([0 24000]);
xlim([0 350])
%%
%Bar graph of unlabeled cells vs JGLI vs OTL38 labeled cells matched peak SNR (calculated with same run noise)
width = 0.5;
figure(3);
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
%Bar graph of unlabeled cells vs JGLI vs OTL38 labeled cells matched peak amplitude 
width = 0.5;
figure(4);
bar(1,0);
hold on
bar(2,meanMicropsherePeakAmp,width);
bar(3, meanOTL38L1210APhantomPeakAmp,width);
bar(4, meanOTL38SK_OV_3PhantomPeakAmp,width);
bar(5, meanOTL38IGROV_1PhantomPeakAmp,width);
error_microsphere = errorbar(2,meanMicropsherePeakAmp,[],stdMicropsherePeakAmp,'LineWidth',1,'CapSize',15);
error_microsphere.Color = [0 0 0];
error_OTL38L1210A = errorbar(3,meanOTL38L1210APhantomPeakAmp,[],stdOTL38L1210APhantomPeakAmp,'LineWidth',1,'CapSize',15);
error_OTL38L1210A.Color = [0 0 0];
error_OTL38SK_OV_3 = errorbar(4,meanOTL38SK_OV_3PhantomPeakAmp,[],stdOTL38SK_OV_3PhantomPeakAmp,'LineWidth',1,'CapSize',15);
error_OTL38SK_OV_3.Color = [0 0 0];
error_OTL38IGROV_1= errorbar(5,meanOTL38IGROV_1PhantomPeakAmp,[],stdOTL38IGROV_1PhantomPeakAmp,'LineWidth',1,'CapSize',15);
error_OTL38IGROV_1.Color = [0 0 0];
hold off
xticks(1:5)
ylim([0,500])
% yticks(0:5:40);
% yticklabels({'0','','10','','20','','30','','40'});
xticklabels({'Unlabeled Cells','JGLI', 'OTL38 L1210A','OTL38 SK-OV-3','OTL38 IGROV-1'});
ylabel('Matched Peak Amplitude (nA)','FontSize',40,'FontWeight','bold','FontName','Arial');
axis = gca;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;

%%
%Bar graph of unlabeled cells vs JGLI vs OTL38 labeled cells fluoresence (Taken from FC Data)
width = 0.5;
figure(5);
bar(1,meanUnLabeledCellsFluorescence);
hold on
bar(2,meanJGLIfluoresence,width);
bar(3, meanOTL38L1210Afluoresence,width);
bar(4, meanOTL38SK_OV_3fluoresence,width);
bar(5, meanOTL38IGROV_1fluoresence,width);
error_unlabeledCells = errorbar(1,meanUnLabeledCellsFluorescence,[],stdUnLabeledCellsFluorescence,'LineWidth',1,'CapSize',15);
error_unlabeledCells.Color = [0 0 0];
error_microsphere = errorbar(2,meanJGLIfluoresence,[],stdJGLIfluoresence,'LineWidth',1,'CapSize',15);
error_microsphere.Color = [0 0 0];
error_OTL38L1210A = errorbar(3,meanOTL38L1210Afluoresence,[],stdOTL38L1210Afluoresence,'LineWidth',1,'CapSize',15);
error_OTL38L1210A.Color = [0 0 0];
error_OTL38SK_OV_3 = errorbar(4,meanOTL38SK_OV_3fluoresence,[],stdOTL38SK_OV_3fluoresence,'LineWidth',1,'CapSize',15);
error_OTL38SK_OV_3.Color = [0 0 0];
error_OTL38IGROV_1= errorbar(5,meanOTL38IGROV_1fluoresence,[],stdOTL38IGROV_1fluoresence,'LineWidth',1,'CapSize',15);
error_OTL38IGROV_1.Color = [0 0 0];
hold off
xticks(1:5)
% ylim([0,40]);
% yticks(0:5:40);
% yticklabels({'0','','10','','20','','30','','40'});
xticklabels({'Unlabeled Cells','JGLI', 'OTL38 L1210A','OTL38 SK-OV-3','OTL38 IGROV-1'});
ylabel('NIR Fluorescence Intensity  (a.u.)','FontSize',40,'FontWeight','bold','FontName','Arial');
axis = gca;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;

%%
%Bar graph of unlabeled cells vs JGLI vs OTL38 labeled cells fluoresence (Taken from FC Data, ploting with Y axis log scale)
width = 0.5;
figure(6);
bar(1,meanUnLabeledCellsFluorescence);
hold on
bar(2,meanJGLIfluoresence,width);
bar(3, meanOTL38L1210Afluoresence,width);
bar(4, meanOTL38SK_OV_3fluoresence,width);
bar(5, meanOTL38IGROV_1fluoresence,width);
error_unlabeledCells = errorbar(1,meanUnLabeledCellsFluorescence,[],stdUnLabeledCellsFluorescence,'LineWidth',1,'CapSize',15);
error_unlabeledCells.Color = [0 0 0];
error_microsphere = errorbar(2,meanJGLIfluoresence,[],stdJGLIfluoresence,'LineWidth',1,'CapSize',15);
error_microsphere.Color = [0 0 0];
error_OTL38L1210A = errorbar(3,meanOTL38L1210Afluoresence,[],stdOTL38L1210Afluoresence,'LineWidth',1,'CapSize',15);
error_OTL38L1210A.Color = [0 0 0];
error_OTL38SK_OV_3 = errorbar(4,meanOTL38SK_OV_3fluoresence,[],stdOTL38SK_OV_3fluoresence,'LineWidth',1,'CapSize',15);
error_OTL38SK_OV_3.Color = [0 0 0];
error_OTL38IGROV_1= errorbar(5,meanOTL38IGROV_1fluoresence,[],stdOTL38IGROV_1fluoresence,'LineWidth',1,'CapSize',15);
error_OTL38IGROV_1.Color = [0 0 0];
hold off
xticks(1:5)
% ylim([0,40]);
% yticks(0:5:40);
% yticklabels({'0','','10','','20','','30','','40'});
set(axis, 'YScale','log')
xticklabels({'Unlabeled Cells','JGLI', 'OTL38 L1210A','OTL38 SK-OV-3','OTL38 IGROV-1'});
ylabel('NIR Fluorescence Intensity  (a.u.)','FontSize',40,'FontWeight','bold','FontName','Arial');
axis = gca;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;

%%

%Bar graph of phantom PBS vs unlabeled L1210A  and Unlabeled SK-OV-3 and Unlabeled IGROV-1 noise
width = 0.4;
figure(7);
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
figure(8);
tiledlayout(5,1);
nexttile(1) 
plot(unlabeledL1210A.time, unlabeledL1210A.data_bs(:,ProbePlot),'Color', '#0072B2','LineWidth',1.5);
hold on
plot(unlabeledL1210A.time(unlabeledL1210A.peaks(ProbePlot).locs), unlabeledL1210A.peaks(ProbePlot).pks, 'o', 'Color', '#0072B2','MarkerFaceColor','#E69F00','MarkerEdgeColor','#E69F00','MarkerSize',12)
%ylim([-50,yMax])
ylim([yMin ,yMax])
yticks([0, 100,200, 300,400,]);
yticklabels({'0','','200','','400'});
xlim([60,120])
xticks([60,90,120]);
xticklabels({'','','',})
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
% title5 = title('Unlabeled L1210A','FontSize', 35,'FontWeight','bold','FontName','Arial');
% title5.Position = [91  200 0];
hold off
nexttile(2)
plot(microspheres.time, microspheres.data_bs(:,ProbePlot),'Color', '#0072B2','LineWidth',1.5);
hold on
plot(microspheres.time(microspheres.fwd_peaks(ProbePlot).locs), microspheres.fwd_peaks(ProbePlot).pks, '>', 'Color', '#0072B2','MarkerFaceColor','#009E73','MarkerEdgeColor','#009E73','MarkerSize',12)
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
% title1 = title('JGLI (μ-spheres)','FontSize', 35,'FontWeight','bold','FontName','Arial');
% title1.Position = [140  200 0];
hold off
nexttile(3)
plot(OTL38L1210A.time, OTL38L1210A.data_bs(:,ProbePlot),'Color', '#0072B2','LineWidth',1.5);
hold on
plot(OTL38L1210A.time(OTL38L1210A.fwd_peaks(ProbePlot).locs), OTL38L1210A.fwd_peaks(ProbePlot).pks, '>', 'Color', '#0072B2','MarkerFaceColor','#009E73','MarkerEdgeColor','#009E73','MarkerSize',12)
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
% title2 = title('OTL38 L1210A','FontSize', 35,'FontWeight','bold','FontName','Arial');
% title2.Position = [208  200 0];
hold off
nexttile(4)
plot(SK_OV_3phantom1.time, SK_OV_3phantom1.data_bs(:,ProbePlot),'Color', '#0072B2','LineWidth',1.5);
hold on
plot(SK_OV_3phantom1.time(SK_OV_3phantom1.fwd_peaks(ProbePlot).locs), SK_OV_3phantom1.fwd_peaks(ProbePlot).pks, '>', 'Color', '#0072B2','MarkerFaceColor','#009E73','MarkerEdgeColor','#009E73','MarkerSize',12)
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
% title3 = title('OTL38 SK-OV-3','FontSize', 35,'FontWeight','bold','FontName','Arial');
% title3.Position = [960  200 0];
hold off
nexttile(5)
plot(IGROV_1phantom1.time, IGROV_1phantom1.data_bs(:,ProbePlot),'Color', '#0072B2','LineWidth',1.5);
hold on
plot(IGROV_1phantom1.time(IGROV_1phantom1.fwd_peaks(ProbePlot).locs), IGROV_1phantom1.fwd_peaks(ProbePlot).pks, '>', 'Color', '#0072B2','MarkerFaceColor','#009E73','MarkerEdgeColor','#009E73','MarkerSize',12)
%ylim([-50,600])
ylim([yMin ,yMax])
yticks([0, 100,200, 300,400,]);
yticklabels({'0','','200','','400'});
xlim([30,90])
xticks([30, 60,90]);
xticklabels({'0','30','60',});
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
% title4 = title('OTL38 IGROV-1','FontSize', 35,'FontWeight','bold','FontName','Arial');
% title4.Position = [70  200 0];
hold off
fig = gcf;
tl= fig.Children;
ylabel(tl, 'NIR-DiFC Signal (nA)', 'FontSize',40,'FontWeight','bold','FontName','Arial');
xlabel(tl,'Time (s)', 'FontSize', 40,'FontWeight','bold','FontName','Arial');


%FIGURE 3- Mouse Data
%%
%Pre-labeed tail, Mouse noninjection control, nonlabeled L1210A only control
Probe = 1;
figure(9);
tiledlayout(3,1);
nexttile(1)
plot(prelabled_tail_1.time, prelabled_tail_1.data_bs(:,Probe),'Color', '#0072B2','LineWidth',1);
hold on
plot(prelabled_tail_1.time(prelabled_tail_1.unmatched_peaks(Probe).locs), prelabled_tail_1.unmatched_peaks(Probe).pks, 'o', 'Color', '#0072B2','MarkerFaceColor','#E69F00','MarkerEdgeColor','#E69F00','MarkerSize',12)
plot(prelabled_tail_1.time(prelabled_tail_1.fwd_peaks(Probe).locs), prelabled_tail_1.fwd_peaks(Probe).pks, '>', 'Color', '#0072B2','MarkerFaceColor','#009E73','MarkerEdgeColor','#009E73','MarkerSize',12)
plot(prelabled_tail_1.time(prelabled_tail_1.rev_peaks(Probe).locs), prelabled_tail_1.rev_peaks(Probe).pks, '<', 'Color', '#0072B2','MarkerFaceColor','#D55E00','MarkerEdgeColor','#D55E00','MarkerSize',12)
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
nexttile(3)
plot(mouseControl_2.time, mouseControl_2.data_bs(:,1),'Color', '#0072B2','LineWidth',1);
ylim([-100,800])
yticks([-100,0, 100,200,300,400,500, 600,700,800]);
yticklabels({'','0','','','','400','','','','800'});
xlim([0,600])
xticks([0, 300,600]);
xticklabels({'0','5','10',})
% xticklabels({'','','',})
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
% title1 = title('Control','FontSize', 35,'FontWeight','bold','FontName','Arial');
%title1.Position = [100  690 0];
hold off
%xlabel('Time (min)', 'FontSize', 40,'FontWeight','bold','FontName','Arial');
nexttile(2)
plot(CFSE_L1210A_Only.time, CFSE_L1210A_Only.data_bs(:,2),'Color', '#0072B2','LineWidth',1);
ylim([-100,800])
yticks([-100,0, 100,200,300,400,500, 600,700,800]);
yticklabels({'','0','','','','400','','','','800'});
xlim([0,600])
xticks([0, 300,600]);
% xticklabels({'0','5','10',})
xticklabels({'','','',})
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
fig = gcf;
tl= fig.Children;
ylabel(tl, 'NIR-DiFC Signal (nA)', 'FontSize',40,'FontWeight','bold','FontName','Arial');
xlabel(tl,'Time (min)', 'FontSize', 40,'FontWeight','bold','FontName','Arial');

%%
%example of a foward and reverse matched peak (using L1210A)
figure(10);
tiledlayout(2,2);
nexttile(1)
plot(prelabled_tail_1.time, prelabled_tail_1.data_bs(:,1),'Color', '#0072B2','LineWidth',1);
hold on
plot(prelabled_tail_1.time(prelabled_tail_1.fwd_peaks(1).locs), prelabled_tail_1.fwd_peaks(1).pks, '>', 'Color', '#0072B2','MarkerFaceColor','#009E73','MarkerEdgeColor','#009E73','MarkerSize',12)
ylim([-100,800])
yticks([-100,0, 100,200,300,400,500, 600,700,800]);
yticklabels({'','0','','','','400','','','','800'});
xlim([219.53,220.28])
xticks([219.53, 219.905,220.28]);
xticklabels({'','','',})
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
hold off
nexttile(3)
plot(prelabled_tail_1.time, prelabled_tail_1.data_bs(:,2),'Color', '#0072B2','LineWidth',1);
hold on
plot(prelabled_tail_1.time(prelabled_tail_1.fwd_peaks(2).locs), prelabled_tail_1.fwd_peaks(2).pks, '>', 'Color', '#0072B2','MarkerFaceColor','#009E73','MarkerEdgeColor','#009E73','MarkerSize',12)
ylim([-100,800])
yticks([-100,0, 100,200,300,400,500, 600,700,800]);
yticklabels({'','0','','','','400','','','','800'});
xlim([219.53,220.28])
xticks([219.53, 219.905,220.28]);
xticklabels({'0','','0.75',})
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;

nexttile(2)
plot(prelabled_tail_1.time, prelabled_tail_1.data_bs(:,1),'Color', '#0072B2','LineWidth',1);
hold on
plot(prelabled_tail_1.time(prelabled_tail_1.rev_peaks(1).locs), prelabled_tail_1.rev_peaks(1).pks, '<', 'Color', '#0072B2','MarkerFaceColor','#D55E00','MarkerEdgeColor','#D55E00','MarkerSize',12)
ylim([-100,800])
yticks([-100,0, 100,200,300,400,500, 600,700,800]);
% yticklabels({'','0','','','','400','','','','800'});
yticklabels({'','','','','','','','','',''});
xlim([529.43,530.18])
xticks([529.43, 529.805,530.18]);
xticklabels({'','','',})
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
hold off
nexttile(4)
plot(prelabled_tail_1.time, prelabled_tail_1.data_bs(:,2),'Color', '#0072B2','LineWidth',1);
hold on
plot(prelabled_tail_1.time(prelabled_tail_1.rev_peaks(2).locs), prelabled_tail_1.rev_peaks(2).pks, '<', 'Color', '#0072B2','MarkerFaceColor','#D55E00','MarkerEdgeColor','#D55E00','MarkerSize',12)
ylim([-100,800])
yticks([-100,0, 100,200,300,400,500, 600,700,800]);
% yticklabels({'','0','','','','400','','','','800'});
yticklabels({'','','','','','','','','',''});
xlim([529.43,530.18])
xticks([529.43, 529.805,530.18]);
xticklabels({'0','','0.75',})
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;

fig = gcf;
tl= fig.Children;
ylabel(tl, 'NIR-DiFC Signal (nA)', 'FontSize',40,'FontWeight','bold','FontName','Arial');
xlabel(tl,'Time (s)', 'FontSize', 40,'FontWeight','bold','FontName','Arial');
% %%
% %Creating count rate (only fwd matched peaks at the moment) of pre-labeled OTL38 L1210A in tail, both 1 minute and 5 minute
% %Scan 3 was chosen because it looks the best
% plottingBins1Minute = [1*60:1*60:60*60];
% plottingBins5Minute = [5*60:5*60:60*60];
% timeOfPeaksPerMinute = [0:60:3600];
% timeofPeaksPer5Minutes = [0:300:3600];
% normalizedscan3CountRate1Minute = scan3CountRate1Minute/scan3CountRate1Minute(1);
% normalizedscan3CountRate5Minute = scan3CountRate5Minute/scan3CountRate5Minute(1);
% figure(11);
% tiledlayout(2,1);
% nexttile(1)
% errorbar(plottingBins1Minute,normalizedscan3CountRate1Minute,normalizedCountRateSTD1Minute,'LineWidth',2);
% hold on
% normalizedNumberOfPeaksPerMinute = numberofPeaksPerMinute/numberofPeaksPerMinute(1);
% normalizedNumberOfPeaksPerMinute = [1 normalizedNumberOfPeaksPerMinute'];
% normalizedNumberOfPeaksPerMinute = normalizedNumberOfPeaksPerMinute';
% plot(timeOfPeaksPerMinute, normalizedNumberOfPeaksPerMinute,'LineWidth',2)
% axis = gca;
% axis.FontSize = 30;
% axis.FontWeight = 'bold';
% axis.FontName = 'Arial';
% axis.LineWidth = 2;
% xlim([0,3600])
% xticks([0, 300,600, 900,1200,1500,1800,2100,2400,2700,3000,3300,3600]);
% xticklabels({'','','','','','','','','','','','',''});
% hold off;
% title('1 Minute Count Rate')
% nexttile(2);
% errorbar(plottingBins5Minute,normalizedscan3CountRate5Minute,normalizedCountRateSTD5Minute,'LineWidth',2);
% hold on
% normalizedNumberOfPeaksPer5Minutes = [1 normalizedPeaksPer5Minutes];
% plot(timeofPeaksPer5Minutes, normalizedNumberOfPeaksPer5Minutes,'LineWidth',2)
% axis = gca;
% axis.FontSize = 30;
% axis.FontWeight = 'bold';
% axis.FontName = 'Arial';
% axis.LineWidth = 2;
% xlim([0,3600])
% xticks([0, 300,600, 900,1200,1500,1800,2100,2400,2700,3000,3300,3600]);
% xticklabels({'0','','10','','20','','30','','40','','50','','60'});
% hold off
% title('5 Minute Count Rate')
% fig = gcf;
% tl= fig.Children;
% ylabel(tl, {'Normalized NIR-DiFC','Count Rate'}, 'FontSize',40,'FontWeight','bold','FontName','Arial');
% xlabel(tl,'Time (min)', 'FontSize', 40,'FontWeight','bold','FontName','Arial');
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
figure(12);
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
meanAllScansNumberofPeaksPerMinute = [3 meanAllScansNumberofPeaksPerMinute'];
minAllScansNumberofPeaksPerMinute = [3 minAllScansNumberofPeaksPerMinute'];
maxAllScansNumberofPeaksPerMinute = [3 maxAllScansNumberofPeaksPerMinute'];
figure(13);
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
ylabel(tl, {'NIR-DiFC', 'Count Rate(/min)'}, 'FontSize',40,'FontWeight','bold','FontName','Arial');
xlabel(tl,'Time (min)', 'FontSize', 40,'FontWeight','bold','FontName','Arial');
% %%
% %Putting together the fwd/rev match examples and the count rate to per minute for helping with making figure 3
% %example of a foward and reverse matched peak (using L1210A)
% clear meanAllScansNumberofPeaksPerMinute
% set(0, 'DefaultFigureRenderer', 'painters');
% figure(14);
% tiledlayout(3,6);
% fontSize = 50;
% Probe = 1;
% nexttile([1 2])
% plot(prelabled_tail_1.time, prelabled_tail_1.data_bs(:,Probe),'Color', '#0072B2','LineWidth',1);
% hold on
% plot(prelabled_tail_1.time(prelabled_tail_1.unmatched_peaks(Probe).locs), prelabled_tail_1.unmatched_peaks(Probe).pks, 'o', 'Color', '#0072B2','MarkerFaceColor','#E69F00','MarkerEdgeColor','#E69F00','MarkerSize',12)
% plot(prelabled_tail_1.time(prelabled_tail_1.fwd_peaks(Probe).locs), prelabled_tail_1.fwd_peaks(Probe).pks, '>', 'Color', '#0072B2','MarkerFaceColor','#009E73','MarkerEdgeColor','#009E73','MarkerSize',12)
% plot(prelabled_tail_1.time(prelabled_tail_1.rev_peaks(Probe).locs), prelabled_tail_1.rev_peaks(Probe).pks, '<', 'Color', '#0072B2','MarkerFaceColor','#D55E00','MarkerEdgeColor','#D55E00','MarkerSize',12)
% ylim([-100,800])
% yticks([-100,0, 100,200,300,400,500, 600,700,800]);
% yticklabels({'','0','','','','400','','','','800'});
% xlim([0,600])
% xticks([0, 300,600]);
% xticklabels({'0','5','10',})
% axis = gca;
% axis.FontSize = fontSize;
% axis.FontWeight = 'bold';
% axis.FontName = 'Arial';
% axis.LineWidth = 1;
% % title2 = title('OTL38 L1210A','FontSize', 35,'FontWeight','bold','FontName','Arial');
% %title2.Position = [130  690 0];
% hold off
% xlabel('Time (min)', 'FontSize', fontSize,'FontWeight','bold','FontName','Arial');
% ylabel('NIR-DiFC Signal (nA)', 'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
% nexttile([1 2])
% plot(CFSE_L1210A_Only.time, CFSE_L1210A_Only.data_bs(:,2),'Color', '#0072B2','LineWidth',1);
% ylim([-100,800])
% yticks([-100,0, 100,200,300,400,500, 600,700,800]);
% yticklabels({'','','','','','','','','',''});
% xlim([0,600])
% xticks([0, 300,600]);
% xticklabels({'0','5','10',})
% axis = gca;
% axis.FontSize = fontSize;
% axis.FontWeight = 'bold';
% axis.FontName = 'Arial';
% axis.LineWidth = 1;
% fig = gcf;
% tl= fig.Children;
% % ylabel(tl, 'NIR-DiFC Signal (nA)', 'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
% %xlabel(tl,'Time (min)', 'FontSize', fontSize,'FontWeight','bold','FontName','Arial');
% xlabel('Time (min)', 'FontSize', fontSize,'FontWeight','bold','FontName','Arial');
% nexttile([1 2])
% plot(mouseControl_2.time, mouseControl_2.data_bs(:,1),'Color', '#0072B2','LineWidth',1);
% ylim([-100,800])
% yticks([-100,0, 100,200,300,400,500, 600,700,800]);
% yticklabels({'','','','','','','','','',''});
% xlim([0,600])
% xticks([0, 300,600]);
% xticklabels({'0','5','10',})
% axis = gca;
% axis.FontSize = fontSize;
% axis.FontWeight = 'bold';
% axis.FontName = 'Arial';
% axis.LineWidth = 1;
% % title1 = title('Control','FontSize', 35,'FontWeight','bold','FontName','Arial');
% %title1.Position = [100  690 0];
% hold off
% xlabel('Time (min)', 'FontSize', fontSize,'FontWeight','bold','FontName','Arial');
% nexttile(7)
% plot(prelabled_tail_1.time, prelabled_tail_1.data_bs(:,1),'Color', '#0072B2','LineWidth',1);
% hold on
% plot(prelabled_tail_1.time(prelabled_tail_1.fwd_peaks(1).locs), prelabled_tail_1.fwd_peaks(1).pks, '>', 'Color', '#0072B2','MarkerFaceColor','#009E73','MarkerEdgeColor','#009E73','MarkerSize',12)
% ylim([-100,800])
% yticks([-100,0, 100,200,300,400,500, 600,700,800]);
% yticklabels({'','0','','','','400','','','','800'});
% xlim([219.53,220.28])
% xticks([219.53, 219.905,220.28]);
% xticklabels({'','','',})
% axis = gca;
% axis.FontSize = fontSize;
% axis.FontWeight = 'bold';
% axis.FontName = 'Arial';
% axis.LineWidth = 1;
% hold off
% nexttile(13)
% plot(prelabled_tail_1.time, prelabled_tail_1.data_bs(:,2),'Color', '#0072B2','LineWidth',1);
% hold on
% plot(prelabled_tail_1.time(prelabled_tail_1.fwd_peaks(2).locs), prelabled_tail_1.fwd_peaks(2).pks, '>', 'Color', '#0072B2','MarkerFaceColor','#009E73','MarkerEdgeColor','#009E73','MarkerSize',12)
% ylim([-100,800])
% yticks([-100,0, 100,200,300,400,500, 600,700,800]);
% yticklabels({'','0','','','','400','','','','800'});
% xlim([219.53,220.28])
% xticks([219.53, 219.905,220.28]);
% xticklabels({'0','','0.75',})
% axis = gca;
% axis.FontSize = fontSize;
% axis.FontWeight = 'bold';
% axis.FontName = 'Arial';
% axis.LineWidth = 1;
% ylabel( 'NIR-DiFC Signal (nA)', 'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
% 
% nexttile(8)
% plot(prelabled_tail_1.time, prelabled_tail_1.data_bs(:,1),'Color', '#0072B2','LineWidth',1);
% hold on
% plot(prelabled_tail_1.time(prelabled_tail_1.rev_peaks(1).locs), prelabled_tail_1.rev_peaks(1).pks, '<', 'Color', '#0072B2','MarkerFaceColor','#D55E00','MarkerEdgeColor','#D55E00','MarkerSize',12)
% ylim([-100,800])
% yticks([-100,0, 100,200,300,400,500, 600,700,800]);
% % yticklabels({'','0','','','','400','','','','800'});
% yticklabels({'','','','','','','','','',''});
% xlim([529.43,530.18])
% xticks([529.43, 529.805,530.18]);
% xticklabels({'','','',})
% axis = gca;
% axis.FontSize = fontSize;
% axis.FontWeight = 'bold';
% axis.FontName = 'Arial';
% axis.LineWidth = 1;
% hold off
% nexttile(14)
% plot(prelabled_tail_1.time, prelabled_tail_1.data_bs(:,2),'Color', '#0072B2','LineWidth',1);
% hold on
% plot(prelabled_tail_1.time(prelabled_tail_1.rev_peaks(2).locs), prelabled_tail_1.rev_peaks(2).pks, '<', 'Color', '#0072B2','MarkerFaceColor','#D55E00','MarkerEdgeColor','#D55E00','MarkerSize',12)
% ylim([-100,800])
% yticks([-100,0, 100,200,300,400,500, 600,700,800]);
% % yticklabels({'','0','','','','400','','','','800'});
% yticklabels({'','','','','','','','','',''});
% xlim([529.43,530.18])
% xticks([529.43, 529.805,530.18]);
% xticklabels({'0','','0.75',})
% axis = gca;
% axis.FontSize = fontSize;
% axis.FontWeight = 'bold';
% axis.FontName = 'Arial';
% axis.LineWidth = 1;
% xlabel('Time (s)', 'FontSize', fontSize,'FontWeight','bold','FontName','Arial');
% 
% nexttile([1 4])
% timeOfPeaksPerMinute = [0:60:3600];
% meanAllScansNumberofPeaksPerMinute = [3 meanAllScansNumberofPeaksPerMinute'];
% minAllScansNumberofPeaksPerMinute = [3 minAllScansNumberofPeaksPerMinute'];
% maxAllScansNumberofPeaksPerMinute = [3 maxAllScansNumberofPeaksPerMinute'];
% 
% %Error bars from std calculations
% % errorbar(plottingBins1Minute,normalizedscan3CountRate1Minute,normalizedCountRateSTD1Minute,'LineWidth',2);
% %errorbar(plottingBins1Minute,normalizedAllscansCountRate1Minute,minValuesAllScansCountRate,maxValuesAllScansCountRate,'LineWidth',2);
% errorbar(timeOfPeaksPerMinute,meanAllScansNumberofPeaksPerMinute,minAllScansNumberofPeaksPerMinute,maxAllScansNumberofPeaksPerMinute,'LineWidth',1,'CapSize',30)
% hold on
% 
% %of all scans 
% plot(timeOfPeaksPerMinute, meanAllScansNumberofPeaksPerMinute,'LineWidth',1)
% axis = gca;
% axis.FontSize = fontSize;
% axis.FontWeight = 'bold';
% axis.FontName = 'Arial';
% axis.LineWidth = 1;
% xlim([0,3600])
% xticks([0, 300,600, 900,1200,1500,1800,2100,2400,2700,3000,3300,3600]);
% xticklabels({'0','','10','','20','','30','','40','','50','','60'});
% ylim([0 16]);
% yticks(0:0.5:16);
% yticklabels({'0','','','','','','','','4','','','','','','','','8','','','','','','','','12','','','','','','','','16'});
% hold off;
% fig = gcf;
% tl= fig.Children;
% ylabel( {'NIR-DiFC', 'Count Rate(/min)'}, 'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
% xlabel('Time (min)', 'FontSize', fontSize,'FontWeight','bold','FontName','Arial');
% fig = gcf;
% tl= fig.Children;
% % ylabel(tl, 'NIR-DiFC Signal (nA)', 'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
% 
% %%
% %Creating count rate (only fwd matched peaks at the moment) of pre-labeled OTL38 L1210A in tail, per minute
% %plotting all three scans together
% 
%    
% 
% %Average of all three scans plotted with the error bars being the range
% plottingBins1Minute = [1*60:1*60:60*60];
% plottingBins5Minute = [5*60:5*60:60*60];
% timeOfPeaksPerMinute = [0:60:3600];
% timeofPeaksPer5Minutes = [0:300:3600];
% 
% % meanAllScansNumberofPeaksPerMinuteNormalized = [1 meanAllScansNumberofPeaksPerMinuteNormalized'];
% % meanAllScansNumberofPeaksPerMinuteNormalized = meanAllScansNumberofPeaksPerMinuteNormalized';
% % 
% % 
% % minAllScansNumberofPeaksPerMinuteNormalized = [1 minAllScansNumberofPeaksPerMinuteNormalized'];
% % minAllScansNumberofPeaksPerMinuteNormalized = minAllScansNumberofPeaksPerMinuteNormalized';
% % 
% % maxAllScansNumberofPeaksPerMinuteNormalized = [1 maxAllScansNumberofPeaksPerMinuteNormalized'];
% % maxAllScansNumberofPeaksPerMinuteNormalized = maxAllScansNumberofPeaksPerMinuteNormalized';
% 
% normalizedNumberofPeaksPerMinuteScan1 = [1 normalizedNumberofPeaksPerMinuteScan1'];
% normalizedNumberofPeaksPerMinuteScan1 = normalizedNumberofPeaksPerMinuteScan1';
% 
% normalizedNumberofPeaksPerMinuteScan2 = [1 normalizedNumberofPeaksPerMinuteScan2'];
% normalizedNumberofPeaksPerMinuteScan2 = normalizedNumberofPeaksPerMinuteScan2';
% 
% normalizedNumberofPeaksPerMinuteScan3 = [1 normalizedNumberofPeaksPerMinuteScan3'];
% normalizedNumberofPeaksPerMinuteScan3 = normalizedNumberofPeaksPerMinuteScan3';
% 
% 
% 
% figure(15);
% tiledlayout(1,1);
% nexttile(1)
% %Error bars from std calculations
% % errorbar(plottingBins1Minute,normalizedscan3CountRate1Minute,normalizedCountRateSTD1Minute,'LineWidth',2);
% %errorbar(plottingBins1Minute,normalizedAllscansCountRate1Minute,minValuesAllScansCountRate,maxValuesAllScansCountRate,'LineWidth',2);
% % errorbar(timeOfPeaksPerMinute,meanAllScansNumberofPeaksPerMinuteNormalized,minAllScansNumberofPeaksPerMinuteNormalized,maxAllScansNumberofPeaksPerMinuteNormalized,'LineWidth',2,'CapSize',15)
% plot(timeOfPeaksPerMinute, normalizedNumberofPeaksPerMinuteScan1,'LineWidth',2)
% hold on
% plot(timeOfPeaksPerMinute, normalizedNumberofPeaksPerMinuteScan2,'LineWidth',2)
% plot(timeOfPeaksPerMinute, normalizedNumberofPeaksPerMinuteScan3,'LineWidth',2)
% axis = gca;
% axis.FontSize = 30;
% axis.FontWeight = 'bold';
% axis.FontName = 'Arial';
% axis.LineWidth = 2;
% xlim([0,3600])
% xticks([0, 300,600, 900,1200,1500,1800,2100,2400,2700,3000,3300,3600]);
% xticklabels({'0','','10','','20','','30','','40','','50','','60'});
% % ylim([0 5]);
% % yticks([0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5 ,5]);
% yticklabels({'0','','1','','2','','3','','4','','5'});
% hold off;
% fig = gcf;
% tl= fig.Children;
% ylabel(tl, {'Normalized NIR-DiFC','Count Rate'}, 'FontSize',40,'FontWeight','bold','FontName','Arial');
% xlabel(tl,'Time (min)', 'FontSize', 40,'FontWeight','bold','FontName','Arial');
% 
% 
% 


%%
%Bar graph of fwd matched peak FAR and prelabeled count rate
width = 0.5;
figure(16);
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
figure(17);
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
figure(18);
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
figure(19);
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
figure(20);
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
figure(21);
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
figure(22);
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
figure(23);
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
figure(24);
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


%%
%%%%%%%%%%%%%%%%%%%%%%%%%
%DiFC vs FC Count rate
width = 0.5;
figure(25);
bar(1,meanprelabeledLegMatchedCountsLast10Min,width);
hold on
bar(2,meanprelabeledLegMatchedCountsLast15Min,width);
bar(3,meanFCCellCount,width);
% bar(4,mean(postOTL38_9HoursBackground),width);
% bar(5,mean(postOTL38_12HoursBackground),width);
% bar(6,mean(postOTL38_24HoursBackground),width);
% bar(7,mean(postOTL38_24_2HoursBackground),width);
errorBaseline = errorbar(1,meanprelabeledLegMatchedCountsLast10Min,[],stdprelabeledLegMatchedCountsLast10Min,'LineWidth',3,'CapSize',25);
errorBaseline.Color = [0 0 0];
error3hrs = errorbar(2,meanprelabeledLegMatchedCountsLast15Min,[],stdprelabeledLegMatchedCountsLast15Min,'LineWidth',3,'CapSize',25);
error3hrs.Color = [0 0 0];
error6hrs = errorbar(3,meanFCCellCount,[],stdFCCellCount,'LineWidth',3,'CapSize',25);
error6hrs.Color = [0 0 0];
% error9hrs = errorbar(4,mean(postOTL38_9HoursBackground),[],std(postOTL38_9HoursBackground),'LineWidth',3,'CapSize',25);
% error9hrs.Color = [0 0 0];
% error12hrs = errorbar(5,mean(postOTL38_12HoursBackground),[],std(postOTL38_12HoursBackground),'LineWidth',3,'CapSize',25);
% error12hrs.Color = [0 0 0];
% error24hrs = errorbar(6,mean(postOTL38_24HoursBackground),[],std(postOTL38_24HoursBackground),'LineWidth',3,'CapSize',25);
% error24hrs.Color = [0 0 0];
% error24hrs_2 = errorbar(7,mean(postOTL38_24_2HoursBackground),[],std(postOTL38_24_2HoursBackground),'LineWidth',3,'CapSize',25);
% error24hrs_2.Color = [0 0 0];
% ylim([0 0.06]);
% yticks([0,0.01,0.02,0.03,0.04,0.05,0.06]);
% yticklabels({'0','','0.02','','0.04','','0.06'});
hold off
xticks(1:3)
xticklabels({'DiFC Last 10 minutes', 'DiFC Last 15 minutes','FC Blood Draw'});
% xtickangle(45);
ylabel('Cells per 2mL Blood','FontSize',40,'FontWeight','bold','FontName','Arial');
% title('2.5µg OTL38 Clearance- Tail Scans','FontSize',40,'FontWeight','bold','FontName','Arial');
axis = gca;
axis.FontSize = 40; 
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
%---------------------------------------------------------------------------
%FIGURE 4- OTL38 clearance, background, noise, SNR (new adition during revisions)
%%
%Plotting background (y axis) vs noise (x axis for each of the 3 OTL38 clearance mice)

backgroundNoiseMouse1 = [postOTL38_3HoursNoise postOTL38_6HoursNoise postOTL38_9HoursNoise postOTL38_12HoursNoise postOTL38_24_2HoursNoise];
backgroundNoiseMouse2 = [postOTL38_3HoursNoise_2 postOTL38_6HoursNoise_2 postOTL38_9HoursNoise_2 postOTL38_12HoursNoise_2 postOTL38_24HoursNoise_2];
backgroundNoiseMouse3 = [postOTL38_3HoursNoise_3 postOTL38_6HoursNoise_3 postOTL38_9HoursNoise_3 postOTL38_12HoursNoise_3 postOTL38_24HoursNoise_3];

backgroundSignalsMouse1 = [mean(postOTL38_3HoursBackground) mean(postOTL38_6HoursBackground) mean(postOTL38_9HoursBackground) mean(postOTL38_12HoursBackground) mean(postOTL38_24_2HoursBackground)];
backgroundSignalsMouse2 = [ mean(postOTL38_3HoursBackground_2) mean(postOTL38_6HoursBackground_2) mean(postOTL38_9HoursBackground_2) mean(postOTL38_12HoursBackground_2) mean(postOTL38_24HoursBackground_2)];
backgroundSignalsMouse3 = [ mean(postOTL38_3HoursBackground_3) mean(postOTL38_6HoursBackground_3) mean(postOTL38_9HoursBackground_3) mean(postOTL38_12HoursBackground_3) mean(postOTL38_24HoursBackground_3)];

MarkerSize = 15;
lineWidth = 3;
fontSize = 40;
figure(26);
y = tiledlayout(1,1);
nexttile(1)
plot(backgroundNoiseMouse1, backgroundSignalsMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','blue');
hold on
plot(backgroundNoiseMouse2, backgroundSignalsMouse2,'Marker','>','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','red');
plot(backgroundNoiseMouse3, backgroundSignalsMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
legend({'Mouse 1, R^{2} = 0.905','Mouse 2, R^{2} = 0.993','Mouse 3, R^{2} = 0.994'},'Location','northwest')
xlim([ 0 70]);
ylim([0 50000])
% xticks( 0:3:24);
% ylim([0 80]);
% yticks(0:5:80);
% yticklabels({'0','','10','','20','','30','','40','','50','','60','','70','','80'});
xlabel('Noise (nA)','FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel('Background (nA)','FontSize',fontSize,'FontWeight','bold','FontName','Arial');
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;


%%
%Histograms of fwd matched SNR for all individual scans before OTL38 and at diffierent time points after
FontSize = 40;
fontSize = 25;
figure(27);
tiledlayout(6,1);
nexttile(1)
histogram(allFwdMatchedPeakSNR, 'BinEdges', allSNREdges,'Normalization', 'probability','FaceColor','#0072B2','LineWidth',1)
hold on
xline(14,'-',{'Detection Threshold',num2str(baselinePeaksBelow14dB),[num2str((baselinePeaksBelow14dB/545)*100) '%' ]},'LabelHorizontalAlignment','left','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 2,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
xline(14,'-',{'',num2str(baselinePeaksAbove14dB),[num2str((baselinePeaksAbove14dB/545)*100) '%' ]},'LabelHorizontalAlignment','right','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 0.001,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
hold off
axis = gca;
axis.FontSize = FontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
ylim([0 0.25]);
yticks([0,0.125,0.25]);
% %xlim([0,40]);
% xticks([0 14 16:2:40]);
% xticklabels({'0','14','','18','','22','','26','','30','','34','','38'})
title('Baseline- Before OTL38 Injection','FontSize',FontSize,'FontWeight','bold','FontName','Arial')
nexttile(2)
histogram(allFwdMatchedPeakSNR3HoursPostOTL38, 'BinEdges', allSNREdges,'Normalization', 'probability','FaceColor','#0072B2','LineWidth',1)
hold on
xline(14,'-',{'',num2str(postOTL383HoursPeaksBelow14dB),[num2str((postOTL383HoursPeaksBelow14dB/545)*100,4) '%' ]},'LabelHorizontalAlignment','left','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 2,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
xline(14,'-',{'',num2str(postOTL383HoursPeaksAbove14dB),[num2str((postOTL383HoursPeaksAbove14dB/545)*100,4) '%' ]},'LabelHorizontalAlignment','right','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 0.001,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
xline(30,'-',{'',[num2str(postOTL38_3HoursBackgroundRatio,3) 'x Baseline Background'],[num2str(meanControlMouseCaculatedNoise3HoursPostOTL38Ratio,3) 'x Baseline Noise' ]},'LabelHorizontalAlignment','right','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 0.0000001,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
hold off
axis = gca;
axis.FontSize = FontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
ylim([0 0.25]);
yticks([0,0.125,0.25]);
% yticks([0,0.05, 0.1, 0.15, 0.2])
% %xlim([0,40]);
% xticks([0 14 16:2:40]);
% xticklabels({'0','14','','18','','22','','26','','30','','34','','38'})
title('3 Hours Post OTL38 Injection','FontSize',FontSize,'FontWeight','bold','FontName','Arial')
nexttile(3)
histogram(allFwdMatchedPeakSNR6HoursPostOTL38, 'BinEdges', allSNREdges,'Normalization', 'probability','FaceColor','#0072B2','LineWidth',1)
hold on
xline(14,'-',{'',num2str(postOTL386HoursPeaksBelow14dB),[num2str((postOTL386HoursPeaksBelow14dB/545)*100,4) '%' ]},'LabelHorizontalAlignment','left','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 2,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
xline(14,'-',{'',num2str(postOTL386HoursPeaksAbove14dB),[num2str((postOTL386HoursPeaksAbove14dB/545)*100,4) '%' ]},'LabelHorizontalAlignment','right','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 0.001,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
xline(30,'-',{'',[num2str(postOTL38_6HoursBackgroundRatio,3) 'x Baseline Background'],[num2str(meanControlMouseNoise6HoursPostOTL38Ratio,3) 'x Baseline Noise' ]},'LabelHorizontalAlignment','right','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 0.0000001,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
hold off
axis = gca;
axis.FontSize = FontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
ylim([0 0.25]);
yticks([0,0.125,0.25]);
% yticks([0,0.05, 0.1, 0.15, 0.2])
% %xlim([0,40]);
% xticks([0 14 16:2:40]);
% xticklabels({'0','14','','18','','22','','26','','30','','34','','38'})
title('6 Hours Post OTL38 Injection','FontSize',FontSize,'FontWeight','bold','FontName','Arial')
nexttile(4)
histogram(allFwdMatchedPeakSNR9HoursPostOTL38, 'BinEdges', allSNREdges,'Normalization', 'probability','FaceColor','#0072B2','LineWidth',1)
hold on
xline(14,'-',{'',num2str(postOTL389HoursPeaksBelow14dB),[num2str((postOTL389HoursPeaksBelow14dB/545)*100,4) '%' ]},'LabelHorizontalAlignment','left','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 2,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
xline(14,'-',{'',num2str(postOTL389HoursPeaksAbove14dB),[num2str((postOTL389HoursPeaksAbove14dB/545)*100,4) '%' ]},'LabelHorizontalAlignment','right','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 0.001,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
xline(30,'-',{'',[num2str(postOTL38_9HoursBackgroundRatio,3) 'x Baseline Background'],[num2str(meanControlMouseNoise9HoursPostOTL38Ratio,3) 'x Baseline Noise' ]},'LabelHorizontalAlignment','right','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 0.0000001,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
hold off
axis = gca;
axis.FontSize = FontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
ylim([0 0.25]);
yticks([0,0.125,0.25]);
% yticks([0,0.05, 0.1, 0.15, 0.2])
% %xlim([0,40]);
% xticks([0 14 16:2:40]);
% xticklabels({'0','14','','18','','22','','26','','30','','34','','38'})
title('9 Hours Post OTL38 Injection','FontSize',FontSize,'FontWeight','bold','FontName','Arial')
nexttile(5)
histogram(allFwdMatchedPeakSNR12HoursPostOTL38, 'BinEdges', allSNREdges,'Normalization', 'probability','FaceColor','#0072B2','LineWidth',1)
hold on
xline(14,'-',{'',num2str(postOTL3812HoursPeaksBelow14dB),[num2str((postOTL3812HoursPeaksBelow14dB/545)*100,4) '%' ]},'LabelHorizontalAlignment','left','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 2,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
xline(14,'-',{'',num2str(postOTL3812HoursPeaksAbove14dB),[num2str((postOTL3812HoursPeaksAbove14dB/545)*100,4) '%' ]},'LabelHorizontalAlignment','right','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 0.001,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
xline(30,'-',{'',[num2str(postOTL38_12HoursBackgroundRatio,3) 'x Baseline Background'],[num2str(meanControlMouseNoise12HoursPostOTL38Ratio,3) 'x Baseline Noise' ]},'LabelHorizontalAlignment','right','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 0.0000001,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
hold off
axis = gca;
axis.FontSize = FontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
ylim([0 0.25]);
yticks([0,0.125,0.25]);
% yticks([0,0.05, 0.1, 0.15, 0.2])
% %xlim([0,40]);
% xticks([0 14 16:2:40]);
% xticklabels({'0','14','','18','','22','','26','','30','','34','','38'})
title('12 Hours Post OTL38 Injection','FontSize',FontSize,'FontWeight','bold','FontName','Arial')
nexttile(6)
histogram(allFwdMatchedPeakSNR24HoursPostOTL38, 'BinEdges', allSNREdges,'Normalization', 'probability','FaceColor','#0072B2','LineWidth',1)
hold on
xline(14,'-',{'',num2str(postOTL3824HoursPeaksBelow14dB),[num2str((postOTL3824HoursPeaksBelow14dB/545)*100,4) '%' ]},'LabelHorizontalAlignment','left','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 2,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
xline(14,'-',{'',num2str(postOTL3824HoursPeaksAbove14dB),[num2str((postOTL3824HoursPeaksAbove14dB/545)*100,4) '%' ]},'LabelHorizontalAlignment','right','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 0.001,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
xline(30,'-',{'',[num2str(postOTL38_24_2HoursBackgroundRatio,3) 'x Baseline Background'],[num2str(meanControlMouseNoise24_2HoursPostOTL38Ratio,3) 'x Baseline Noise' ]},'LabelHorizontalAlignment','right','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 0.0000001,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');

hold off
axis = gca;
axis.FontSize = FontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
ylim([0 0.25]);
yticks([0,0.125,0.25]);
% yticks([0,0.05, 0.1, 0.15, 0.2])
% %xlim([0,40]);
% xticks([0 14 16:2:40]);
% xticklabels({'0','14','','18','','22','','26','','30','','34','','38'})
title('24 Hours Post OTL38 Injection','FontSize',FontSize,'FontWeight','bold','FontName','Arial')
fig = gcf;
tl= fig.Children;
ylabel(tl, 'Frequency', 'FontSize',FontSize,'FontWeight','bold','FontName','Arial');
xlabel(tl,'SNR (dB)', 'FontSize', FontSize,'FontWeight','bold','FontName','Arial');
% title(tl,'Arterial Matched Peak SNR','FontSize', FontSize*1.5,'FontWeight','bold','FontName','Arial')
%%
%Scatter plot of the noise of baseline and post OTL38 injection of the calculated values from the un-injected control mice
noiseBaselineLabels = repmat(2,3,1);
noise3HoursPostLabels = repmat(3,3,1);
noise6HoursPostLabels = repmat(4,3,1);
noise9HoursPostLabels = repmat(5,3,1);
noise12HoursPostLabels = repmat(6,3,1);
noise24HoursPostLabels = repmat(7,3,1);

controlMouseNoiseBaseline = [mouseControl_1Noise mouseControl_2Noise mouseControl_3Noise];
controlMouseNoise3HoursPostOTL38 = [controlMouse1Noise3HoursPostOTL38(2) controlMouse2Noise3HoursPostOTL38(2) controlMouse3Noise3HoursPostOTL38(2)];
controlMouseNoise6HoursPostOTL38 = [controlMouse1Noise6HoursPostOTL38(2) controlMouse2Noise6HoursPostOTL38(2) controlMouse3Noise6HoursPostOTL38(2)];
controlMouseNoise9HoursPostOTL38 = [controlMouse1Noise9HoursPostOTL38(2) controlMouse2Noise9HoursPostOTL38(2) controlMouse3Noise9HoursPostOTL38(2)];
controlMouseNoise12HoursPostOTL38 = [controlMouse1Noise12HoursPostOTL38(2) controlMouse2Noise12HoursPostOTL38(2) controlMouse3Noise12HoursPostOTL38(2)];
controlMouseNoise24HoursPostOTL38 = [controlMouse1Noise24HoursPostOTL38(2) controlMouse2Noise24HoursPostOTL38(2) controlMouse3Noise24HoursPostOTL38(2)];

figure(28);
scatter(1,0)
hold on
scatter(2,meanMouseNoise,200,'filled');
swarmchart(noiseBaselineLabels,controlMouseNoiseBaseline,200,'s','filled','XJitter','none')
scatter(2,preOTL38BaselineNoise,200,'*')

scatter(3,meanControlMouseNoise3HoursPostOTL38,200,'filled');
swarmchart(noise3HoursPostLabels,controlMouseNoise3HoursPostOTL38,200,'s','filled','XJitter','none')
scatter(3,postOTL38_3HoursNoise,200,'*')

scatter(4,meanControlMouseNoise6HoursPostOTL38,200,'filled')
swarmchart(noise6HoursPostLabels,controlMouseNoise6HoursPostOTL38,200,'s','filled','XJitter','none')
scatter(4,postOTL38_6HoursNoise,200,'*')

scatter(5,meanControlMouseNoise9HoursPostOTL38,200,'filled')
swarmchart(noise9HoursPostLabels,controlMouseNoise9HoursPostOTL38,200,'s','filled','XJitter','none')
scatter(5,postOTL38_9HoursNoise,200,'*')

scatter(6,meanControlMouseNoise12HoursPostOTL38,200,'filled')
swarmchart(noise12HoursPostLabels,controlMouseNoise12HoursPostOTL38,200,'s','filled','XJitter','none')
scatter(6,postOTL38_12HoursNoise,200,'*')

scatter(7,meanControlMouseNoise24HoursPostOTL38,200,'filled')
swarmchart(noise24HoursPostLabels,controlMouseNoise24HoursPostOTL38,200,'s','filled','XJitter','none')
scatter(7,postOTL38_24_2HoursNoise,200,'*')

scatter(8,0)

error_1 = errorbar(2,meanMouseNoise,-stdMouseNoise,stdMouseNoise,'LineWidth',1,'CapSize',15);
error_1.Color = [0 0 0];
error_2 = errorbar(3,meanControlMouseNoise3HoursPostOTL38,-stdControlMouseNoise3HoursPostOTL38,stdControlMouseNoise3HoursPostOTL38,'LineWidth',1,'CapSize',15);
error_2.Color = [0 0 0];
error_3 = errorbar(4,meanControlMouseNoise6HoursPostOTL38,-stdControlMouseNoise6HoursPostOTL38,stdControlMouseNoise6HoursPostOTL38,'LineWidth',1,'CapSize',15);
error_3.Color = [0 0 0];
error_2 = errorbar(5,meanControlMouseNoise9HoursPostOTL38,-stdControlMouseNoise9HoursPostOTL38,stdControlMouseNoise9HoursPostOTL38,'LineWidth',1,'CapSize',15);
error_2.Color = [0 0 0];
error_2 = errorbar(6,meanControlMouseNoise12HoursPostOTL38,-stdControlMouseNoise12HoursPostOTL38,stdControlMouseNoise12HoursPostOTL38,'LineWidth',1,'CapSize',15);
error_2.Color = [0 0 0];
error_2 = errorbar(7,meanControlMouseNoise24HoursPostOTL38,-stdControlMouseNoise24HoursPostOTL38,stdControlMouseNoise24HoursPostOTL38,'LineWidth',1,'CapSize',15);
error_2.Color = [0 0 0];
hold off
xticks(1:8)
xticklabels({'','Baseline', '3 Hours','6 Hours','9 Hours','12 Hours','24 Hours',''});
legend({'','Un-injected Average','Un-injected Replicates','OTL38 Only Injected'})
% xtickangle(45);
% ylabel('System Noise (nA)','FontSize',40,'FontWeight','bold','FontName','Arial');
ylabel({'System Noise (nA)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
% title('Calculated Values using Un-injected Control Mice','FontSize',40,'FontWeight','bold','FontName','Arial')
axis = gca;
box on;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
%%
%Scatter plot of the background of baseline and post OTL38 injection of the calculated values from the un-injected control mice (using data from first OTL38 clearance mouse)
backgroundBaselineLabels = repmat(2,3,1);
background3HoursPostLabels = repmat(3,3,1);
background6HoursPostLabels = repmat(4,3,1);
background9HoursPostLabels = repmat(5,3,1);
background12HoursPostLabels = repmat(6,3,1);
background24HoursPostLabels = repmat(7,3,1);

controlMouseBackgroundBaseline = [mean(mouseControl_1Background) mean(mouseControl_2Background) mean(mouseControl_3Background)];
controlMouseBackground3HoursPostOTL38 = [mean(controlMouse1Background3HoursPostOTL38(2)) mean(controlMouse2Background3HoursPostOTL38(2)) mean(controlMouse3Background3HoursPostOTL38(2))];
ControlMouseBackground6HoursPostOTL38 = [controlMouse1Background6HoursPostOTL38(2) controlMouse2Background6HoursPostOTL38(2) controlMouse3Background6HoursPostOTL38(2)];
ControlMouseBackground9HoursPostOTL38 = [controlMouse1Background9HoursPostOTL38(2) controlMouse2Background9HoursPostOTL38(2) controlMouse3Background9HoursPostOTL38(2)];
ControlMouseBackground12HoursPostOTL38 =[controlMouse1Background12HoursPostOTL38(2) controlMouse2Background12HoursPostOTL38(2) controlMouse3Background12HoursPostOTL38(2)];
ControlMouseBackground24HoursPostOTL38 = [controlMouse1Background24HoursPostOTL38(2) controlMouse2Background24HoursPostOTL38(2) controlMouse3Background24HoursPostOTL38(2)];

figure(29);
scatter(1,0)
hold on
scatter(2,meanMouseBackground,200,'filled');
swarmchart(backgroundBaselineLabels,controlMouseBackgroundBaseline,200,'s','filled','XJitter','none')
scatter(2,mean(preOTL38BaselineBackground),200,'*')

scatter(3,meanControlMouseBackground3HoursPostOTL38,200,'filled');
swarmchart(background3HoursPostLabels,controlMouseBackground3HoursPostOTL38,200,'s','filled','XJitter','none')
scatter(3,mean(postOTL38_3HoursBackground),200,'*')

scatter(4,meanControlMouseBackground6HoursPostOTL38,200,'filled')
swarmchart(background6HoursPostLabels,ControlMouseBackground6HoursPostOTL38,200,'s','filled','XJitter','none')
scatter(4,mean(postOTL38_6HoursBackground),200,'*')

scatter(5,meanControlMouseBackground9HoursPostOTL38,200,'filled')
swarmchart(background9HoursPostLabels,ControlMouseBackground9HoursPostOTL38,200,'s','filled','XJitter','none')
scatter(5,mean(postOTL38_9HoursBackground),200,'*')

scatter(6,meanControlMouseBackground12HoursPostOTL38,200,'filled')
swarmchart(background12HoursPostLabels,ControlMouseBackground12HoursPostOTL38,200,'s','filled','XJitter','none')
scatter(6,mean(postOTL38_12HoursBackground),200,'*')

scatter(7,meanControlMouseBackground24HoursPostOTL38,200,'filled')
swarmchart(background24HoursPostLabels,ControlMouseBackground24HoursPostOTL38,200,'s','filled','XJitter','none')
scatter(7,mean(postOTL38_24_2HoursBackground),200,'*')

scatter(8,0)

error_1 = errorbar(2,meanMouseBackground,-stdMouseBackground,stdMouseBackground,'LineWidth',1,'CapSize',15);
error_1.Color = [0 0 0];
error_2 = errorbar(3,meanControlMouseBackground3HoursPostOTL38,-stdControlMouseBackground3HoursPostOTL38,stdControlMouseBackground3HoursPostOTL38,'LineWidth',1,'CapSize',15);
error_2.Color = [0 0 0];
error_3 = errorbar(4,meanControlMouseBackground6HoursPostOTL38,-stdControlMouseBackground6HoursPostOTL38,stdControlMouseBackground6HoursPostOTL38,'LineWidth',1,'CapSize',15);
error_3.Color = [0 0 0];
error_2 = errorbar(5,meanControlMouseBackground9HoursPostOTL38,-stdControlMouseBackground9HoursPostOTL38,stdControlMouseBackground9HoursPostOTL38,'LineWidth',1,'CapSize',15);
error_2.Color = [0 0 0];
error_2 = errorbar(6,meanControlMouseBackground12HoursPostOTL38,-stdControlMouseBackground12HoursPostOTL38,stdControlMouseBackground12HoursPostOTL38,'LineWidth',1,'CapSize',15);
error_2.Color = [0 0 0];
error_2 = errorbar(7,meanControlMouseBackground24HoursPostOTL38,-stdControlMouseBackground24HoursPostOTL38,stdControlMouseBackground24HoursPostOTL38,'LineWidth',1,'CapSize',15);
error_2.Color = [0 0 0];
hold off
legend({'','Un-injected Average','Un-injected Replicates','OTL38 Only Injected'})
xticks(1:8)
xticklabels({'','Baseline', '3 Hours','6 Hours','9 Hours','12 Hours','24 Hours',''});
% xtickangle(45);
% ylabel('System Noise (nA)','FontSize',40,'FontWeight','bold','FontName','Arial');
ylabel({'Background Signal (nA)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
% title('Calculated Values using Un-injected Control Mice','FontSize',40,'FontWeight','bold','FontName','Arial')
axis = gca;
box on;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
%%
%Scatter plot of the noise ratio and noise of the first 2 OTL38 clearance mice 
size = 200;
figure(30);
tiledlayout(1,2);
nexttile(2);
scatter(0,0)
hold on
scatter(1,1,size,'filled','o','blue');%Blue,mouse 1
scatter(1,1,size,'filled','s','red');%red, mouse 2

scatter(2,  postOTL38_3HoursNoiseRatio ,size,'filled','o','blue');%Blue,mouse 1
scatter(2,postOTL38_3HoursNoiseRatio_2,size,'filled','s','red');%red, mouse 2

scatter(3, postOTL38_6HoursNoiseRatio ,size,'filled','o','blue');%Blue,mouse 1
scatter(3,postOTL38_6HoursNoiseRatio_2,size,'filled','s','red');%red, mouse 2

scatter(4,  postOTL38_9HoursNoiseRatio ,size,'filled','o','blue');%Blue,mouse 1
scatter(4,postOTL38_9HoursNoiseRatio_2,size,'filled','s','red');%red, mouse 2

scatter(5,  postOTL38_12HoursNoiseRatio ,size,'filled','o','blue');%Blue,mouse 1
scatter(5,postOTL38_12HoursNoiseRatio,size,'filled','s','red');%red, mouse 2

scatter(6,  postOTL38_24_2HoursNoiseRatio ,size,'filled','o','blue');%Blue,mouse 1
scatter(6,postOTL38_24HoursNoiseRatio_2,size,'filled','s','red');%red, mouse 2

scatter(7,0)
hold off
legend({'','Mouse 1','Mouse 2'})
xticks(1:7)
xticklabels({'Baseline', '3 Hours','6 Hours','9 Hours','12 Hours','24 Hours',''});
ylabel({'Background Noise Ratio'},'FontSize',40,'FontWeight','bold','FontName','Arial');
axis = gca;
box on;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(1)
scatter(0,0);
hold on
scatter(1,preOTL38BaselineNoise,size,'filled','o','blue');%Blue,mouse 1
scatter(1, preOTL38BaselineNoise_2,size,'filled','s','red');%red, mouse 2

scatter(2, postOTL38_3HoursNoise,size,'filled','o','blue');%Blue,mouse 1
scatter(2,postOTL38_3HoursNoise_2,size,'filled','s','red');%red,mouse 2

scatter(3,postOTL38_6HoursNoise,size,'filled','o','blue');%Blue,mouse 1
scatter(3,postOTL38_6HoursNoise_2,size,'filled','s','red');%red,mouse 2

scatter(4,postOTL38_9HoursNoise,size,'filled','o','blue');%Blue,mouse 1
scatter(4,postOTL38_9HoursNoise_2,size,'filled','s','red');%red,mouse 2

scatter(5,postOTL38_12HoursNoise,size,'filled','o','blue');%Blue,mouse 1
scatter(5,postOTL38_12HoursNoise_2,size,'filled','s','red');%red,mouse 2

scatter(6,postOTL38_24_2HoursNoise,size,'filled','o','blue');%Blue,mouse 1
scatter(6,postOTL38_24HoursNoise_2,size,'filled','s','red');%red,mouse 2

scatter(7,0);
hold off;

legend({'','Mouse 1','Mouse 2'})
xticks(1:7)
xticklabels({'Baseline', '3 Hours','6 Hours','9 Hours','12 Hours','24 Hours',''});
% xtickangle(45);
% ylabel('System Noise (nA)','FontSize',40,'FontWeight','bold','FontName','Arial');
ylabel({'Background Noise (nA)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
% title('Calculated Values using Un-injected Control Mice','FontSize',40,'FontWeight','bold','FontName','Arial')
axis = gca;
box on;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
%%
% plot of the noise ratio and noise of the first 2 OTL38 clearance mice with the proper scaling and such
timePoints = [3, 6, 9, 12, 24];

backgroundNoiseMouse1 = [postOTL38_3HoursNoise postOTL38_6HoursNoise postOTL38_9HoursNoise postOTL38_12HoursNoise postOTL38_24_2HoursNoise];
backgroundNoiseMouse2 = [postOTL38_3HoursNoise_2 postOTL38_6HoursNoise_2 postOTL38_9HoursNoise_2 postOTL38_12HoursNoise_2 postOTL38_24HoursNoise_2];
backgroundNoiseMouse3 = [postOTL38_3HoursNoise_3 postOTL38_6HoursNoise_3 postOTL38_9HoursNoise_3 postOTL38_12HoursNoise_3 postOTL38_24HoursNoise_3];

backgroundNoiseRatioMouse1 = [postOTL38_3HoursNoiseRatio postOTL38_6HoursNoiseRatio postOTL38_9HoursNoiseRatio postOTL38_12HoursNoiseRatio postOTL38_24_2HoursNoiseRatio];
backgroundNoiseRatioMouse2 = [postOTL38_3HoursNoiseRatio_2 postOTL38_6HoursNoiseRatio_2 postOTL38_9HoursNoiseRatio_2 postOTL38_12HoursNoiseRatio_2 postOTL38_24HoursNoiseRatio_2];
backgroundNoiseRatioMouse3 = [postOTL38_3HoursNoiseRatio_3 postOTL38_6HoursNoiseRatio_3 postOTL38_9HoursNoiseRatio_3 postOTL38_12HoursNoiseRatio_3 postOTL38_24HoursNoiseRatio_3];

backgroundNoiseRatioMean = [meanPostOTL38_3HoursNoiseRatio meanPostOTL38_6HoursNoiseRatio meanPostOTL38_9HoursNoiseRatio meanPostOTL38_12HoursNoiseRatio meanPostOTL38_24HoursNoiseRatio];
backgroundNoiseRatioSTD = [stdPostOTL38_3HoursNoiseRatio stdPostOTL38_6HoursNoiseRatio stdPostOTL38_9HoursNoiseRatio stdPostOTL38_12HoursNoiseRatio stdPostOTL38_24HoursNoiseRatio];

MakerSize = 15;
lineWidth = 1;
figure(31);
tiledlayout(1,2);
nexttile(2);
plot(timePoints, backgroundNoiseRatioMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
hold on
plot(timePoints, backgroundNoiseRatioMouse2,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundNoiseRatioMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundNoiseRatioMean,-backgroundNoiseRatioSTD,backgroundNoiseRatioSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
% scatter(0,0)
% hold on
% scatter(1,1,size,'filled','o','blue');%Blue,mouse 1
% scatter(1,1,size,'filled','s','red');%red, mouse 2
% 
% scatter(2,  postOTL38_3HoursNoiseRatio ,size,'filled','o','blue');%Blue,mouse 1
% scatter(2,postOTL38_3HoursNoiseRatio_2,size,'filled','s','red');%red, mouse 2
% 
% scatter(3, postOTL38_6HoursNoiseRatio ,size,'filled','o','blue');%Blue,mouse 1
% scatter(3,postOTL38_6HoursNoiseRatio_2,size,'filled','s','red');%red, mouse 2
% 
% scatter(4,  postOTL38_9HoursNoiseRatio ,size,'filled','o','blue');%Blue,mouse 1
% scatter(4,postOTL38_9HoursNoiseRatio_2,size,'filled','s','red');%red, mouse 2
% 
% scatter(5,  postOTL38_12HoursNoiseRatio ,size,'filled','o','blue');%Blue,mouse 1
% scatter(5,postOTL38_12HoursNoiseRatio,size,'filled','s','red');%red, mouse 2
% 
% scatter(6,  postOTL38_24_2HoursNoiseRatio ,size,'filled','o','blue');%Blue,mouse 1
% scatter(6,postOTL38_24HoursNoiseRatio_2,size,'filled','s','red');%red, mouse 2
% 
% scatter(7,0)
% hold off
xticks( 0:3:24);
xlabel({'Post OTL38 Injection (Hours)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
ylabel({'Background Noise (Normalized to Baseline)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
ylim([0 4]);
axis = gca;
box on;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(1)
plot(timePoints, backgroundNoiseMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
hold on
plot(timePoints, backgroundNoiseMouse2,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundNoiseMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
legend({'Mouse 1','Mouse 2','Mouse 3'})
% scatter(0,0);
% hold on
% scatter(1,preOTL38BaselineNoise,size,'filled','o','blue');%Blue,mouse 1
% scatter(1, preOTL38BaselineNoise_2,size,'filled','s','red');%red, mouse 2
% 
% scatter(2, postOTL38_3HoursNoise,size,'filled','o','blue');%Blue,mouse 1
% scatter(2,postOTL38_3HoursNoise_2,size,'filled','s','red');%red,mouse 2
% 
% scatter(3,postOTL38_6HoursNoise,size,'filled','o','blue');%Blue,mouse 1
% scatter(3,postOTL38_6HoursNoise_2,size,'filled','s','red');%red,mouse 2
% 
% scatter(4,postOTL38_9HoursNoise,size,'filled','o','blue');%Blue,mouse 1
% scatter(4,postOTL38_9HoursNoise_2,size,'filled','s','red');%red,mouse 2
% 
% scatter(5,postOTL38_12HoursNoise,size,'filled','o','blue');%Blue,mouse 1
% scatter(5,postOTL38_12HoursNoise_2,size,'filled','s','red');%red,mouse 2
% 
% scatter(6,postOTL38_24_2HoursNoise,size,'filled','o','blue');%Blue,mouse 1
% scatter(6,postOTL38_24HoursNoise_2,size,'filled','s','red');%red,mouse 2
% 
% scatter(7,0);
% hold off;
% 
% legend({'','Mouse 1','Mouse 2'})
% xticks(1:7)
% xticklabels({'Baseline', '3 Hours','6 Hours','9 Hours','12 Hours','24 Hours',''});
% xtickangle(45);
% ylabel('System Noise (nA)','FontSize',40,'FontWeight','bold','FontName','Arial');
xticks( 0:3:24);
xlabel({'Post OTL38 Injection (Hours)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
ylabel({'Background Noise (nA)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
ylim([0 70]);
% title('Calculated Values using Un-injected Control Mice','FontSize',40,'FontWeight','bold','FontName','Arial')
axis = gca;
box on;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;

%%
%Scatter plot of the background ratio and background ratio of the first 2 OTL38 clearance mice 
size = 200;
figure(32);
tiledlayout(1,2);
nexttile(2);
scatter(0,0)
hold on
scatter(1,mean(preOTL38BaselineBackground)/mean(preOTL38BaselineBackground),size,'filled','o','blue');%Blue,mouse 1
scatter(1,mean(preOTL38BaselineBackground_2)/mean(preOTL38BaselineBackground_2),size,'filled','s','red');%red, mouse 2

scatter(2,  postOTL38_3HoursBackgroundRatio ,size,'filled','o','blue');%Blue,mouse 1
scatter(2,postOTL38_3HoursBackgroundRatio_2,size,'filled','s','red');%red, mouse 2

scatter(3,  postOTL38_6HoursBackgroundRatio ,size,'filled','o','blue');%Blue,mouse 1
scatter(3,postOTL38_6HoursBackgroundRatio_2,size,'filled','s','red');%red, mouse 2

scatter(4,  postOTL38_9HoursBackgroundRatio ,size,'filled','o','blue');%Blue,mouse 1
scatter(4,postOTL38_9HoursBackgroundRatio_2,size,'filled','s','red');%red, mouse 2

scatter(5,  postOTL38_12HoursBackgroundRatio ,size,'filled','o','blue');%Blue,mouse 1
scatter(5,postOTL38_12HoursBackgroundRatio_2,size,'filled','s','red');%red, mouse 2

scatter(6,  postOTL38_24_2HoursBackgroundRatio ,size,'filled','o','blue');%Blue,mouse 1
scatter(6,postOTL38_24HoursBackgroundRatio_2,size,'filled','s','red');%red, mouse 2

scatter(7,0)
hold off
legend({'','Mouse 1','Mouse 2'})
xticks(1:7)
xticklabels({'Baseline', '3 Hours','6 Hours','9 Hours','12 Hours','24 Hours',''});
ylabel({'Background Signal Ratio'},'FontSize',40,'FontWeight','bold','FontName','Arial');
axis = gca;
box on;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(1)
scatter(0,0);
hold on
scatter(1,mean(preOTL38BaselineBackground),size,'filled','o','blue');%Blue,mouse 1
scatter(1, mean(preOTL38BaselineBackground_2),size,'filled','s','red');%red, mouse 2

scatter(2,mean(postOTL38_3HoursBackground),size,'filled','o','blue');%Blue,mouse 1
scatter(2,mean(postOTL38_3HoursBackground_2),size,'filled','s','red');%red,mouse 2

scatter(3,mean(postOTL38_6HoursBackground),size,'filled','o','blue');%Blue,mouse 1
scatter(3,mean(postOTL38_6HoursBackground_2),size,'filled','s','red');%red,mouse 2

scatter(4,mean(postOTL38_9HoursBackground),size,'filled','o','blue');%Blue,mouse 1
scatter(4,mean(postOTL38_9HoursBackground_2),size,'filled','s','red');%red,mouse 2

scatter(5,mean(postOTL38_12HoursBackground),size,'filled','o','blue');%Blue,mouse 1
scatter(5,mean(postOTL38_12HoursBackground_2),size,'filled','s','red');%red,mouse 2

scatter(6,mean(postOTL38_24_2HoursBackground),size,'filled','o','blue');%Blue,mouse 1
scatter(6,mean(postOTL38_24HoursBackground_2),size,'filled','s','red');%red,mouse 2

scatter(7,0);
hold off;

legend({'','Mouse 1','Mouse 2'})
xticks(1:7)
xticklabels({'Baseline', '3 Hours','6 Hours','9 Hours','12 Hours','24 Hours',''});
% xtickangle(45);
% ylabel('System Noise (nA)','FontSize',40,'FontWeight','bold','FontName','Arial');
ylabel({'Background Signal (nA)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
% title('Calculated Values using Un-injected Control Mice','FontSize',40,'FontWeight','bold','FontName','Arial')
axis = gca;
box on;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
%%
% plot of the background  and background ratio of the 3 OTL38 clearance mice with the proper scalling and such

timePoints = [3, 6, 9, 12, 24];

backgroundSignalsMouse1 = [mean(postOTL38_3HoursBackground) mean(postOTL38_6HoursBackground) mean(postOTL38_9HoursBackground) mean(postOTL38_12HoursBackground) mean(postOTL38_24_2HoursBackground)];
backgroundSignalsMouse2 = [ mean(postOTL38_3HoursBackground_2) mean(postOTL38_6HoursBackground_2) mean(postOTL38_9HoursBackground_2) mean(postOTL38_12HoursBackground_2) mean(postOTL38_24HoursBackground_2)];
backgroundSignalsMouse3 = [ mean(postOTL38_3HoursBackground_3) mean(postOTL38_6HoursBackground_3) mean(postOTL38_9HoursBackground_3) mean(postOTL38_12HoursBackground_3) mean(postOTL38_24HoursBackground_3)];

backgroundSignalRatioMouse1 = [postOTL38_3HoursBackgroundRatio postOTL38_6HoursBackgroundRatio postOTL38_9HoursBackgroundRatio postOTL38_12HoursBackgroundRatio postOTL38_24_2HoursBackgroundRatio]; 
backgroundSignalRatioMouse2 = [postOTL38_3HoursBackgroundRatio_2 postOTL38_6HoursBackgroundRatio_2 postOTL38_9HoursBackgroundRatio_2 postOTL38_12HoursBackgroundRatio_2  postOTL38_24HoursBackgroundRatio_2]; 
backgroundSignalRatioMouse3 = [postOTL38_3HoursBackgroundRatio_3 postOTL38_6HoursBackgroundRatio_3 postOTL38_9HoursBackgroundRatio_3 postOTL38_12HoursBackgroundRatio_3  postOTL38_24HoursBackgroundRatio_3]; 

MarkerSize = 15;
lineWidth = 1;
figure(33);
tiledlayout(1,2);
nexttile(2);
plot(timePoints, backgroundSignalRatioMouse1,'Marker','o','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
hold on
plot(timePoints, backgroundSignalRatioMouse2,'Marker','s','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundSignalRatioMouse3,'Marker','d','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
legend({'Mouse 1','Mouse 2','Mouse 3'})
ylim([0 6]);
xticks( 0:3:24);
xlabel({'Post OTL38 Injection (Hours)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
ylabel({'Background Signal (Normalized to Baseline)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
hold off;
axis = gca;
box on;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;

nexttile(1)
plot(timePoints, backgroundSignalsMouse1,'Marker','o','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
hold on
plot(timePoints, backgroundSignalsMouse2,'Marker','s','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundSignalsMouse3,'Marker','d','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
legend({'Mouse 1','Mouse 2','Mouse 3'})
xticks( 0:3:24);
ylim([0 50000]);
xlabel({'Post OTL38 Injection (Hours)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
ylabel({'Background Signal (nA)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
hold off
axis = gca;
box on;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;

%%
% plot of the background (individual 3 mice)  and background ratio (mean and std of three mice) of the 3 OTL38 clearance mice with the proper scalling and such

timePoints = [3, 6, 9, 12, 24];

backgroundSignalsMouse1 = [mean(postOTL38_3HoursBackground) mean(postOTL38_6HoursBackground) mean(postOTL38_9HoursBackground) mean(postOTL38_12HoursBackground) mean(postOTL38_24_2HoursBackground)];
backgroundSignalsMouse2 = [ mean(postOTL38_3HoursBackground_2) mean(postOTL38_6HoursBackground_2) mean(postOTL38_9HoursBackground_2) mean(postOTL38_12HoursBackground_2) mean(postOTL38_24HoursBackground_2)];
backgroundSignalsMouse3 = [ mean(postOTL38_3HoursBackground_3) mean(postOTL38_6HoursBackground_3) mean(postOTL38_9HoursBackground_3) mean(postOTL38_12HoursBackground_3) mean(postOTL38_24HoursBackground_3)];

backgroundSignalRatioMouse1 = [postOTL38_3HoursBackgroundRatio postOTL38_6HoursBackgroundRatio postOTL38_9HoursBackgroundRatio postOTL38_12HoursBackgroundRatio postOTL38_24_2HoursBackgroundRatio]; 
backgroundSignalRatioMouse2 = [postOTL38_3HoursBackgroundRatio_2 postOTL38_6HoursBackgroundRatio_2 postOTL38_9HoursBackgroundRatio_2 postOTL38_12HoursBackgroundRatio_2  postOTL38_24HoursBackgroundRatio_2]; 
backgroundSignalRatioMouse3 = [postOTL38_3HoursBackgroundRatio_3 postOTL38_6HoursBackgroundRatio_3 postOTL38_9HoursBackgroundRatio_3 postOTL38_12HoursBackgroundRatio_3  postOTL38_24HoursBackgroundRatio_3]; 

backgroundSignalRatioMean = [meanPostOTL38_3HoursBackgroundRatio meanPostOTL38_6HoursBackgroundRatio meanPostOTL38_9HoursBackgroundRatio meanPostOTL38_12HoursBackgroundRatio  meanPostOTL38_24HoursBackgroundRatio];
backgroundSignalRatioSTD = [stdPostOTL38_3HoursBackgroundRatio stdPostOTL38_6HoursBackgroundRatio stdPostOTL38_9HoursBackgroundRatio stdPostOTL38_12HoursBackgroundRatio  stdPostOTL38_24HoursBackgroundRatio];
MarkerSize = 15;
lineWidth = 1;
figure(34);
tiledlayout(1,2);
nexttile(2);
plot(timePoints, backgroundSignalRatioMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
hold on
plot(timePoints, backgroundSignalRatioMouse2,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundSignalRatioMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundSignalRatioMean,-backgroundSignalRatioSTD,backgroundSignalRatioSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
ylim([0 6]);
xticks( 0:3:24);
xlabel({'Post OTL38 Injection (Hours)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
ylabel({'Background Signal (Normalized to Baseline)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
hold off;
axis = gca;
box on;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;

nexttile(1)
plot(timePoints, backgroundSignalsMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
hold on
plot(timePoints, backgroundSignalsMouse2,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundSignalsMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
legend({'Mouse 1','Mouse 2','Mouse 3'})
xticks( 0:3:24);
ylim([0 50000]);
xlabel({'Post OTL38 Injection (Hours)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
ylabel({'Background Signal (nA)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
hold off
axis = gca;
box on;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
%%
% plot of the background (individual 3 mice)  and background ratio (mean and std of three mice) and the noise (individual 3 mice) and the noise ratio of the 3 OTL38 clearance mice with the proper scalling and such
%%%%%%%%%%%%%%%%%
timePoints = [3, 6, 9, 12, 24];

backgroundSignalsMouse1 = [mean(postOTL38_3HoursBackground) mean(postOTL38_6HoursBackground) mean(postOTL38_9HoursBackground) mean(postOTL38_12HoursBackground) mean(postOTL38_24_2HoursBackground)];
backgroundSignalsMouse2 = [ mean(postOTL38_3HoursBackground_2) mean(postOTL38_6HoursBackground_2) mean(postOTL38_9HoursBackground_2) mean(postOTL38_12HoursBackground_2) mean(postOTL38_24HoursBackground_2)];
backgroundSignalsMouse3 = [ mean(postOTL38_3HoursBackground_3) mean(postOTL38_6HoursBackground_3) mean(postOTL38_9HoursBackground_3) mean(postOTL38_12HoursBackground_3) mean(postOTL38_24HoursBackground_3)];

backgroundSignalRatioMouse1 = [postOTL38_3HoursBackgroundRatio postOTL38_6HoursBackgroundRatio postOTL38_9HoursBackgroundRatio postOTL38_12HoursBackgroundRatio postOTL38_24_2HoursBackgroundRatio]; 
backgroundSignalRatioMouse2 = [postOTL38_3HoursBackgroundRatio_2 postOTL38_6HoursBackgroundRatio_2 postOTL38_9HoursBackgroundRatio_2 postOTL38_12HoursBackgroundRatio_2  postOTL38_24HoursBackgroundRatio_2]; 
backgroundSignalRatioMouse3 = [postOTL38_3HoursBackgroundRatio_3 postOTL38_6HoursBackgroundRatio_3 postOTL38_9HoursBackgroundRatio_3 postOTL38_12HoursBackgroundRatio_3  postOTL38_24HoursBackgroundRatio_3]; 

backgroundSignalRatioMean = [meanPostOTL38_3HoursBackgroundRatio meanPostOTL38_6HoursBackgroundRatio meanPostOTL38_9HoursBackgroundRatio meanPostOTL38_12HoursBackgroundRatio  meanPostOTL38_24HoursBackgroundRatio];
backgroundSignalRatioSTD = [stdPostOTL38_3HoursBackgroundRatio stdPostOTL38_6HoursBackgroundRatio stdPostOTL38_9HoursBackgroundRatio stdPostOTL38_12HoursBackgroundRatio  stdPostOTL38_24HoursBackgroundRatio];

backgroundNoiseMouse1 = [postOTL38_3HoursNoise postOTL38_6HoursNoise postOTL38_9HoursNoise postOTL38_12HoursNoise postOTL38_24_2HoursNoise];
backgroundNoiseMouse2 = [postOTL38_3HoursNoise_2 postOTL38_6HoursNoise_2 postOTL38_9HoursNoise_2 postOTL38_12HoursNoise_2 postOTL38_24HoursNoise_2];
backgroundNoiseMouse3 = [postOTL38_3HoursNoise_3 postOTL38_6HoursNoise_3 postOTL38_9HoursNoise_3 postOTL38_12HoursNoise_3 postOTL38_24HoursNoise_3];

backgroundNoiseRatioMouse1 = [postOTL38_3HoursNoiseRatio postOTL38_6HoursNoiseRatio postOTL38_9HoursNoiseRatio postOTL38_12HoursNoiseRatio postOTL38_24_2HoursNoiseRatio];
backgroundNoiseRatioMouse2 = [postOTL38_3HoursNoiseRatio_2 postOTL38_6HoursNoiseRatio_2 postOTL38_9HoursNoiseRatio_2 postOTL38_12HoursNoiseRatio_2 postOTL38_24HoursNoiseRatio_2];
backgroundNoiseRatioMouse3 = [postOTL38_3HoursNoiseRatio_3 postOTL38_6HoursNoiseRatio_3 postOTL38_9HoursNoiseRatio_3 postOTL38_12HoursNoiseRatio_3 postOTL38_24HoursNoiseRatio_3];

backgroundNoiseRatioMean = [meanPostOTL38_3HoursNoiseRatio meanPostOTL38_6HoursNoiseRatio meanPostOTL38_9HoursNoiseRatio meanPostOTL38_12HoursNoiseRatio meanPostOTL38_24HoursNoiseRatio];
backgroundNoiseRatioSTD = [stdPostOTL38_3HoursNoiseRatio stdPostOTL38_6HoursNoiseRatio stdPostOTL38_9HoursNoiseRatio stdPostOTL38_12HoursNoiseRatio stdPostOTL38_24HoursNoiseRatio];

MarkerSize = 15;
lineWidth = 1;
fontSize = 40;
figure(35);
y = tiledlayout(1,4);
nexttile(1)
plot(timePoints, backgroundSignalsMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
hold on
plot(timePoints, backgroundSignalsMouse2,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundSignalsMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
legend({'Mouse 1','Mouse 2','Mouse 3'})
xticks( 0:3:24);
ylim([0 50000]);
% xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Background Signal (nA)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(2);
plot(timePoints, backgroundSignalRatioMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
hold on
plot(timePoints, backgroundSignalRatioMouse2,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundSignalRatioMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundSignalRatioMean,-backgroundSignalRatioSTD,backgroundSignalRatioSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
ylim([0 6]);
yticks(0:0.5:6);
yticklabels({'0','','1','','2','','3','','4','','5','','6'})
xticks( 0:3:24);
% xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Background Signal (Normalized to Baseline)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
hold off;
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(3)
plot(timePoints, backgroundNoiseMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
hold on
plot(timePoints, backgroundNoiseMouse2,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundNoiseMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
legend({'Mouse 1','Mouse 2','Mouse 3'})
xticks( 0:3:24);
ylim([0 80]);
yticks(0:5:80);
yticklabels({'0','','10','','20','','30','','40','','50','','60','','70','','80'});
% xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Noise (nA)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(4)
plot(timePoints, backgroundNoiseRatioMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
hold on
plot(timePoints, backgroundNoiseRatioMouse2,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundNoiseRatioMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundNoiseRatioMean,-backgroundNoiseRatioSTD,backgroundNoiseRatioSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
xticks( 0:3:24);
ylim([0 6]);
yticks(0:0.5:6);
yticklabels({'0','','1','','2','','3','','4','','5','','6'})
% xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Noise (Normalized to Baseline)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
% hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
xlabel(y,{'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Plotting the original data of the OTL38 scans
fontSize = 40;
figure(36);
y = tiledlayout(6,3);   
%Mouse 1
nexttile(1)
plot(preOTL38Baseline.time,preOTL38Baseline.data(:,2))
axis = gca;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
xticklabels({'','','','','','',''})
title('OTL38 Mouse 1','FontSize',fontSize,'FontWeight','bold','FontName','Arial');
legend('Baseline','Location','southeast')
nexttile(4)
plot(postOTL38_3Hours.time,postOTL38_3Hours.data(:,2))
axis = gca;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
xticklabels({'','','','','','',''})
legend('3 Hours Post OTL38','Location','southeast')
nexttile(7)
plot(postOTL38_6Hours.time,postOTL38_6Hours.data(:,2))
axis = gca;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
xticklabels({'','','','','','',''})
legend('6 Hours Post OTL38','Location','southeast')
nexttile(10)
plot(postOTL38_9Hours.time,postOTL38_9Hours.data(:,2))
axis = gca;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
xticklabels({'','','','','','',''})
legend('9 Hours Post OTL38','Location','southeast')
nexttile(13)
plot(postOTL38_12Hours.time,postOTL38_12Hours.data(:,2))
axis = gca;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
xticklabels({'','','','','','',''})
legend('12 Hours Post OTL38','Location','southeast')
nexttile(16)
plot(postOTL38_24Hours.time,postOTL38_24Hours.data(:,2))
axis = gca;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
legend('24 Hours Post OTL38','Location','southeast')
%Mouse 2
nexttile(2)
plot(preOTL38Baseline_2.time,preOTL38Baseline_2.data(:,2))
axis = gca;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
title('OTL38 Mouse 2','FontSize',fontSize,'FontWeight','bold','FontName','Arial');
legend('Baseline','Location','southeast')
xticklabels({'','','','','','',''})
nexttile(5)
plot(postOTL38_3Hours_2.time,postOTL38_3Hours_2.data(:,2))
axis = gca;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
xticklabels({'','','','','','',''})
legend('3 Hours Post OTL38','Location','southeast')
nexttile(8)
plot(postOTL38_6Hours_2.time,postOTL38_6Hours_2.data(:,2))
axis = gca;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
xticklabels({'','','','','','',''})
legend('6 Hours Post OTL38','Location','southeast')
nexttile(11)
plot(postOTL38_9Hours_2.time,postOTL38_9Hours_2.data(:,2))
axis = gca;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
xticklabels({'','','','','','',''})
legend('9 Hours Post OTL38','Location','southeast')
nexttile(14)
plot(postOTL38_12Hours_2.time,postOTL38_12Hours_2.data(:,2))
axis = gca;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
xticklabels({'','','','','','',''})
legend('12 Hours Post OTL38','Location','southeast')
nexttile(17)
plot(postOTL38_24Hours_2.time,postOTL38_24Hours_2.data(:,2))
axis = gca;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
legend('24 Hours Post OTL38','Location','southeast')
%Mouse 3
nexttile(3)
xlim([0 600]);
plot(preOTL38Baseline_3.time,preOTL38Baseline_3.data(:,2))
axis = gca;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
xticklabels({'','','','','','',''})
title('OTL38 Mouse 3','FontSize',fontSize,'FontWeight','bold','FontName','Arial');
legend('Baseline','Location','southeast')
xlim([0 600]);
nexttile(6)
plot(postOTL38_3Hours_3.time,postOTL38_3Hours_3.data(:,2))
axis = gca;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
xlim([0 600]);
xticklabels({'','','','','','',''})
legend('3 Hours Post OTL38','Location','southeast')
nexttile(9)
plot(postOTL38_6Hours_3.time,postOTL38_6Hours_3.data(:,2))
axis = gca;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
xlim([0 600]);
xticklabels({'','','','','','',''})
legend('6 Hours Post OTL38','Location','southeast')
nexttile(12)
plot(postOTL38_9Hours_3.time,postOTL38_9Hours_3.data(:,2))
axis = gca;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
xlim([0 600]);
xticklabels({'','','','','','',''})
legend('9 Hours Post OTL38','Location','southeast')
nexttile(15)
plot(postOTL38_12Hours_3.time,postOTL38_12Hours_3.data(:,2))
axis = gca;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
xlim([0 600]);
xticklabels({'','','','','','',''})
legend('12 Hours Post OTL38','Location','southeast')
nexttile(18)
plot(postOTL38_24Hours_3.time,postOTL38_24Hours_3.data(:,2))
axis = gca;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
xlim([0 600]);
legend('24 Hours Post OTL38','Location','southeast')
xlabel(y,'Time (s)','FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel(y,'NIR-DiFC Signal (nA)','FontSize',fontSize,'FontWeight','bold','FontName','Arial');
%%
% plot of the background ratio (mean and std of three mice) and noise ratio  (mean and std of three mice) of the 3 OTL38 clearance mice with the proper scalling and such

timePoints = [3, 6, 9, 12, 24];

backgroundNoiseMouse1 = [postOTL38_3HoursNoise postOTL38_6HoursNoise postOTL38_9HoursNoise postOTL38_12HoursNoise postOTL38_24_2HoursNoise];
backgroundNoiseMouse2 = [postOTL38_3HoursNoise_2 postOTL38_6HoursNoise_2 postOTL38_9HoursNoise_2 postOTL38_12HoursNoise_2 postOTL38_24HoursNoise_2];
backgroundNoiseMouse3 = [postOTL38_3HoursNoise_3 postOTL38_6HoursNoise_3 postOTL38_9HoursNoise_3 postOTL38_12HoursNoise_3 postOTL38_24HoursNoise_3];

backgroundNoiseRatioMouse1 = [postOTL38_3HoursNoiseRatio postOTL38_6HoursNoiseRatio postOTL38_9HoursNoiseRatio postOTL38_12HoursNoiseRatio postOTL38_24_2HoursNoiseRatio];
backgroundNoiseRatioMouse2 = [postOTL38_3HoursNoiseRatio_2 postOTL38_6HoursNoiseRatio_2 postOTL38_9HoursNoiseRatio_2 postOTL38_12HoursNoiseRatio_2 postOTL38_24HoursNoiseRatio_2];
backgroundNoiseRatioMouse3 = [postOTL38_3HoursNoiseRatio_3 postOTL38_6HoursNoiseRatio_3 postOTL38_9HoursNoiseRatio_3 postOTL38_12HoursNoiseRatio_3 postOTL38_24HoursNoiseRatio_3];

backgroundNoiseRatioMean = [meanPostOTL38_3HoursNoiseRatio meanPostOTL38_6HoursNoiseRatio meanPostOTL38_9HoursNoiseRatio meanPostOTL38_12HoursNoiseRatio meanPostOTL38_24HoursNoiseRatio];
backgroundNoiseRatioSTD = [stdPostOTL38_3HoursNoiseRatio stdPostOTL38_6HoursNoiseRatio stdPostOTL38_9HoursNoiseRatio stdPostOTL38_12HoursNoiseRatio stdPostOTL38_24HoursNoiseRatio];


backgroundSignalsMouse1 = [mean(postOTL38_3HoursBackground) mean(postOTL38_6HoursBackground) mean(postOTL38_9HoursBackground) mean(postOTL38_12HoursBackground) mean(postOTL38_24_2HoursBackground)];
backgroundSignalsMouse2 = [ mean(postOTL38_3HoursBackground_2) mean(postOTL38_6HoursBackground_2) mean(postOTL38_9HoursBackground_2) mean(postOTL38_12HoursBackground_2) mean(postOTL38_24HoursBackground_2)];
backgroundSignalsMouse3 = [ mean(postOTL38_3HoursBackground_3) mean(postOTL38_6HoursBackground_3) mean(postOTL38_9HoursBackground_3) mean(postOTL38_12HoursBackground_3) mean(postOTL38_24HoursBackground_3)];

backgroundSignalRatioMouse1 = [postOTL38_3HoursBackgroundRatio postOTL38_6HoursBackgroundRatio postOTL38_9HoursBackgroundRatio postOTL38_12HoursBackgroundRatio postOTL38_24_2HoursBackgroundRatio]; 
backgroundSignalRatioMouse2 = [postOTL38_3HoursBackgroundRatio_2 postOTL38_6HoursBackgroundRatio_2 postOTL38_9HoursBackgroundRatio_2 postOTL38_12HoursBackgroundRatio_2  postOTL38_24HoursBackgroundRatio_2]; 
backgroundSignalRatioMouse3 = [postOTL38_3HoursBackgroundRatio_3 postOTL38_6HoursBackgroundRatio_3 postOTL38_9HoursBackgroundRatio_3 postOTL38_12HoursBackgroundRatio_3  postOTL38_24HoursBackgroundRatio_3]; 

backgroundSignalRatioMean = [meanPostOTL38_3HoursBackgroundRatio meanPostOTL38_6HoursBackgroundRatio meanPostOTL38_9HoursBackgroundRatio meanPostOTL38_12HoursBackgroundRatio  meanPostOTL38_24HoursBackgroundRatio];
backgroundSignalRatioSTD = [stdPostOTL38_3HoursBackgroundRatio stdPostOTL38_6HoursBackgroundRatio stdPostOTL38_9HoursBackgroundRatio stdPostOTL38_12HoursBackgroundRatio  stdPostOTL38_24HoursBackgroundRatio];
MarkerSize = 15;
lineWidth = 1;

figure(37);
tiledlayout(1,4);
nexttile(1);
plot(timePoints, backgroundSignalRatioMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
hold on
plot(timePoints, backgroundSignalRatioMouse2,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundSignalRatioMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundSignalRatioMean,-backgroundSignalRatioSTD,backgroundSignalRatioSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
ylim([0 6]);
xticks( 0:3:24);
xlabel({'Post OTL38 Injection (Hours)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
ylabel({'Background Signal (Normalized to Baseline)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
hold off;
axis = gca;
box on;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(2)
plot(timePoints, backgroundNoiseRatioMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
hold on
plot(timePoints, backgroundNoiseRatioMouse2,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundNoiseRatioMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundNoiseRatioMean,-backgroundNoiseRatioSTD,backgroundNoiseRatioSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
xticks( 0:3:24);
ylim([0 6]);
xlabel({'Post OTL38 Injection (Hours)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
ylabel({'Background Noise (Normalized to Baseline)'},'FontSize',40,'FontWeight','bold','FontName','Arial');
hold off
axis = gca;
box on;
axis.FontSize = 40;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;                                                                                                                                                                                      
%%
% plot of the background ratio (mean and std of three OTL38 clearance mice) and noise ratio (mean and std of three OTL38 mice) and the calculated noise ratio for the 3 control mice and the 3 clearance OTL38 mice using mean background ratio from the OTL38 clearance mice

timePoints = [3, 6, 9, 12, 24];

%OTL38 Clearance data 
backgroundNoiseRatioMouse1 = [postOTL38_3HoursNoiseRatio postOTL38_6HoursNoiseRatio postOTL38_9HoursNoiseRatio postOTL38_12HoursNoiseRatio postOTL38_24_2HoursNoiseRatio];
backgroundNoiseRatioMouse2 = [postOTL38_3HoursNoiseRatio_2 postOTL38_6HoursNoiseRatio_2 postOTL38_9HoursNoiseRatio_2 postOTL38_12HoursNoiseRatio_2 postOTL38_24HoursNoiseRatio_2];
backgroundNoiseRatioMouse3 = [postOTL38_3HoursNoiseRatio_3 postOTL38_6HoursNoiseRatio_3 postOTL38_9HoursNoiseRatio_3 postOTL38_12HoursNoiseRatio_3 postOTL38_24HoursNoiseRatio_3];

backgroundNoiseRatioMean = [meanPostOTL38_3HoursNoiseRatio meanPostOTL38_6HoursNoiseRatio meanPostOTL38_9HoursNoiseRatio meanPostOTL38_12HoursNoiseRatio meanPostOTL38_24HoursNoiseRatio];
backgroundNoiseRatioSTD = [stdPostOTL38_3HoursNoiseRatio stdPostOTL38_6HoursNoiseRatio stdPostOTL38_9HoursNoiseRatio stdPostOTL38_12HoursNoiseRatio stdPostOTL38_24HoursNoiseRatio];


backgroundSignalsMouse1 = [mean(postOTL38_3HoursBackground) mean(postOTL38_6HoursBackground) mean(postOTL38_9HoursBackground) mean(postOTL38_12HoursBackground) mean(postOTL38_24_2HoursBackground)];
backgroundSignalsMouse2 = [ mean(postOTL38_3HoursBackground_2) mean(postOTL38_6HoursBackground_2) mean(postOTL38_9HoursBackground_2) mean(postOTL38_12HoursBackground_2) mean(postOTL38_24HoursBackground_2)];
backgroundSignalsMouse3 = [ mean(postOTL38_3HoursBackground_3) mean(postOTL38_6HoursBackground_3) mean(postOTL38_9HoursBackground_3) mean(postOTL38_12HoursBackground_3) mean(postOTL38_24HoursBackground_3)];

backgroundSignalRatioMouse1 = [postOTL38_3HoursBackgroundRatio postOTL38_6HoursBackgroundRatio postOTL38_9HoursBackgroundRatio postOTL38_12HoursBackgroundRatio postOTL38_24_2HoursBackgroundRatio]; 
backgroundSignalRatioMouse2 = [postOTL38_3HoursBackgroundRatio_2 postOTL38_6HoursBackgroundRatio_2 postOTL38_9HoursBackgroundRatio_2 postOTL38_12HoursBackgroundRatio_2  postOTL38_24HoursBackgroundRatio_2]; 
backgroundSignalRatioMouse3 = [postOTL38_3HoursBackgroundRatio_3 postOTL38_6HoursBackgroundRatio_3 postOTL38_9HoursBackgroundRatio_3 postOTL38_12HoursBackgroundRatio_3  postOTL38_24HoursBackgroundRatio_3]; 

backgroundSignalRatioMean = [meanPostOTL38_3HoursBackgroundRatio meanPostOTL38_6HoursBackgroundRatio meanPostOTL38_9HoursBackgroundRatio meanPostOTL38_12HoursBackgroundRatio  meanPostOTL38_24HoursBackgroundRatio];
backgroundSignalRatioSTD = [stdPostOTL38_3HoursBackgroundRatio stdPostOTL38_6HoursBackgroundRatio stdPostOTL38_9HoursBackgroundRatio stdPostOTL38_12HoursBackgroundRatio  stdPostOTL38_24HoursBackgroundRatio];

%Caclulated data using un-injected control mice background and the mean background ratio at each time point
backgroundNoiseRatioControlMouse1Calculated = [controlMouse1CalculatedNoise3HoursRatio controlMouse1CalculatedNoise6HoursRatio controlMouse1CalculatedNoise9HoursRatio controlMouse1CalculatedNoise12HoursRatio controlMouse1CalculatedNoise24HoursRatio]; 
backgroundNoiseRatioControlMouse2Calculated = [controlMouse2CalculatedNoise3HoursRatio controlMouse2CalculatedNoise6HoursRatio controlMouse2CalculatedNoise9HoursRatio controlMouse2CalculatedNoise12HoursRatio controlMouse2CalculatedNoise24HoursRatio]; 
backgroundNoiseRatioControlMouse3Calculated = [controlMouse3CalculatedNoise3HoursRatio controlMouse3CalculatedNoise6HoursRatio controlMouse3CalculatedNoise9HoursRatio controlMouse3CalculatedNoise12HoursRatio controlMouse3CalculatedNoise24HoursRatio]; 

backgroundNoiseRatioControlMiceCalculatedMean =[meanControlMouseCaculatedNoise3HoursPostOTL38Ratio meanControlMouseCaculatedNoise6HoursPostOTL38Ratio meanControlMouseCaculatedNoise9HoursPostOTL38Ratio meanControlMouseCaculatedNoise12HoursPostOTL38Ratio meanControlMouseCaculatedNoise24HoursPostOTL38Ratio];
backgroundNoiseRatioControlMiceCalculatedSTD = [stdControlMouseCaculatedNoise3HoursPostOTL38Ratio stdControlMouseCaculatedNoise6HoursPostOTL38Ratio stdControlMouseCaculatedNoise9HoursPostOTL38Ratio stdControlMouseCaculatedNoise12HoursPostOTL38Ratio stdControlMouseCaculatedNoise24HoursPostOTL38Ratio];

%Calculated data using baseline background of each OTL38 mouse and multiplying by the ratio at each time point and then cacluating noise and noise ratio

backgroundNoiseRatioOTL38Mouse1Calculated =[OTL38Mouse1CalculatedNoise3HoursRatio(2) OTL38Mouse1CalculatedNoise6HoursRatio(2) OTL38Mouse1CalculatedNoise9HoursRatio(2) OTL38Mouse1CalculatedNoise12HoursRatio(2) OTL38Mouse1CalculatedNoise24HoursRatio(2)];
backgroundNoiseRatioOTL38Mouse2Calculated =[OTL38Mouse2CalculatedNoise3HoursRatio(2) OTL38Mouse2CalculatedNoise6HoursRatio(2) OTL38Mouse2CalculatedNoise9HoursRatio(2) OTL38Mouse2CalculatedNoise12HoursRatio(2) OTL38Mouse2CalculatedNoise24HoursRatio(2)];
backgroundNoiseRatioOTL38Mouse3Calculated =[OTL38Mouse3CalculatedNoise3HoursRatio(2) OTL38Mouse3CalculatedNoise6HoursRatio(2) OTL38Mouse3CalculatedNoise9HoursRatio(2) OTL38Mouse3CalculatedNoise12HoursRatio(2) OTL38Mouse3CalculatedNoise24HoursRatio(2)];

backgroundNoiseRatioOTL38MiceCalculatedMean =  [meanOTL38MiceCalculatedNoise3HourRatio meanOTL38MiceCalculatedNoise6HourRatio meanOTL38MiceCalculatedNoise9HourRatio meanOTL38MiceCalculatedNoise12HourRatio meanOTL38MiceCalculatedNoise24HourRatio];
backgroundNoiseRatioOTL38MiceCalculatedSTD = [stdOTL38MiceCalculatedNoise3HourRatio stdOTL38MiceCalculatedNoise6HourRatio stdOTL38MiceCalculatedNoise9HourRatio stdOTL38MiceCalculatedNoise12HourRatio stdOTL38MiceCalculatedNoise24HourRatio];

MarkerSize = 15;
lineWidth = 1;
fontSize = 15;
figure(38);
tiledlayout(1,4);
nexttile(1);
plot(timePoints, backgroundSignalRatioMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
hold on
plot(timePoints, backgroundSignalRatioMouse2,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundSignalRatioMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundSignalRatioMean,-backgroundSignalRatioSTD,backgroundSignalRatioSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
ylim([0 6]);
xticks( 0:3:24);
yticks(0:0.5:6);
yticklabels({'0','','1','','2','','3','','4','','5','','6'})
xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Background Signal (Normalized to Baseline)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
hold off;
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(2)
plot(timePoints, backgroundNoiseRatioMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
hold on
plot(timePoints, backgroundNoiseRatioMouse2,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundNoiseRatioMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundNoiseRatioMean,-backgroundNoiseRatioSTD,backgroundNoiseRatioSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
xticks( 0:3:24);
ylim([0 6]);
yticks(0:0.5:6);
yticklabels({'0','','1','','2','','3','','4','','5','','6'})
xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Background Noise (Normalized to Baseline)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(3)
plot(timePoints, backgroundNoiseRatioOTL38Mouse1Calculated,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
hold on
plot(timePoints, backgroundNoiseRatioOTL38Mouse2Calculated,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundNoiseRatioOTL38Mouse3Calculated,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundNoiseRatioOTL38MiceCalculatedMean,-backgroundNoiseRatioOTL38MiceCalculatedSTD,backgroundNoiseRatioOTL38MiceCalculatedSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
xticks( 0:3:24);
ylim([0 6]);
yticks(0:0.5:6);
yticklabels({'0','','1','','2','','3','','4','','5','','6'})
xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Background Noise (Normalized to Baseline)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
% title('Calculated using OTL38 Mice Baseline Background','FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(4)
plot(timePoints, backgroundNoiseRatioControlMouse1Calculated,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
hold on
plot(timePoints, backgroundNoiseRatioControlMouse2Calculated,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundNoiseRatioControlMouse3Calculated,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundNoiseRatioControlMiceCalculatedMean,-backgroundNoiseRatioControlMiceCalculatedSTD,backgroundNoiseRatioControlMiceCalculatedSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
xticks(0:3:24);
ylim([0 6]);
yticks(0:0.5:6);
yticklabels({'0','','1','','2','','3','','4','','5','','6'})
xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Background Noise (Normalized to Baseline)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
% title('Calculated using Un-injected Control Mice Baseline Background','FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;

%%
% plot of the background ratio (mean and std of three OTL38 clearance mice) and noise ratio (mean and std of three OTL38 mice) and the calculated noise ratio for the 3 control mice and the 3 clearance OTL38 mice using mean background ratio from the OTL38 clearance mice

timePoints = [3, 6, 9, 12, 24];

%OTL38 Clearance data 
backgroundNoiseRatioMouse1 = [postOTL38_3HoursNoiseRatio postOTL38_6HoursNoiseRatio postOTL38_9HoursNoiseRatio postOTL38_12HoursNoiseRatio postOTL38_24_2HoursNoiseRatio];
backgroundNoiseRatioMouse2 = [postOTL38_3HoursNoiseRatio_2 postOTL38_6HoursNoiseRatio_2 postOTL38_9HoursNoiseRatio_2 postOTL38_12HoursNoiseRatio_2 postOTL38_24HoursNoiseRatio_2];
backgroundNoiseRatioMouse3 = [postOTL38_3HoursNoiseRatio_3 postOTL38_6HoursNoiseRatio_3 postOTL38_9HoursNoiseRatio_3 postOTL38_12HoursNoiseRatio_3 postOTL38_24HoursNoiseRatio_3];

backgroundNoiseRatioMean = [meanPostOTL38_3HoursNoiseRatio meanPostOTL38_6HoursNoiseRatio meanPostOTL38_9HoursNoiseRatio meanPostOTL38_12HoursNoiseRatio meanPostOTL38_24HoursNoiseRatio];
backgroundNoiseRatioSTD = [stdPostOTL38_3HoursNoiseRatio stdPostOTL38_6HoursNoiseRatio stdPostOTL38_9HoursNoiseRatio stdPostOTL38_12HoursNoiseRatio stdPostOTL38_24HoursNoiseRatio];


backgroundSignalsMouse1 = [mean(postOTL38_3HoursBackground) mean(postOTL38_6HoursBackground) mean(postOTL38_9HoursBackground) mean(postOTL38_12HoursBackground) mean(postOTL38_24_2HoursBackground)];
backgroundSignalsMouse2 = [ mean(postOTL38_3HoursBackground_2) mean(postOTL38_6HoursBackground_2) mean(postOTL38_9HoursBackground_2) mean(postOTL38_12HoursBackground_2) mean(postOTL38_24HoursBackground_2)];
backgroundSignalsMouse3 = [ mean(postOTL38_3HoursBackground_3) mean(postOTL38_6HoursBackground_3) mean(postOTL38_9HoursBackground_3) mean(postOTL38_12HoursBackground_3) mean(postOTL38_24HoursBackground_3)];

backgroundSignalRatioMouse1 = [postOTL38_3HoursBackgroundRatio postOTL38_6HoursBackgroundRatio postOTL38_9HoursBackgroundRatio postOTL38_12HoursBackgroundRatio postOTL38_24_2HoursBackgroundRatio]; 
backgroundSignalRatioMouse2 = [postOTL38_3HoursBackgroundRatio_2 postOTL38_6HoursBackgroundRatio_2 postOTL38_9HoursBackgroundRatio_2 postOTL38_12HoursBackgroundRatio_2  postOTL38_24HoursBackgroundRatio_2]; 
backgroundSignalRatioMouse3 = [postOTL38_3HoursBackgroundRatio_3 postOTL38_6HoursBackgroundRatio_3 postOTL38_9HoursBackgroundRatio_3 postOTL38_12HoursBackgroundRatio_3  postOTL38_24HoursBackgroundRatio_3]; 

backgroundSignalRatioMean = [meanPostOTL38_3HoursBackgroundRatio meanPostOTL38_6HoursBackgroundRatio meanPostOTL38_9HoursBackgroundRatio meanPostOTL38_12HoursBackgroundRatio  meanPostOTL38_24HoursBackgroundRatio];
backgroundSignalRatioSTD = [stdPostOTL38_3HoursBackgroundRatio stdPostOTL38_6HoursBackgroundRatio stdPostOTL38_9HoursBackgroundRatio stdPostOTL38_12HoursBackgroundRatio  stdPostOTL38_24HoursBackgroundRatio];

%Caclulated data using un-injected control mice background and the mean background ratio at each time point
backgroundNoiseRatioControlMouse1Calculated = [controlMouse1CalculatedNoise3HoursRatio controlMouse1CalculatedNoise6HoursRatio controlMouse1CalculatedNoise9HoursRatio controlMouse1CalculatedNoise12HoursRatio controlMouse1CalculatedNoise24HoursRatio]; 
backgroundNoiseRatioControlMouse2Calculated = [controlMouse2CalculatedNoise3HoursRatio controlMouse2CalculatedNoise6HoursRatio controlMouse2CalculatedNoise9HoursRatio controlMouse2CalculatedNoise12HoursRatio controlMouse2CalculatedNoise24HoursRatio]; 
backgroundNoiseRatioControlMouse3Calculated = [controlMouse3CalculatedNoise3HoursRatio controlMouse3CalculatedNoise6HoursRatio controlMouse3CalculatedNoise9HoursRatio controlMouse3CalculatedNoise12HoursRatio controlMouse3CalculatedNoise24HoursRatio]; 

backgroundNoiseRatioControlMiceCalculatedMean =[meanControlMouseCaculatedNoise3HoursPostOTL38Ratio meanControlMouseCaculatedNoise6HoursPostOTL38Ratio meanControlMouseCaculatedNoise9HoursPostOTL38Ratio meanControlMouseCaculatedNoise12HoursPostOTL38Ratio meanControlMouseCaculatedNoise24HoursPostOTL38Ratio];
backgroundNoiseRatioControlMiceCalculatedSTD = [stdControlMouseCaculatedNoise3HoursPostOTL38Ratio stdControlMouseCaculatedNoise6HoursPostOTL38Ratio stdControlMouseCaculatedNoise9HoursPostOTL38Ratio stdControlMouseCaculatedNoise12HoursPostOTL38Ratio stdControlMouseCaculatedNoise24HoursPostOTL38Ratio];

%Calculated data using baseline background of each OTL38 mouse and multiplying by the ratio at each time point and then cacluating noise and noise ratio

backgroundNoiseRatioOTL38Mouse1Calculated =[OTL38Mouse1CalculatedNoise3HoursRatio(2) OTL38Mouse1CalculatedNoise6HoursRatio(2) OTL38Mouse1CalculatedNoise9HoursRatio(2) OTL38Mouse1CalculatedNoise12HoursRatio(2) OTL38Mouse1CalculatedNoise24HoursRatio(2)];
backgroundNoiseRatioOTL38Mouse2Calculated =[OTL38Mouse2CalculatedNoise3HoursRatio(2) OTL38Mouse2CalculatedNoise6HoursRatio(2) OTL38Mouse2CalculatedNoise9HoursRatio(2) OTL38Mouse2CalculatedNoise12HoursRatio(2) OTL38Mouse2CalculatedNoise24HoursRatio(2)];
backgroundNoiseRatioOTL38Mouse3Calculated =[OTL38Mouse3CalculatedNoise3HoursRatio(2) OTL38Mouse3CalculatedNoise6HoursRatio(2) OTL38Mouse3CalculatedNoise9HoursRatio(2) OTL38Mouse3CalculatedNoise12HoursRatio(2) OTL38Mouse3CalculatedNoise24HoursRatio(2)];

backgroundNoiseRatioOTL38MiceCalculatedMean =  [meanOTL38MiceCalculatedNoise3HourRatio meanOTL38MiceCalculatedNoise6HourRatio meanOTL38MiceCalculatedNoise9HourRatio meanOTL38MiceCalculatedNoise12HourRatio meanOTL38MiceCalculatedNoise24HourRatio];
backgroundNoiseRatioOTL38MiceCalculatedSTD = [stdOTL38MiceCalculatedNoise3HourRatio stdOTL38MiceCalculatedNoise6HourRatio stdOTL38MiceCalculatedNoise9HourRatio stdOTL38MiceCalculatedNoise12HourRatio stdOTL38MiceCalculatedNoise24HourRatio];

MarkerSize = 15;
lineWidth = 1;
fontSize = 15;
figure(39);
tiledlayout(1,4);
nexttile(1);
% plot(timePoints, backgroundSignalRatioMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
% hold on
% plot(timePoints, backgroundSignalRatioMouse2,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
% plot(timePoints, backgroundSignalRatioMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundSignalRatioMean,-backgroundSignalRatioSTD,backgroundSignalRatioSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
% legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
ylim([0 6]);
xticks( 0:3:24);
yticks(0:0.5:6);
yticklabels({'0','','1','','2','','3','','4','','5','','6'})
xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Background Signal (Normalized to Baseline)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
% hold off;
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(2)
% plot(timePoints, backgroundNoiseRatioMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
% hold on
% plot(timePoints, backgroundNoiseRatioMouse2,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
% plot(timePoints, backgroundNoiseRatioMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundNoiseRatioMean,-backgroundNoiseRatioSTD,backgroundNoiseRatioSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
% legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
xticks( 0:3:24);
ylim([0 6]);
yticks(0:0.5:6);
yticklabels({'0','','1','','2','','3','','4','','5','','6'})
xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Background Noise (Normalized to Baseline)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
% hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(3)
% plot(timePoints, backgroundNoiseRatioOTL38Mouse1Calculated,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
% hold on
% plot(timePoints, backgroundNoiseRatioOTL38Mouse2Calculated,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
% plot(timePoints, backgroundNoiseRatioOTL38Mouse3Calculated,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundNoiseRatioOTL38MiceCalculatedMean,-backgroundNoiseRatioOTL38MiceCalculatedSTD,backgroundNoiseRatioOTL38MiceCalculatedSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
% legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
xticks( 0:3:24);
ylim([0 6]);
yticks(0:0.5:6);
yticklabels({'0','','1','','2','','3','','4','','5','','6'})
xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Background Noise (Normalized to Baseline)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
title({'Calculated using OTL38', 'Mice Baseline Background'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(4)
% plot(timePoints, backgroundNoiseRatioControlMouse1Calculated,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
% hold on
% plot(timePoints, backgroundNoiseRatioControlMouse2Calculated,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
% plot(timePoints, backgroundNoiseRatioControlMouse3Calculated,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundNoiseRatioControlMiceCalculatedMean,-backgroundNoiseRatioControlMiceCalculatedSTD,backgroundNoiseRatioControlMiceCalculatedSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
% legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
xticks(0:3:24);
ylim([0 6]);
yticks(0:0.5:6);
yticklabels({'0','','1','','2','','3','','4','','5','','6'})
xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Background Noise (Normalized to Baseline)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
title({'Calculated using Un-injected', 'Control Mice Baseline Background'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;

%%
% plot of the background ratio and noise ratio (mean and std of three OTL38 clearance mice) and background ratio and noise ratio calculated for the 3 control mice

timePoints = [3, 6, 9, 12, 24];

%OTL38 Clearance data 
backgroundNoiseRatioMouse1 = [postOTL38_3HoursNoiseRatio postOTL38_6HoursNoiseRatio postOTL38_9HoursNoiseRatio postOTL38_12HoursNoiseRatio postOTL38_24_2HoursNoiseRatio];
backgroundNoiseRatioMouse2 = [postOTL38_3HoursNoiseRatio_2 postOTL38_6HoursNoiseRatio_2 postOTL38_9HoursNoiseRatio_2 postOTL38_12HoursNoiseRatio_2 postOTL38_24HoursNoiseRatio_2];
backgroundNoiseRatioMouse3 = [postOTL38_3HoursNoiseRatio_3 postOTL38_6HoursNoiseRatio_3 postOTL38_9HoursNoiseRatio_3 postOTL38_12HoursNoiseRatio_3 postOTL38_24HoursNoiseRatio_3];

backgroundNoiseRatioMean = [meanPostOTL38_3HoursNoiseRatio meanPostOTL38_6HoursNoiseRatio meanPostOTL38_9HoursNoiseRatio meanPostOTL38_12HoursNoiseRatio meanPostOTL38_24HoursNoiseRatio];
backgroundNoiseRatioSTD = [stdPostOTL38_3HoursNoiseRatio stdPostOTL38_6HoursNoiseRatio stdPostOTL38_9HoursNoiseRatio stdPostOTL38_12HoursNoiseRatio stdPostOTL38_24HoursNoiseRatio];


backgroundSignalsMouse1 = [mean(postOTL38_3HoursBackground) mean(postOTL38_6HoursBackground) mean(postOTL38_9HoursBackground) mean(postOTL38_12HoursBackground) mean(postOTL38_24_2HoursBackground)];
backgroundSignalsMouse2 = [ mean(postOTL38_3HoursBackground_2) mean(postOTL38_6HoursBackground_2) mean(postOTL38_9HoursBackground_2) mean(postOTL38_12HoursBackground_2) mean(postOTL38_24HoursBackground_2)];
backgroundSignalsMouse3 = [ mean(postOTL38_3HoursBackground_3) mean(postOTL38_6HoursBackground_3) mean(postOTL38_9HoursBackground_3) mean(postOTL38_12HoursBackground_3) mean(postOTL38_24HoursBackground_3)];

backgroundSignalRatioMouse1 = [postOTL38_3HoursBackgroundRatio postOTL38_6HoursBackgroundRatio postOTL38_9HoursBackgroundRatio postOTL38_12HoursBackgroundRatio postOTL38_24_2HoursBackgroundRatio]; 
backgroundSignalRatioMouse2 = [postOTL38_3HoursBackgroundRatio_2 postOTL38_6HoursBackgroundRatio_2 postOTL38_9HoursBackgroundRatio_2 postOTL38_12HoursBackgroundRatio_2  postOTL38_24HoursBackgroundRatio_2]; 
backgroundSignalRatioMouse3 = [postOTL38_3HoursBackgroundRatio_3 postOTL38_6HoursBackgroundRatio_3 postOTL38_9HoursBackgroundRatio_3 postOTL38_12HoursBackgroundRatio_3  postOTL38_24HoursBackgroundRatio_3]; 

backgroundSignalRatioMean = [meanPostOTL38_3HoursBackgroundRatio meanPostOTL38_6HoursBackgroundRatio meanPostOTL38_9HoursBackgroundRatio meanPostOTL38_12HoursBackgroundRatio  meanPostOTL38_24HoursBackgroundRatio];
backgroundSignalRatioSTD = [stdPostOTL38_3HoursBackgroundRatio stdPostOTL38_6HoursBackgroundRatio stdPostOTL38_9HoursBackgroundRatio stdPostOTL38_12HoursBackgroundRatio  stdPostOTL38_24HoursBackgroundRatio];

%Caclulated data using un-injected control mice background and the mean background ratio at each time point
backgroundNoiseRatioControlMouse1Calculated = [controlMouse1CalculatedNoise3HoursRatio controlMouse1CalculatedNoise6HoursRatio controlMouse1CalculatedNoise9HoursRatio controlMouse1CalculatedNoise12HoursRatio controlMouse1CalculatedNoise24HoursRatio]; 
backgroundNoiseRatioControlMouse2Calculated = [controlMouse2CalculatedNoise3HoursRatio controlMouse2CalculatedNoise6HoursRatio controlMouse2CalculatedNoise9HoursRatio controlMouse2CalculatedNoise12HoursRatio controlMouse2CalculatedNoise24HoursRatio]; 
backgroundNoiseRatioControlMouse3Calculated = [controlMouse3CalculatedNoise3HoursRatio controlMouse3CalculatedNoise6HoursRatio controlMouse3CalculatedNoise9HoursRatio controlMouse3CalculatedNoise12HoursRatio controlMouse3CalculatedNoise24HoursRatio]; 

backgroundNoiseRatioControlMiceCalculatedMean =[meanControlMouseCaculatedNoise3HoursPostOTL38Ratio meanControlMouseCaculatedNoise6HoursPostOTL38Ratio meanControlMouseCaculatedNoise9HoursPostOTL38Ratio meanControlMouseCaculatedNoise12HoursPostOTL38Ratio meanControlMouseCaculatedNoise24HoursPostOTL38Ratio];
backgroundNoiseRatioControlMiceCalculatedSTD = [stdControlMouseCaculatedNoise3HoursPostOTL38Ratio stdControlMouseCaculatedNoise6HoursPostOTL38Ratio stdControlMouseCaculatedNoise9HoursPostOTL38Ratio stdControlMouseCaculatedNoise12HoursPostOTL38Ratio stdControlMouseCaculatedNoise24HoursPostOTL38Ratio];

backgroundSignalRatioControlMouse1Calculated = [controlMouse1CalculatedBackground3HoursRatio controlMouse1CalculatedBackground6HoursRatio controlMouse1CalculatedBackground9HoursRatio controlMouse1CalculatedBackground12HoursRatio controlMouse1CalculatedBackground24HoursRatio];
backgroundSignalRatioControlMouse2Calculated = [controlMouse2CalculatedBackground3HoursRatio controlMouse2CalculatedBackground6HoursRatio controlMouse2CalculatedBackground9HoursRatio controlMouse2CalculatedBackground12HoursRatio controlMouse2CalculatedBackground24HoursRatio];
backgroundSignalRatioControlMouse3Calculated = [controlMouse3CalculatedBackground3HoursRatio controlMouse3CalculatedBackground6HoursRatio controlMouse3CalculatedBackground9HoursRatio controlMouse3CalculatedBackground12HoursRatio controlMouse3CalculatedBackground24HoursRatio];

backgroundSignalRatioControlMiceCalculatedMean = [meanControlMouseCaculatedBackground3HoursPostOTL38Ratio meanControlMouseCaculatedBackground6HoursPostOTL38Ratio meanControlMouseCaculatedBackground9HoursPostOTL38Ratio meanControlMouseCaculatedBackground12HoursPostOTL38Ratio meanControlMouseCaculatedBackground24HoursPostOTL38Ratio];
backgroundSignalRatioControlMiceCalculatedSTD = [stdControlMouseCaculatedBackground3HoursPostOTL38Ratio stdControlMouseCaculatedBackground6HoursPostOTL38Ratio stdControlMouseCaculatedBackground9HoursPostOTL38Ratio stdControlMouseCaculatedBackground12HoursPostOTL38Ratio stdControlMouseCaculatedBackground24HoursPostOTL38Ratio];

%Calculated data using baseline background of each OTL38 mouse and multiplying by the ratio at each time point and then cacluating noise and noise ratio

backgroundNoiseRatioOTL38Mouse1Calculated =[OTL38Mouse1CalculatedNoise3HoursRatio(2) OTL38Mouse1CalculatedNoise6HoursRatio(2) OTL38Mouse1CalculatedNoise9HoursRatio(2) OTL38Mouse1CalculatedNoise12HoursRatio(2) OTL38Mouse1CalculatedNoise24HoursRatio(2)];
backgroundNoiseRatioOTL38Mouse2Calculated =[OTL38Mouse2CalculatedNoise3HoursRatio(2) OTL38Mouse2CalculatedNoise6HoursRatio(2) OTL38Mouse2CalculatedNoise9HoursRatio(2) OTL38Mouse2CalculatedNoise12HoursRatio(2) OTL38Mouse2CalculatedNoise24HoursRatio(2)];
backgroundNoiseRatioOTL38Mouse3Calculated =[OTL38Mouse3CalculatedNoise3HoursRatio(2) OTL38Mouse3CalculatedNoise6HoursRatio(2) OTL38Mouse3CalculatedNoise9HoursRatio(2) OTL38Mouse3CalculatedNoise12HoursRatio(2) OTL38Mouse3CalculatedNoise24HoursRatio(2)];

backgroundNoiseRatioOTL38MiceCalculatedMean =  [meanOTL38MiceCalculatedNoise3HourRatio meanOTL38MiceCalculatedNoise6HourRatio meanOTL38MiceCalculatedNoise9HourRatio meanOTL38MiceCalculatedNoise12HourRatio meanOTL38MiceCalculatedNoise24HourRatio];
backgroundNoiseRatioOTL38MiceCalculatedSTD = [stdOTL38MiceCalculatedNoise3HourRatio stdOTL38MiceCalculatedNoise6HourRatio stdOTL38MiceCalculatedNoise9HourRatio stdOTL38MiceCalculatedNoise12HourRatio stdOTL38MiceCalculatedNoise24HourRatio];

MarkerSize = 15;
lineWidth = 1;
fontSize = 40;
figure(40);
y = tiledlayout(1,4);
nexttile(1);
plot(timePoints, backgroundSignalRatioMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
hold on
plot(timePoints, backgroundSignalRatioMouse2,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundSignalRatioMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundSignalRatioMean,-backgroundSignalRatioSTD,backgroundSignalRatioSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
ylim([0 6]);
xticks( 0:3:24);
xticklabels({'0','','6','','12','','18','','24'});
yticks(0:0.5:6);
yticklabels({'0','','1','','2','','3','','4','','5','','6'})
% xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Background Signal (Normalized to Baseline)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
title('OTL38 Clearance Mice Values','FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off;
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(2)
plot(timePoints, backgroundNoiseRatioMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
hold on
plot(timePoints, backgroundNoiseRatioMouse2,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundNoiseRatioMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundNoiseRatioMean,-backgroundNoiseRatioSTD,backgroundNoiseRatioSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
xticks( 0:3:24);
xticklabels({'0','','6','','12','','18','','24'});
ylim([0 6]);
yticks(0:0.5:6);
yticklabels({'0','','1','','2','','3','','4','','5','','6'})
% xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Noise (Normalized to Baseline)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
title('OTL38 Clearance Mice Values','FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(3)
plot(timePoints, backgroundSignalRatioControlMouse1Calculated,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
hold on
plot(timePoints, backgroundSignalRatioControlMouse2Calculated,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundSignalRatioControlMouse3Calculated,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundSignalRatioControlMiceCalculatedMean,-backgroundSignalRatioControlMiceCalculatedSTD,backgroundSignalRatioControlMiceCalculatedSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
xticks(0:3:24);
xticklabels({'0','','6','','12','','18','','24'});
ylim([0 6]);
yticks(0:0.5:6);
yticklabels({'0','','1','','2','','3','','4','','5','','6'})
% xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Background Signal (Normalized to Baseline)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
title({'Calculated using Un-injected', 'Control Mice Baseline Background'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(4)
plot(timePoints, backgroundNoiseRatioControlMouse1Calculated,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
hold on
plot(timePoints, backgroundNoiseRatioControlMouse2Calculated,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundNoiseRatioControlMouse3Calculated,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundNoiseRatioControlMiceCalculatedMean,-backgroundNoiseRatioControlMiceCalculatedSTD,backgroundNoiseRatioControlMiceCalculatedSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
xticks( 0:3:24);
xticklabels({'0','','6','','12','','18','','24'});
ylim([0 6]);
yticks(0:0.5:6);
yticklabels({'0','','1','','2','','3','','4','','5','','6'})
% xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Noise (Normalized to Baseline)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
title({'Calculated using Un-injected', 'Control Mice Baseline Background'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
xlabel(y,{'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');

%%
% plot of the background  and noise of three OTL38 clearance mice and background and noise  calculated for the 3 control mice

timePoints = [3, 6, 9, 12, 24];

%OTL38 Clearance data 
backgroundSignalsMouse1 = [mean(postOTL38_3HoursBackground) mean(postOTL38_6HoursBackground) mean(postOTL38_9HoursBackground) mean(postOTL38_12HoursBackground) mean(postOTL38_24_2HoursBackground)];
backgroundSignalsMouse2 = [ mean(postOTL38_3HoursBackground_2) mean(postOTL38_6HoursBackground_2) mean(postOTL38_9HoursBackground_2) mean(postOTL38_12HoursBackground_2) mean(postOTL38_24HoursBackground_2)];
backgroundSignalsMouse3 = [ mean(postOTL38_3HoursBackground_3) mean(postOTL38_6HoursBackground_3) mean(postOTL38_9HoursBackground_3) mean(postOTL38_12HoursBackground_3) mean(postOTL38_24HoursBackground_3)];

backgroundNoiseMouse1 = [postOTL38_3HoursNoise postOTL38_6HoursNoise postOTL38_9HoursNoise postOTL38_12HoursNoise postOTL38_24_2HoursNoise];
backgroundNoiseMouse2 = [postOTL38_3HoursNoise_2 postOTL38_6HoursNoise_2 postOTL38_9HoursNoise_2 postOTL38_12HoursNoise_2 postOTL38_24HoursNoise_2];
backgroundNoiseMouse3 = [postOTL38_3HoursNoise_3 postOTL38_6HoursNoise_3 postOTL38_9HoursNoise_3 postOTL38_12HoursNoise_3 postOTL38_24HoursNoise_3];



%Caclulated data using un-injected control mice background and the mean background ratio at each time point
backgroundSignalsControlMouse1Calculated = [mean(controlMouse1Background3HoursPostOTL38(2)) mean(controlMouse1Background6HoursPostOTL38(2)) mean(controlMouse1Background9HoursPostOTL38(2)) mean(controlMouse1Background12HoursPostOTL38(2)) mean(controlMouse1Background24HoursPostOTL38(2))];
backgroundSignalsControlMouse2Calculated = [mean(controlMouse2Background3HoursPostOTL38(2)) mean(controlMouse2Background6HoursPostOTL38(2)) mean(controlMouse2Background9HoursPostOTL38(2)) mean(controlMouse2Background12HoursPostOTL38(2)) mean(controlMouse2Background24HoursPostOTL38(2))];
backgroundSignalsControlMouse3Calculated = [mean(controlMouse3Background3HoursPostOTL38(2)) mean(controlMouse3Background6HoursPostOTL38(2)) mean(controlMouse3Background9HoursPostOTL38(2)) mean(controlMouse3Background12HoursPostOTL38(2)) mean(controlMouse3Background24HoursPostOTL38(2))];

backgroundNoiseControlMouse1Calculated =  [controlMouse1Noise3HoursPostOTL38(2) controlMouse1Noise6HoursPostOTL38(2) controlMouse1Noise9HoursPostOTL38(2) controlMouse1Noise12HoursPostOTL38(2) controlMouse1Noise24HoursPostOTL38(2)];
backgroundNoiseControlMouse2Calculated =  [controlMouse2Noise3HoursPostOTL38(2) controlMouse2Noise6HoursPostOTL38(2) controlMouse2Noise9HoursPostOTL38(2) controlMouse2Noise12HoursPostOTL38(2) controlMouse2Noise24HoursPostOTL38(2)];
backgroundNoiseControlMouse3Calculated =  [controlMouse3Noise3HoursPostOTL38(2) controlMouse3Noise6HoursPostOTL38(2) controlMouse3Noise9HoursPostOTL38(2) controlMouse3Noise12HoursPostOTL38(2) controlMouse3Noise24HoursPostOTL38(2)];
MarkerSize = 25;
lineWidth = 1;
fontSize = 40;
figure(41);
y = tiledlayout(1,4);
nexttile(1);
plot(-1,mean(preOTL38BaselineBackground),'Marker','s','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k')
hold on
plot(-1,mean(preOTL38BaselineBackground_2),'Marker','s','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k')
plot(-1,mean(preOTL38BaselineBackground_3),'Marker','s','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k')
plot(timePoints, backgroundSignalsMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundSignalsMouse2,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundSignalsMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
% errorbar(timePoints,backgroundSignalRatioMean,-backgroundSignalRatioSTD,backgroundSignalRatioSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1 Baseline', 'Mouse 2 Baseline', 'Mouse 3 Baseline', 'Mouse 1 Post OTL38','Mouse 2 Post OTL38','Mouse 3 Post OTL38'})
xticks([-1 3 6 9 12 15 18 21 24]);
xticklabels({'-1','3','6','','12','','18','','24'});
ylim([0 50000]);
yticks(0:5000:50000);
% yticklabels({'0','','1','','2','','3','','4','','5'})
% xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Background Signal (nA)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
title('OTL38 Clearance Mice Values','FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off;
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(2)
plot(-1,preOTL38BaselineNoise,'Marker','s','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k')
hold on
plot(-1,preOTL38BaselineNoise_2,'Marker','s','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k')
plot(-1,preOTL38BaselineNoise_3 ,'Marker','s','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k')
plot(timePoints, backgroundNoiseMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundNoiseMouse2,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundNoiseMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
% errorbar(timePoints,backgroundNoiseRatioMean,-backgroundNoiseRatioSTD,backgroundNoiseRatioSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1 Baseline', 'Mouse 2 Baseline', 'Mouse 3 Baseline', 'Mouse 1 Post OTL38','Mouse 2 Post OTL38','Mouse 3 Post OTL38'})
xticks([-1 3 6 9 12 15 18 21 24]);
xticklabels({'-1','3','6','','12','','18','','24'});
ylim([0 70]);
yticks(0:5:70);
yticklabels({'0','','10','','20','','30','','40','','50','','60','','70'})
% xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Noise (nA)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
title('OTL38 Clearance Mice Values','FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(3)
plot(-1,mean(mouseControl_1Background),'Marker','s','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k')
hold on
plot(-1,mean(mouseControl_2Background),'Marker','s','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k')
plot(-1,mean(mouseControl_3Background),'Marker','s','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k')
plot(timePoints, backgroundSignalsControlMouse1Calculated,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundSignalsControlMouse2Calculated,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundSignalsControlMouse3Calculated,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
% errorbar(timePoints,backgroundSignalRatioControlMiceCalculatedMean,-backgroundSignalRatioControlMiceCalculatedSTD,backgroundSignalRatioControlMiceCalculatedSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1 Baseline', 'Mouse 2 Baseline', 'Mouse 3 Baseline', 'Mouse 1 Post OTL38','Mouse 2 Post OTL38','Mouse 3 Post OTL38'})
xticks([-1 3 6 9 12 15 18 21 24]);
xticklabels({'-1','3','6','','12','','18','','24'});
ylim([0 50000]);
yticks(0:5000:50000);
% yticklabels({'0','','1','','2','','3','','4','','5'})
% xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Background Signal (nA)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
title({'Calculated using Un-injected', 'Control Mice Baseline Background'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(4)
plot(-1,mouseControl_1Noise,'Marker','s','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k')
hold on
plot(-1,mouseControl_2Noise,'Marker','s','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k')
plot(-1,mouseControl_3Noise,'Marker','s','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k')
plot(timePoints, backgroundNoiseControlMouse1Calculated,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundNoiseControlMouse2Calculated,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundNoiseControlMouse3Calculated,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
% errorbar(timePoints,backgroundNoiseRatioControlMiceCalculatedMean,-backgroundNoiseRatioControlMiceCalculatedSTD,backgroundNoiseRatioControlMiceCalculatedSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1 Baseline', 'Mouse 2 Baseline', 'Mouse 3 Baseline', 'Mouse 1 Post OTL38','Mouse 2 Post OTL38','Mouse 3 Post OTL38'})
xticks([-1 3 6 9 12 15 18 21 24]);
xticklabels({'-1','3','6','','12','','18','','24'});
ylim([0 70]);
yticks(0:5:70);
yticklabels({'0','','10','','20','','30','','40','','50','','60','','70'})
% xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Noise (nA)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
title({'Calculated using Un-injected', 'Control Mice Baseline Background'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
xlabel(y,{'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
%%
% plot of the background  and noise of three OTL38 clearance mice and background and noise  calculated for the 3 control mice

timePoints = [3, 6, 9, 12, 24];

%OTL38 Clearance data 
backgroundNoiseRatioMouse1 = [postOTL38_3HoursNoiseRatio postOTL38_6HoursNoiseRatio postOTL38_9HoursNoiseRatio postOTL38_12HoursNoiseRatio postOTL38_24_2HoursNoiseRatio];
backgroundNoiseRatioMouse2 = [postOTL38_3HoursNoiseRatio_2 postOTL38_6HoursNoiseRatio_2 postOTL38_9HoursNoiseRatio_2 postOTL38_12HoursNoiseRatio_2 postOTL38_24HoursNoiseRatio_2];
backgroundNoiseRatioMouse3 = [postOTL38_3HoursNoiseRatio_3 postOTL38_6HoursNoiseRatio_3 postOTL38_9HoursNoiseRatio_3 postOTL38_12HoursNoiseRatio_3 postOTL38_24HoursNoiseRatio_3];

backgroundNoiseRatioMean = [meanPostOTL38_3HoursNoiseRatio meanPostOTL38_6HoursNoiseRatio meanPostOTL38_9HoursNoiseRatio meanPostOTL38_12HoursNoiseRatio meanPostOTL38_24HoursNoiseRatio];
backgroundNoiseRatioSTD = [stdPostOTL38_3HoursNoiseRatio stdPostOTL38_6HoursNoiseRatio stdPostOTL38_9HoursNoiseRatio stdPostOTL38_12HoursNoiseRatio stdPostOTL38_24HoursNoiseRatio];


backgroundSignalsMouse1 = [mean(postOTL38_3HoursBackground) mean(postOTL38_6HoursBackground) mean(postOTL38_9HoursBackground) mean(postOTL38_12HoursBackground) mean(postOTL38_24_2HoursBackground)];
backgroundSignalsMouse2 = [ mean(postOTL38_3HoursBackground_2) mean(postOTL38_6HoursBackground_2) mean(postOTL38_9HoursBackground_2) mean(postOTL38_12HoursBackground_2) mean(postOTL38_24HoursBackground_2)];
backgroundSignalsMouse3 = [ mean(postOTL38_3HoursBackground_3) mean(postOTL38_6HoursBackground_3) mean(postOTL38_9HoursBackground_3) mean(postOTL38_12HoursBackground_3) mean(postOTL38_24HoursBackground_3)];

backgroundSignalRatioMouse1 = [postOTL38_3HoursBackgroundRatio postOTL38_6HoursBackgroundRatio postOTL38_9HoursBackgroundRatio postOTL38_12HoursBackgroundRatio postOTL38_24_2HoursBackgroundRatio]; 
backgroundSignalRatioMouse2 = [postOTL38_3HoursBackgroundRatio_2 postOTL38_6HoursBackgroundRatio_2 postOTL38_9HoursBackgroundRatio_2 postOTL38_12HoursBackgroundRatio_2  postOTL38_24HoursBackgroundRatio_2]; 
backgroundSignalRatioMouse3 = [postOTL38_3HoursBackgroundRatio_3 postOTL38_6HoursBackgroundRatio_3 postOTL38_9HoursBackgroundRatio_3 postOTL38_12HoursBackgroundRatio_3  postOTL38_24HoursBackgroundRatio_3]; 

backgroundSignalRatioMean = [meanPostOTL38_3HoursBackgroundRatio meanPostOTL38_6HoursBackgroundRatio meanPostOTL38_9HoursBackgroundRatio meanPostOTL38_12HoursBackgroundRatio  meanPostOTL38_24HoursBackgroundRatio];
backgroundSignalRatioSTD = [stdPostOTL38_3HoursBackgroundRatio stdPostOTL38_6HoursBackgroundRatio stdPostOTL38_9HoursBackgroundRatio stdPostOTL38_12HoursBackgroundRatio  stdPostOTL38_24HoursBackgroundRatio];

backgroundSignalsMouse1 = [mean(postOTL38_3HoursBackground) mean(postOTL38_6HoursBackground) mean(postOTL38_9HoursBackground) mean(postOTL38_12HoursBackground) mean(postOTL38_24_2HoursBackground)];
backgroundSignalsMouse2 = [ mean(postOTL38_3HoursBackground_2) mean(postOTL38_6HoursBackground_2) mean(postOTL38_9HoursBackground_2) mean(postOTL38_12HoursBackground_2) mean(postOTL38_24HoursBackground_2)];
backgroundSignalsMouse3 = [ mean(postOTL38_3HoursBackground_3) mean(postOTL38_6HoursBackground_3) mean(postOTL38_9HoursBackground_3) mean(postOTL38_12HoursBackground_3) mean(postOTL38_24HoursBackground_3)];

backgroundNoiseMouse1 = [postOTL38_3HoursNoise postOTL38_6HoursNoise postOTL38_9HoursNoise postOTL38_12HoursNoise postOTL38_24_2HoursNoise];
backgroundNoiseMouse2 = [postOTL38_3HoursNoise_2 postOTL38_6HoursNoise_2 postOTL38_9HoursNoise_2 postOTL38_12HoursNoise_2 postOTL38_24HoursNoise_2];
backgroundNoiseMouse3 = [postOTL38_3HoursNoise_3 postOTL38_6HoursNoise_3 postOTL38_9HoursNoise_3 postOTL38_12HoursNoise_3 postOTL38_24HoursNoise_3];

%Caclulated data using un-injected control mice background and the mean background ratio at each time point
backgroundNoiseRatioControlMouse1Calculated = [controlMouse1CalculatedNoise3HoursRatio controlMouse1CalculatedNoise6HoursRatio controlMouse1CalculatedNoise9HoursRatio controlMouse1CalculatedNoise12HoursRatio controlMouse1CalculatedNoise24HoursRatio]; 
backgroundNoiseRatioControlMouse2Calculated = [controlMouse2CalculatedNoise3HoursRatio controlMouse2CalculatedNoise6HoursRatio controlMouse2CalculatedNoise9HoursRatio controlMouse2CalculatedNoise12HoursRatio controlMouse2CalculatedNoise24HoursRatio]; 
backgroundNoiseRatioControlMouse3Calculated = [controlMouse3CalculatedNoise3HoursRatio controlMouse3CalculatedNoise6HoursRatio controlMouse3CalculatedNoise9HoursRatio controlMouse3CalculatedNoise12HoursRatio controlMouse3CalculatedNoise24HoursRatio]; 

backgroundNoiseRatioControlMiceCalculatedMean =[meanControlMouseCaculatedNoise3HoursPostOTL38Ratio meanControlMouseCaculatedNoise6HoursPostOTL38Ratio meanControlMouseCaculatedNoise9HoursPostOTL38Ratio meanControlMouseCaculatedNoise12HoursPostOTL38Ratio meanControlMouseCaculatedNoise24HoursPostOTL38Ratio];
backgroundNoiseRatioControlMiceCalculatedSTD = [stdControlMouseCaculatedNoise3HoursPostOTL38Ratio stdControlMouseCaculatedNoise6HoursPostOTL38Ratio stdControlMouseCaculatedNoise9HoursPostOTL38Ratio stdControlMouseCaculatedNoise12HoursPostOTL38Ratio stdControlMouseCaculatedNoise24HoursPostOTL38Ratio];

backgroundSignalRatioControlMouse1Calculated = [controlMouse1CalculatedBackground3HoursRatio controlMouse1CalculatedBackground6HoursRatio controlMouse1CalculatedBackground9HoursRatio controlMouse1CalculatedBackground12HoursRatio controlMouse1CalculatedBackground24HoursRatio];
backgroundSignalRatioControlMouse2Calculated = [controlMouse2CalculatedBackground3HoursRatio controlMouse2CalculatedBackground6HoursRatio controlMouse2CalculatedBackground9HoursRatio controlMouse2CalculatedBackground12HoursRatio controlMouse2CalculatedBackground24HoursRatio];
backgroundSignalRatioControlMouse3Calculated = [controlMouse3CalculatedBackground3HoursRatio controlMouse3CalculatedBackground6HoursRatio controlMouse3CalculatedBackground9HoursRatio controlMouse3CalculatedBackground12HoursRatio controlMouse3CalculatedBackground24HoursRatio];

backgroundSignalRatioControlMiceCalculatedMean = [meanControlMouseCaculatedBackground3HoursPostOTL38Ratio meanControlMouseCaculatedBackground6HoursPostOTL38Ratio meanControlMouseCaculatedBackground9HoursPostOTL38Ratio meanControlMouseCaculatedBackground12HoursPostOTL38Ratio meanControlMouseCaculatedBackground24HoursPostOTL38Ratio];
backgroundSignalRatioControlMiceCalculatedSTD = [stdControlMouseCaculatedBackground3HoursPostOTL38Ratio stdControlMouseCaculatedBackground6HoursPostOTL38Ratio stdControlMouseCaculatedBackground9HoursPostOTL38Ratio stdControlMouseCaculatedBackground12HoursPostOTL38Ratio stdControlMouseCaculatedBackground24HoursPostOTL38Ratio];

%Calculated data using baseline background of each OTL38 mouse and multiplying by the ratio at each time point and then cacluating noise and noise ratio

backgroundNoiseRatioOTL38Mouse1Calculated =[OTL38Mouse1CalculatedNoise3HoursRatio(2) OTL38Mouse1CalculatedNoise6HoursRatio(2) OTL38Mouse1CalculatedNoise9HoursRatio(2) OTL38Mouse1CalculatedNoise12HoursRatio(2) OTL38Mouse1CalculatedNoise24HoursRatio(2)];
backgroundNoiseRatioOTL38Mouse2Calculated =[OTL38Mouse2CalculatedNoise3HoursRatio(2) OTL38Mouse2CalculatedNoise6HoursRatio(2) OTL38Mouse2CalculatedNoise9HoursRatio(2) OTL38Mouse2CalculatedNoise12HoursRatio(2) OTL38Mouse2CalculatedNoise24HoursRatio(2)];
backgroundNoiseRatioOTL38Mouse3Calculated =[OTL38Mouse3CalculatedNoise3HoursRatio(2) OTL38Mouse3CalculatedNoise6HoursRatio(2) OTL38Mouse3CalculatedNoise9HoursRatio(2) OTL38Mouse3CalculatedNoise12HoursRatio(2) OTL38Mouse3CalculatedNoise24HoursRatio(2)];

backgroundNoiseRatioOTL38MiceCalculatedMean =  [meanOTL38MiceCalculatedNoise3HourRatio meanOTL38MiceCalculatedNoise6HourRatio meanOTL38MiceCalculatedNoise9HourRatio meanOTL38MiceCalculatedNoise12HourRatio meanOTL38MiceCalculatedNoise24HourRatio];
backgroundNoiseRatioOTL38MiceCalculatedSTD = [stdOTL38MiceCalculatedNoise3HourRatio stdOTL38MiceCalculatedNoise6HourRatio stdOTL38MiceCalculatedNoise9HourRatio stdOTL38MiceCalculatedNoise12HourRatio stdOTL38MiceCalculatedNoise24HourRatio];

%Caclulated data using un-injected control mice background and the mean background ratio at each time point
backgroundSignalsControlMouse1Calculated = [mean(controlMouse1Background3HoursPostOTL38(2)) mean(controlMouse1Background6HoursPostOTL38(2)) mean(controlMouse1Background9HoursPostOTL38(2)) mean(controlMouse1Background12HoursPostOTL38(2)) mean(controlMouse1Background24HoursPostOTL38(2))];
backgroundSignalsControlMouse2Calculated = [mean(controlMouse2Background3HoursPostOTL38(2)) mean(controlMouse2Background6HoursPostOTL38(2)) mean(controlMouse2Background9HoursPostOTL38(2)) mean(controlMouse2Background12HoursPostOTL38(2)) mean(controlMouse2Background24HoursPostOTL38(2))];
backgroundSignalsControlMouse3Calculated = [mean(controlMouse3Background3HoursPostOTL38(2)) mean(controlMouse3Background6HoursPostOTL38(2)) mean(controlMouse3Background9HoursPostOTL38(2)) mean(controlMouse3Background12HoursPostOTL38(2)) mean(controlMouse3Background24HoursPostOTL38(2))];

backgroundNoiseControlMouse1Calculated =  [controlMouse1Noise3HoursPostOTL38(2) controlMouse1Noise6HoursPostOTL38(2) controlMouse1Noise9HoursPostOTL38(2) controlMouse1Noise12HoursPostOTL38(2) controlMouse1Noise24HoursPostOTL38(2)];
backgroundNoiseControlMouse2Calculated =  [controlMouse2Noise3HoursPostOTL38(2) controlMouse2Noise6HoursPostOTL38(2) controlMouse2Noise9HoursPostOTL38(2) controlMouse2Noise12HoursPostOTL38(2) controlMouse2Noise24HoursPostOTL38(2)];
backgroundNoiseControlMouse3Calculated =  [controlMouse3Noise3HoursPostOTL38(2) controlMouse3Noise6HoursPostOTL38(2) controlMouse3Noise9HoursPostOTL38(2) controlMouse3Noise12HoursPostOTL38(2) controlMouse3Noise24HoursPostOTL38(2)];
MarkerSize = 18;
lineWidth = 1;
fontSize = 40;
figure(42);
y = tiledlayout(2,4);
nexttile(1);
plot(-1,mean(preOTL38BaselineBackground),'Marker','s','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k')
hold on
plot(-1,mean(preOTL38BaselineBackground_2),'Marker','s','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k')
plot(-1,mean(preOTL38BaselineBackground_3),'Marker','s','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k')
plot(timePoints, backgroundSignalsMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundSignalsMouse2,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundSignalsMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
% errorbar(timePoints,backgroundSignalRatioMean,-backgroundSignalRatioSTD,backgroundSignalRatioSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1 Baseline', 'Mouse 2 Baseline', 'Mouse 3 Baseline', 'Mouse 1 Post OTL38','Mouse 2 Post OTL38','Mouse 3 Post OTL38'})
xticks([-1 3 6 9 12 15 18 21 24]);
xticklabels({'-1','3','6','','12','','18','','24'});
ylim([0 50000]);
yticks(0:5000:50000);
% yticklabels({'0','','1','','2','','3','','4','','5'})
% xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Background Signal (nA)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
title('OTL38 Clearance Mice Values','FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off;
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(2)
plot(-1,preOTL38BaselineNoise,'Marker','s','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k')
hold on
plot(-1,preOTL38BaselineNoise_2,'Marker','s','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k')
plot(-1,preOTL38BaselineNoise_3 ,'Marker','s','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k')
plot(timePoints, backgroundNoiseMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundNoiseMouse2,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundNoiseMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
% errorbar(timePoints,backgroundNoiseRatioMean,-backgroundNoiseRatioSTD,backgroundNoiseRatioSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1 Baseline', 'Mouse 2 Baseline', 'Mouse 3 Baseline', 'Mouse 1 Post OTL38','Mouse 2 Post OTL38','Mouse 3 Post OTL38'})
xticks([-1 3 6 9 12 15 18 21 24]);
xticklabels({'-1','3','6','','12','','18','','24'});
ylim([0 70]);
yticks(0:5:70);
yticklabels({'0','','10','','20','','30','','40','','50','','60','','70'})
% xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Noise (nA)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
title('OTL38 Clearance Mice Values','FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(3)
plot(-1,mean(mouseControl_1Background),'Marker','s','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k')
hold on
plot(-1,mean(mouseControl_2Background),'Marker','s','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k')
plot(-1,mean(mouseControl_3Background),'Marker','s','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k')
plot(timePoints, backgroundSignalsControlMouse1Calculated,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundSignalsControlMouse2Calculated,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundSignalsControlMouse3Calculated,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
% errorbar(timePoints,backgroundSignalRatioControlMiceCalculatedMean,-backgroundSignalRatioControlMiceCalculatedSTD,backgroundSignalRatioControlMiceCalculatedSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1 Baseline', 'Mouse 2 Baseline', 'Mouse 3 Baseline', 'Mouse 1 Post OTL38','Mouse 2 Post OTL38','Mouse 3 Post OTL38'})
xticks([-1 3 6 9 12 15 18 21 24]);
xticklabels({'-1','3','6','','12','','18','','24'});
ylim([0 50000]);
yticks(0:5000:50000);
% yticklabels({'0','','1','','2','','3','','4','','5'})
% xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Background Signal (nA)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
title({'Calculated using Un-injected', 'Control Mice Baseline Background'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(4)
plot(-1,mouseControl_1Noise,'Marker','s','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k')
hold on
plot(-1,mouseControl_2Noise,'Marker','s','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k')
plot(-1,mouseControl_3Noise,'Marker','s','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k')
plot(timePoints, backgroundNoiseControlMouse1Calculated,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundNoiseControlMouse2Calculated,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundNoiseControlMouse3Calculated,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k');
% errorbar(timePoints,backgroundNoiseRatioControlMiceCalculatedMean,-backgroundNoiseRatioControlMiceCalculatedSTD,backgroundNoiseRatioControlMiceCalculatedSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1 Baseline', 'Mouse 2 Baseline', 'Mouse 3 Baseline', 'Mouse 1 Post OTL38','Mouse 2 Post OTL38','Mouse 3 Post OTL38'})
xticks([-1 3 6 9 12 15 18 21 24]);
xticklabels({'-1','3','6','','12','','18','','24'});
ylim([0 70]);
yticks(0:5:70);
yticklabels({'0','','10','','20','','30','','40','','50','','60','','70'})
% xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Noise (nA)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
title({'Calculated using Un-injected', 'Control Mice Baseline Background'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(5);
plot(timePoints, backgroundSignalRatioMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
hold on
plot(timePoints, backgroundSignalRatioMouse2,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundSignalRatioMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundSignalRatioMean,-backgroundSignalRatioSTD,backgroundSignalRatioSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
ylim([0 6]);
xticks( 0:3:24);
xticklabels({'0','','6','','12','','18','','24'});
yticks(0:0.5:6);
yticklabels({'0','','1','','2','','3','','4','','5','','6'})
% xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Background Signal (Normalized to Baseline)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
% title('OTL38 Clearance Mice Values','FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off;
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(6)
plot(timePoints, backgroundNoiseRatioMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
hold on
plot(timePoints, backgroundNoiseRatioMouse2,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundNoiseRatioMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundNoiseRatioMean,-backgroundNoiseRatioSTD,backgroundNoiseRatioSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
xticks( 0:3:24);
xticklabels({'0','','6','','12','','18','','24'});
ylim([0 6]);
yticks(0:0.5:6);
yticklabels({'0','','1','','2','','3','','4','','5','','6'})
% xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Noise (Normalized to Baseline)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
% title('OTL38 Clearance Mice Values','FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(7)
plot(timePoints, backgroundSignalRatioControlMouse1Calculated,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
hold on
plot(timePoints, backgroundSignalRatioControlMouse2Calculated,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundSignalRatioControlMouse3Calculated,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundSignalRatioControlMiceCalculatedMean,-backgroundSignalRatioControlMiceCalculatedSTD,backgroundSignalRatioControlMiceCalculatedSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
xticks(0:3:24);
xticklabels({'0','','6','','12','','18','','24'});
ylim([0 6]);
yticks(0:0.5:6);
yticklabels({'0','','1','','2','','3','','4','','5','','6'})
% xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Background Signal (Normalized to Baseline)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
% title({'Calculated using Un-injected', 'Control Mice Baseline Background'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(8)
plot(timePoints, backgroundNoiseRatioControlMouse1Calculated,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
hold on
plot(timePoints, backgroundNoiseRatioControlMouse2Calculated,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
plot(timePoints, backgroundNoiseRatioControlMouse3Calculated,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundNoiseRatioControlMiceCalculatedMean,-backgroundNoiseRatioControlMiceCalculatedSTD,backgroundNoiseRatioControlMiceCalculatedSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
xticks( 0:3:24);
xticklabels({'0','','6','','12','','18','','24'});
ylim([0 6]);
yticks(0:0.5:6);
yticklabels({'0','','1','','2','','3','','4','','5','','6'})
% xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Noise (Normalized to Baseline)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
% title({'Calculated using Un-injected', 'Control Mice Baseline Background'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
xlabel(y,{'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
%%
% plot of the background ratio (mean and std of three OTL38 clearance mice) and noise ratio (mean and std of three OTL38 mice) and the same for  the 3 control mice using mean background ratio from the OTL38 clearance mice

timePoints = [3, 6, 9, 12, 24];

%OTL38 Clearance data 
backgroundNoiseRatioMouse1 = [postOTL38_3HoursNoiseRatio postOTL38_6HoursNoiseRatio postOTL38_9HoursNoiseRatio postOTL38_12HoursNoiseRatio postOTL38_24_2HoursNoiseRatio];
backgroundNoiseRatioMouse2 = [postOTL38_3HoursNoiseRatio_2 postOTL38_6HoursNoiseRatio_2 postOTL38_9HoursNoiseRatio_2 postOTL38_12HoursNoiseRatio_2 postOTL38_24HoursNoiseRatio_2];
backgroundNoiseRatioMouse3 = [postOTL38_3HoursNoiseRatio_3 postOTL38_6HoursNoiseRatio_3 postOTL38_9HoursNoiseRatio_3 postOTL38_12HoursNoiseRatio_3 postOTL38_24HoursNoiseRatio_3];

backgroundNoiseRatioMean = [meanPostOTL38_3HoursNoiseRatio meanPostOTL38_6HoursNoiseRatio meanPostOTL38_9HoursNoiseRatio meanPostOTL38_12HoursNoiseRatio meanPostOTL38_24HoursNoiseRatio];
backgroundNoiseRatioSTD = [stdPostOTL38_3HoursNoiseRatio stdPostOTL38_6HoursNoiseRatio stdPostOTL38_9HoursNoiseRatio stdPostOTL38_12HoursNoiseRatio stdPostOTL38_24HoursNoiseRatio];


backgroundSignalsMouse1 = [mean(postOTL38_3HoursBackground) mean(postOTL38_6HoursBackground) mean(postOTL38_9HoursBackground) mean(postOTL38_12HoursBackground) mean(postOTL38_24_2HoursBackground)];
backgroundSignalsMouse2 = [ mean(postOTL38_3HoursBackground_2) mean(postOTL38_6HoursBackground_2) mean(postOTL38_9HoursBackground_2) mean(postOTL38_12HoursBackground_2) mean(postOTL38_24HoursBackground_2)];
backgroundSignalsMouse3 = [ mean(postOTL38_3HoursBackground_3) mean(postOTL38_6HoursBackground_3) mean(postOTL38_9HoursBackground_3) mean(postOTL38_12HoursBackground_3) mean(postOTL38_24HoursBackground_3)];

backgroundSignalRatioMouse1 = [postOTL38_3HoursBackgroundRatio postOTL38_6HoursBackgroundRatio postOTL38_9HoursBackgroundRatio postOTL38_12HoursBackgroundRatio postOTL38_24_2HoursBackgroundRatio]; 
backgroundSignalRatioMouse2 = [postOTL38_3HoursBackgroundRatio_2 postOTL38_6HoursBackgroundRatio_2 postOTL38_9HoursBackgroundRatio_2 postOTL38_12HoursBackgroundRatio_2  postOTL38_24HoursBackgroundRatio_2]; 
backgroundSignalRatioMouse3 = [postOTL38_3HoursBackgroundRatio_3 postOTL38_6HoursBackgroundRatio_3 postOTL38_9HoursBackgroundRatio_3 postOTL38_12HoursBackgroundRatio_3  postOTL38_24HoursBackgroundRatio_3]; 

backgroundSignalRatioMean = [meanPostOTL38_3HoursBackgroundRatio meanPostOTL38_6HoursBackgroundRatio meanPostOTL38_9HoursBackgroundRatio meanPostOTL38_12HoursBackgroundRatio  meanPostOTL38_24HoursBackgroundRatio];
backgroundSignalRatioSTD = [stdPostOTL38_3HoursBackgroundRatio stdPostOTL38_6HoursBackgroundRatio stdPostOTL38_9HoursBackgroundRatio stdPostOTL38_12HoursBackgroundRatio  stdPostOTL38_24HoursBackgroundRatio];

%Caclulated data using un-injected control mice background and the mean background ratio at each time point
backgroundNoiseRatioControlMouse1Calculated = [controlMouse1CalculatedNoise3HoursRatio controlMouse1CalculatedNoise6HoursRatio controlMouse1CalculatedNoise9HoursRatio controlMouse1CalculatedNoise12HoursRatio controlMouse1CalculatedNoise24HoursRatio]; 
backgroundNoiseRatioControlMouse2Calculated = [controlMouse2CalculatedNoise3HoursRatio controlMouse2CalculatedNoise6HoursRatio controlMouse2CalculatedNoise9HoursRatio controlMouse2CalculatedNoise12HoursRatio controlMouse2CalculatedNoise24HoursRatio]; 
backgroundNoiseRatioControlMouse3Calculated = [controlMouse3CalculatedNoise3HoursRatio controlMouse3CalculatedNoise6HoursRatio controlMouse3CalculatedNoise9HoursRatio controlMouse3CalculatedNoise12HoursRatio controlMouse3CalculatedNoise24HoursRatio]; 

backgroundNoiseRatioControlMiceCalculatedMean =[meanControlMouseCaculatedNoise3HoursPostOTL38Ratio meanControlMouseCaculatedNoise6HoursPostOTL38Ratio meanControlMouseCaculatedNoise9HoursPostOTL38Ratio meanControlMouseCaculatedNoise12HoursPostOTL38Ratio meanControlMouseCaculatedNoise24HoursPostOTL38Ratio];
backgroundNoiseRatioControlMiceCalculatedSTD = [stdControlMouseCaculatedNoise3HoursPostOTL38Ratio stdControlMouseCaculatedNoise6HoursPostOTL38Ratio stdControlMouseCaculatedNoise9HoursPostOTL38Ratio stdControlMouseCaculatedNoise12HoursPostOTL38Ratio stdControlMouseCaculatedNoise24HoursPostOTL38Ratio];


backgroundSignalRatioControlMouse1Calculated = [controlMouse1CalculatedBackground3HoursRatio controlMouse1CalculatedBackground6HoursRatio controlMouse1CalculatedBackground9HoursRatio controlMouse1CalculatedBackground12HoursRatio controlMouse1CalculatedBackground24HoursRatio];
backgroundSignalRatioControlMouse2Calculated = [controlMouse2CalculatedBackground3HoursRatio controlMouse2CalculatedBackground6HoursRatio controlMouse2CalculatedBackground9HoursRatio controlMouse2CalculatedBackground12HoursRatio controlMouse2CalculatedBackground24HoursRatio];
backgroundSignalRatioControlMouse3Calculated = [controlMouse3CalculatedBackground3HoursRatio controlMouse3CalculatedBackground6HoursRatio controlMouse3CalculatedBackground9HoursRatio controlMouse3CalculatedBackground12HoursRatio controlMouse3CalculatedBackground24HoursRatio];

backgroundSignalRatioControlMiceCalculatedMean = [meanControlMouseCaculatedBackground3HoursPostOTL38Ratio meanControlMouseCaculatedBackground6HoursPostOTL38Ratio meanControlMouseCaculatedBackground9HoursPostOTL38Ratio meanControlMouseCaculatedBackground12HoursPostOTL38Ratio meanControlMouseCaculatedBackground24HoursPostOTL38Ratio];
backgroundSignalRatioControlMiceCalculatedSTD =  [stdControlMouseCaculatedBackground3HoursPostOTL38Ratio stdControlMouseCaculatedBackground6HoursPostOTL38Ratio stdControlMouseCaculatedBackground9HoursPostOTL38Ratio stdControlMouseCaculatedBackground12HoursPostOTL38Ratio stdControlMouseCaculatedBackground24HoursPostOTL38Ratio];


MarkerSize = 15;
lineWidth = 1;
fontSize = 15;
figure(43);
tiledlayout(1,4);
nexttile(1);
% plot(timePoints, backgroundSignalRatioMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
% hold on
% plot(timePoints, backgroundSignalRatioMouse2,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
% plot(timePoints, backgroundSignalRatioMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundSignalRatioMean,-backgroundSignalRatioSTD,backgroundSignalRatioSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
% legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
ylim([0 6]);
xticks( 0:3:24);
yticks(0:0.5:6);
yticklabels({'0','','1','','2','','3','','4','','5','','6'})
xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Background (Normalized to Baseline)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
title('OTL38','FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off;
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(2)
% plot(timePoints, backgroundNoiseRatioMouse1,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
% hold on
% plot(timePoints, backgroundNoiseRatioMouse2,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
% plot(timePoints, backgroundNoiseRatioMouse3,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundNoiseRatioMean,-backgroundNoiseRatioSTD,backgroundNoiseRatioSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
% legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
xticks( 0:3:24);
ylim([0 6]);
yticks(0:0.5:6);
yticklabels({'0','','1','','2','','3','','4','','5','','6'})
xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Noise (Normalized to Baseline)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
title('OTL38','FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(3)
% plot(timePoints, backgroundSignalRatioControlMouse1Calculated,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
% hold on
% plot(timePoints, backgroundSignalRatioControlMouse2Calculated,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
% plot(timePoints, backgroundSignalRatioControlMouse3Calculated,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundSignalRatioControlMiceCalculatedMean,-backgroundSignalRatioControlMiceCalculatedSTD,backgroundSignalRatioControlMiceCalculatedSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
% legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
xticks(0:3:24);
ylim([0 6]);
yticks(0:0.5:6);
yticklabels({'0','','1','','2','','3','','4','','5','','6'})
xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Background (Normalized to Baseline)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
title('Control','FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile(4)
% plot(timePoints, backgroundNoiseRatioControlMouse1Calculated,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
% hold on
% plot(timePoints, backgroundNoiseRatioControlMouse2Calculated,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
% plot(timePoints, backgroundNoiseRatioControlMouse3Calculated,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundNoiseRatioControlMiceCalculatedMean,-backgroundNoiseRatioControlMiceCalculatedSTD,backgroundNoiseRatioControlMiceCalculatedSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',15);
% legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
xticks( 0:3:24);
ylim([0 6]);
yticks(0:0.5:6);
yticklabels({'0','','1','','2','','3','','4','','5','','6'})
xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Noise (Normalized to Baseline)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
title('Control','FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;

%%
%Putting together background ratio and noise ratio using the calculated control data and the updated SNR plots based on noise at each time point
%%
%Histograms of fwd matched SNR for all individual scans before OTL38 and at diffierent time points after
%Caclulated data using un-injected control mice background and the mean background ratio at each time point
backgroundNoiseRatioControlMouse1Calculated = [controlMouse1CalculatedNoise3HoursRatio controlMouse1CalculatedNoise6HoursRatio controlMouse1CalculatedNoise9HoursRatio controlMouse1CalculatedNoise12HoursRatio controlMouse1CalculatedNoise24HoursRatio]; 
backgroundNoiseRatioControlMouse2Calculated = [controlMouse2CalculatedNoise3HoursRatio controlMouse2CalculatedNoise6HoursRatio controlMouse2CalculatedNoise9HoursRatio controlMouse2CalculatedNoise12HoursRatio controlMouse2CalculatedNoise24HoursRatio]; 
backgroundNoiseRatioControlMouse3Calculated = [controlMouse3CalculatedNoise3HoursRatio controlMouse3CalculatedNoise6HoursRatio controlMouse3CalculatedNoise9HoursRatio controlMouse3CalculatedNoise12HoursRatio controlMouse3CalculatedNoise24HoursRatio]; 

backgroundNoiseRatioControlMiceCalculatedMean =[meanControlMouseCaculatedNoise3HoursPostOTL38Ratio meanControlMouseCaculatedNoise6HoursPostOTL38Ratio meanControlMouseCaculatedNoise9HoursPostOTL38Ratio meanControlMouseCaculatedNoise12HoursPostOTL38Ratio meanControlMouseCaculatedNoise24HoursPostOTL38Ratio];
backgroundNoiseRatioControlMiceCalculatedSTD = [stdControlMouseCaculatedNoise3HoursPostOTL38Ratio stdControlMouseCaculatedNoise6HoursPostOTL38Ratio stdControlMouseCaculatedNoise9HoursPostOTL38Ratio stdControlMouseCaculatedNoise12HoursPostOTL38Ratio stdControlMouseCaculatedNoise24HoursPostOTL38Ratio];


backgroundSignalRatioControlMouse1Calculated = [controlMouse1CalculatedBackground3HoursRatio controlMouse1CalculatedBackground6HoursRatio controlMouse1CalculatedBackground9HoursRatio controlMouse1CalculatedBackground12HoursRatio controlMouse1CalculatedBackground24HoursRatio];
backgroundSignalRatioControlMouse2Calculated = [controlMouse2CalculatedBackground3HoursRatio controlMouse2CalculatedBackground6HoursRatio controlMouse2CalculatedBackground9HoursRatio controlMouse2CalculatedBackground12HoursRatio controlMouse2CalculatedBackground24HoursRatio];
backgroundSignalRatioControlMouse3Calculated = [controlMouse3CalculatedBackground3HoursRatio controlMouse3CalculatedBackground6HoursRatio controlMouse3CalculatedBackground9HoursRatio controlMouse3CalculatedBackground12HoursRatio controlMouse3CalculatedBackground24HoursRatio];

backgroundSignalRatioControlMiceCalculatedMean = [meanControlMouseCaculatedBackground3HoursPostOTL38Ratio meanControlMouseCaculatedBackground6HoursPostOTL38Ratio meanControlMouseCaculatedBackground9HoursPostOTL38Ratio meanControlMouseCaculatedBackground12HoursPostOTL38Ratio meanControlMouseCaculatedBackground24HoursPostOTL38Ratio];
backgroundSignalRatioControlMiceCalculatedSTD =  [stdControlMouseCaculatedBackground3HoursPostOTL38Ratio stdControlMouseCaculatedBackground6HoursPostOTL38Ratio stdControlMouseCaculatedBackground9HoursPostOTL38Ratio stdControlMouseCaculatedBackground12HoursPostOTL38Ratio stdControlMouseCaculatedBackground24HoursPostOTL38Ratio];
FontSize = 40;
fontSize = 40;
figure(44);
tiledlayout(6,3);
nexttile([6 1])
MarkerSize = 25;
CapSize = 25;
% plot(timePoints, backgroundSignalRatioControlMouse1Calculated,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
% hold on
% plot(timePoints, backgroundSignalRatioControlMouse2Calculated,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
% plot(timePoints, backgroundSignalRatioControlMouse3Calculated,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundSignalRatioControlMiceCalculatedMean,-backgroundSignalRatioControlMiceCalculatedSTD,backgroundSignalRatioControlMiceCalculatedSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',CapSize);
% legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
xticks(0:3:24);
ylim([0 6]);
yticks(0:0.5:6);
yticklabels({'0','','1','','2','','3','','4','','5','','6'})
xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Background (Normalized to Baseline)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
% title('Control','FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile([6 1])
% plot(timePoints, backgroundNoiseRatioControlMouse1Calculated,'Marker','^','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
% hold on
% plot(timePoints, backgroundNoiseRatioControlMouse2Calculated,'Marker','v','MarkerFaceColor','red','MarkerEdgeColor','red','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
% plot(timePoints, backgroundNoiseRatioControlMouse3Calculated,'Marker','>','MarkerFaceColor','green','MarkerEdgeColor','green','MarkerSize',MarkerSize,'LineStyle','none','LineWidth',lineWidth,'Color','k');
errorbar(timePoints,backgroundNoiseRatioControlMiceCalculatedMean,-backgroundNoiseRatioControlMiceCalculatedSTD,backgroundNoiseRatioControlMiceCalculatedSTD, 'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','black','MarkerSize',MarkerSize,'LineStyle','--','LineWidth',lineWidth,'Color','k','CapSize',CapSize);
% legend({'Mouse 1','Mouse 2','Mouse 3','Average'})
xticks( 0:3:24);
ylim([0 6]);
yticks(0:0.5:6);
yticklabels({'0','','1','','2','','3','','4','','5','','6'})
xlabel({'Post OTL38 Injection (Hours)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
ylabel({'Noise (Normalized to Baseline)'},'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
% title('Control','FontSize',fontSize,'FontWeight','bold','FontName','Arial')
hold off
axis = gca;
box on;
axis.FontSize = fontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
nexttile()
histogram(allFwdMatchedPeakSNR, 'BinEdges', allSNREdges,'Normalization', 'probability','FaceColor','#0072B2','LineWidth',1)
hold on
xline(11,'-',{'Detection', 'Threshold',num2str(baselinePeaksBelow14dB),[num2str((baselinePeaksBelow14dB/545)*100) '%' ]},'LabelHorizontalAlignment','left','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 2,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
xline(11,'-',{'','',num2str(baselinePeaksAbove14dB),[num2str((baselinePeaksAbove14dB/545)*100) '%' ]},'LabelHorizontalAlignment','right','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 0.001,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
hold off
axis = gca;
axis.FontSize = FontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
ylim([0 0.25]);
yticks([0,0.125,0.25]);
% %xlim([0,40]);
% xticks([0 14 16:2:40]);
% xticklabels({'0','14','','18','','22','','26','','30','','34','','38'})
% title('Baseline- Before OTL38 Injection','FontSize',FontSize,'FontWeight','bold','FontName','Arial')
nexttile()
histogram(allFwdMatchedPeakSNR3HoursPostOTL38, 'BinEdges', allSNREdges,'Normalization', 'probability','FaceColor','#0072B2','LineWidth',1)
hold on
xline(11,'-',{'',num2str(postOTL383HoursPeaksBelow14dB),[num2str((postOTL383HoursPeaksBelow14dB/545)*100,4) '%' ]},'LabelHorizontalAlignment','left','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 2,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
xline(11,'-',{'',num2str(postOTL383HoursPeaksAbove14dB),[num2str((postOTL383HoursPeaksAbove14dB/545)*100,4) '%' ]},'LabelHorizontalAlignment','right','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 0.001,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
% xline(30,'-',{'',[num2str(postOTL38_3HoursBackgroundRatio,3) 'x Baseline Background'],[num2str(meanControlMouseCaculatedNoise3HoursPostOTL38Ratio,3) 'x Baseline Noise' ]},'LabelHorizontalAlignment','right','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 0.0000001,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
hold off
axis = gca;
axis.FontSize = FontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
ylim([0 0.25]);
yticks([0,0.125,0.25]);
% yticks([0,0.05, 0.1, 0.15, 0.2])
% %xlim([0,40]);
% xticks([0 14 16:2:40]);
% xticklabels({'0','14','','18','','22','','26','','30','','34','','38'})
% title('3 Hours Post OTL38 Injection','FontSize',FontSize,'FontWeight','bold','FontName','Arial')
nexttile()
histogram(allFwdMatchedPeakSNR6HoursPostOTL38, 'BinEdges', allSNREdges,'Normalization', 'probability','FaceColor','#0072B2','LineWidth',1)
hold on
xline(11,'-',{'',num2str(postOTL386HoursPeaksBelow14dB),[num2str((postOTL386HoursPeaksBelow14dB/545)*100,4) '%' ]},'LabelHorizontalAlignment','left','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 2,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
xline(11,'-',{'',num2str(postOTL386HoursPeaksAbove14dB),[num2str((postOTL386HoursPeaksAbove14dB/545)*100,4) '%' ]},'LabelHorizontalAlignment','right','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 0.001,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
% xline(30,'-',{'',[num2str(postOTL38_6HoursBackgroundRatio,3) 'x Baseline Background'],[num2str(meanControlMouseNoise6HoursPostOTL38Ratio,3) 'x Baseline Noise' ]},'LabelHorizontalAlignment','right','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 0.0000001,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
hold off
axis = gca;
axis.FontSize = FontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
ylim([0 0.25]);
yticks([0,0.125,0.25]);
% yticks([0,0.05, 0.1, 0.15, 0.2])
% %xlim([0,40]);
% xticks([0 14 16:2:40]);
% xticklabels({'0','14','','18','','22','','26','','30','','34','','38'})
% title('6 Hours Post OTL38 Injection','FontSize',FontSize,'FontWeight','bold','FontName','Arial')
ylabel( 'Frequency', 'FontSize',FontSize,'FontWeight','bold','FontName','Arial');
nexttile()
histogram(allFwdMatchedPeakSNR9HoursPostOTL38, 'BinEdges', allSNREdges,'Normalization', 'probability','FaceColor','#0072B2','LineWidth',1)
hold on
xline(11,'-',{'',num2str(postOTL389HoursPeaksBelow14dB),[num2str((postOTL389HoursPeaksBelow14dB/545)*100,4) '%' ]},'LabelHorizontalAlignment','left','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 2,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
xline(11,'-',{'',num2str(postOTL389HoursPeaksAbove14dB),[num2str((postOTL389HoursPeaksAbove14dB/545)*100,4) '%' ]},'LabelHorizontalAlignment','right','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 0.001,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
% xline(30,'-',{'',[num2str(postOTL38_9HoursBackgroundRatio,3) 'x Baseline Background'],[num2str(meanControlMouseNoise9HoursPostOTL38Ratio,3) 'x Baseline Noise' ]},'LabelHorizontalAlignment','right','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 0.0000001,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
hold off
axis = gca;
axis.FontSize = FontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
ylim([0 0.25]);
yticks([0,0.125,0.25]);
% yticks([0,0.05, 0.1, 0.15, 0.2])
% %xlim([0,40]);
% xticks([0 14 16:2:40]);
% xticklabels({'0','14','','18','','22','','26','','30','','34','','38'})
% title('9 Hours Post OTL38 Injection','FontSize',FontSize,'FontWeight','bold','FontName','Arial')
nexttile()
histogram(allFwdMatchedPeakSNR12HoursPostOTL38, 'BinEdges', allSNREdges,'Normalization', 'probability','FaceColor','#0072B2','LineWidth',1)
hold on
xline(11,'-',{'',num2str(postOTL3812HoursPeaksBelow14dB),[num2str((postOTL3812HoursPeaksBelow14dB/545)*100,4) '%' ]},'LabelHorizontalAlignment','left','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 2,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
xline(11,'-',{'',num2str(postOTL3812HoursPeaksAbove14dB),[num2str((postOTL3812HoursPeaksAbove14dB/545)*100,4) '%' ]},'LabelHorizontalAlignment','right','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 0.001,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
% xline(30,'-',{'',[num2str(postOTL38_12HoursBackgroundRatio,3) 'x Baseline Background'],[num2str(meanControlMouseNoise12HoursPostOTL38Ratio,3) 'x Baseline Noise' ]},'LabelHorizontalAlignment','right','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 0.0000001,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
hold off
axis = gca;
axis.FontSize = FontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
ylim([0 0.25]);
yticks([0,0.125,0.25]);
% yticks([0,0.05, 0.1, 0.15, 0.2])
% %xlim([0,40]);
% xticks([0 14 16:2:40]);
% xticklabels({'0','14','','18','','22','','26','','30','','34','','38'})
% title('12 Hours Post OTL38 Injection','FontSize',FontSize,'FontWeight','bold','FontName','Arial')
nexttile()
histogram(allFwdMatchedPeakSNR24HoursPostOTL38, 'BinEdges', allSNREdges,'Normalization', 'probability','FaceColor','#0072B2','LineWidth',1)
hold on
xline(11,'-',{'',num2str(postOTL3824HoursPeaksBelow14dB),[num2str((postOTL3824HoursPeaksBelow14dB/545)*100,4) '%' ]},'LabelHorizontalAlignment','left','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 2,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
xline(11,'-',{'',num2str(postOTL3824HoursPeaksAbove14dB),[num2str((postOTL3824HoursPeaksAbove14dB/545)*100,4) '%' ]},'LabelHorizontalAlignment','right','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 0.001,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
% xline(30,'-',{'',[num2str(postOTL38_24_2HoursBackgroundRatio,3) 'x Baseline Background'],[num2str(meanControlMouseNoise24_2HoursPostOTL38Ratio,3) 'x Baseline Noise' ]},'LabelHorizontalAlignment','right','LabelVerticalAlignment','middle','LabelOrientation','horizontal','Color','r','LineWidth', 0.0000001,'FontSize',fontSize,'FontWeight','bold','FontName','Arial');
hold off
axis = gca;
axis.FontSize = FontSize;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
ylim([0 0.25]);
yticks([0,0.125,0.25]);
% yticks([0,0.05, 0.1, 0.15, 0.2])
% %xlim([0,40]);
% xticks([0 14 16:2:40]);
% xticklabels({'0','14','','18','','22','','26','','30','','34','','38'})
% title('24 Hours Post OTL38 Injection','FontSize',FontSize,'FontWeight','bold','FontName','Arial')
fig = gcf;
tl= fig.Children;
xlabel('SNR (dB)', 'FontSize', FontSize,'FontWeight','bold','FontName','Arial');
% title(tl,'Arterial Matched Peak SNR','FontSize', FontSize*1.5,'FontWeight','bold','FontName','Arial')

%--------------------------------------------------------------
%FIGURE 5- NIR VS BG (used to be figure 4)

%%
%NIR vs BG Background compare
width = 0.5;
figure(45);
bar(1,meanNIRBackground*(4/5),width);
hold on
bar(2,meanBGBackground,width);
errorNIRBackground = errorbar(1,meanNIRBackground*(4/5),[],stdNIRBackground*(4/5),'LineWidth',0.5,'CapSize',15);
errorNIRBackground.Color = [0 0 0];
errorBGBackground = errorbar(2,meanBGBackground,[],stdBGBackground,'LineWidth',0.5,'CapSize',15);
errorBGBackground.Color = [0 0 0];
hold off
xticks(1:2)
xticklabels({'NIR-DiFC', 'b-DiFC'});
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
figure(46);
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
xticklabels({'NIR-DiFC', 'b-DiFC'});
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
figure(47);
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
ylabel(tl, {'b-DiFC Signal (nA)'}, 'FontSize',40,'FontWeight','bold','FontName','Arial');
xlabel(tl,'Time (sec)', 'FontSize', 40,'FontWeight','bold','FontName','Arial');
%%
%Examples NIR motion/breathing artifacts
figure(48);
tiledlayout(2,1);
nexttile(1)
plot(mouseControl_1.time,mouseControl_1.data_bs(:,1)/166.67 ,'LineWidth',1)
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
plot(mouseControl_1.time,mouseControl_1.data_bs(:,1)/166.67 ,'LineWidth',1)
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

%%
%Example of the 2 BG plots with the attached NIR plot
figure(49);
tiledlayout(3,1);
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
ylabel({'b-DiFC Signal (nA)'}, 'FontSize',40,'FontWeight','bold','FontName','Arial');
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
xlabel('Time (s)', 'FontSize', 40,'FontWeight','bold','FontName','Arial');
hold off
nexttile(3);
plot(mouseControl_1.time,mouseControl_1.data_bs(:,1)/166.67 ,'LineWidth',1)
axis = gca;
axis.FontSize = 30;
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;
ylim([-0.5,0.5]);
xlim([1800,1805])
xticks([1800:1805]);
xticklabels({'0','1','2','3','4','5'});
hold off
ylabel({'NIR-DiFC Signal (nA)'}, 'FontSize',40,'FontWeight','bold','FontName','Arial');
xlabel('Time (s)', 'FontSize', 40,'FontWeight','bold','FontName','Arial');
fig = gcf;
tl= fig.Children;

%%
%%%%%%%%%%%%%%%%%%%%%%%%%
%OTL38 Clearance (20220724)
width = 0.5;
figure(40);
bar(1,mean(preOTL38BaselineBackground),width);
hold on
bar(2,mean(postOTL38_3HoursBackground),width);
bar(3,mean(postOTL38_6HoursBackground),width);
bar(4,mean(postOTL38_9HoursBackground),width);
bar(5,mean(postOTL38_12HoursBackground),width);
bar(6,mean(postOTL38_24HoursBackground),width);
bar(7,mean(postOTL38_24_2HoursBackground),width);
errorBaseline = errorbar(1,mean(preOTL38BaselineBackground),[],std(preOTL38BaselineBackground),'LineWidth',3,'CapSize',25);
errorBaseline.Color = [0 0 0];
error3hrs = errorbar(2,mean(postOTL38_3HoursBackground),[],std(postOTL38_3HoursBackground),'LineWidth',3,'CapSize',25);
error3hrs.Color = [0 0 0];
error6hrs = errorbar(3,mean(postOTL38_6HoursBackground),[],std(postOTL38_6HoursBackground),'LineWidth',3,'CapSize',25);
error6hrs.Color = [0 0 0];
error9hrs = errorbar(4,mean(postOTL38_9HoursBackground),[],std(postOTL38_9HoursBackground),'LineWidth',3,'CapSize',25);
error9hrs.Color = [0 0 0];
error12hrs = errorbar(5,mean(postOTL38_12HoursBackground),[],std(postOTL38_12HoursBackground),'LineWidth',3,'CapSize',25);
error12hrs.Color = [0 0 0];
error24hrs = errorbar(6,mean(postOTL38_24HoursBackground),[],std(postOTL38_24HoursBackground),'LineWidth',3,'CapSize',25);
error24hrs.Color = [0 0 0];
error24hrs_2 = errorbar(7,mean(postOTL38_24_2HoursBackground),[],std(postOTL38_24_2HoursBackground),'LineWidth',3,'CapSize',25);
error24hrs_2.Color = [0 0 0];
% ylim([0 0.06]);
% yticks([0,0.01,0.02,0.03,0.04,0.05,0.06]);
% yticklabels({'0','','0.02','','0.04','','0.06'});
hold off
xticks(1:7)
xticklabels({'Baseline', '3 hours','6 hours','9 hours','12 Hours','24 Hours','24 Hours 2'});
% xtickangle(45);
ylabel('Background Signal (nA)','FontSize',40,'FontWeight','bold','FontName','Arial');
title('2.5µg OTL38 Clearance- Tail Scans','FontSize',40,'FontWeight','bold','FontName','Arial');
axis = gca;
axis.FontSize = 40; 
axis.FontWeight = 'bold';
axis.FontName = 'Arial';
axis.LineWidth = 1;

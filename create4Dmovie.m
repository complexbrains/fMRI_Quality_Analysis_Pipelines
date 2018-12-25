function create4Dmovie

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Script create4Dmovi.m 
% Takes nifti images and converts into movies. This step is needed for the
% researcher to observe the head motion in the images. You can watch the
% movies using FSL View and see which image the head movements are. 
% 
% Dependency: spm12
% 
% Isil Bilgin 01/04/2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Add SPM to Matlab path
addpath(fullfile('C:\Program Files\MATLAB\R2017a\toolbox','Software','eeglab14_1_2b'))


%% Set parameters
pwd = ' ';
mainFolderPath = pwd;
subjectPool = {'01', '03', '05' ,'06', '07', '08', '09', '10'} ;

%% Loop over subjects

for subjectNum=1:size(subjectPool,2)
      
subjectFolderPath = fullfile(mainFolderPath, sprintf('Subject_%s', subjectPool{subjectNum}));

spm('Defaults','fMRI');
spm_jobman('initcfg');
clear matlabbatch

matlabbatch{1}.spm.util.cat.vols =cellstr(strcat(spm_select('FPList' ,subjectFolderPath, 'f.*\.nii'),',1'));
matlabbatch{1}.spm.util.cat.name = '4D.nii';
matlabbatch{1}.spm.util.cat.dtype = 0;


 spm_jobman('run', matlabbatch)
 
 end
        


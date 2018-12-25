function createSummaryStatisticsImages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Script createSummaryStatisticsImages.m 
% Takes nifti images and calculates mean and standard deviation images and
% save the output into the subject folder for further visual analysis. 
%
% Second part of the script uses tsdiffana.m function, which could be
% dowloaded from here University of Cambridge website
% http://imaging.mrc-cbu.cam.ac.uk/downloads/SPMUtils/tsdiffana.tar.gz
% The function produces a plot of slice and image comparisons and produces
% slice and image difference variables. They are all are saved to the
% subject folder at the end of this script.
% 
% Dependency: spm12, tsdiffana toolbox from CBU.
% Isil Bilgin 01/04/2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Set parameters
pwd = ' ';
mainFolderPath = pwd;
subjectPool = {'01', '03', '05' ,'06', '07', '08', '09', '10'} ;

%% Loop over subjects

for subjectNum=1:size(subjectPool,2)
            
subjectFolderPath = fullfile(mainFolderPath, sprintf('Subject_%s', subjectPool{subjectNum}));
dataname = 'rawData';
data = strcat(dataname,'.*\.nii');


spm('Defaults','fMRI');
spm_jobman('initcfg');
clear matlabbatch


matlabbatch{1}.spm.util.imcalc.input = cellstr(strcat(spm_select('FPList' , subjectFolderPath, '.*\.nii'),',1'));                                  
matlabbatch{1}.spm.util.imcalc.output = sprintf('mean_%s','rawData');
matlabbatch{1}.spm.util.imcalc.outdir = {subjectFolderPath};
matlabbatch{1}.spm.util.imcalc.expression = 'mean(X)';
matlabbatch{1}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{1}.spm.util.imcalc.options.dmtx = 1;
matlabbatch{1}.spm.util.imcalc.options.mask = 0;
matlabbatch{1}.spm.util.imcalc.options.interp = 1;
matlabbatch{1}.spm.util.imcalc.options.dtype = 4;
 spm_jobman('run', matlabbatch)
 
 
 spm('Defaults','fMRI');
spm_jobman('initcfg');
clear matlabbatch



matlabbatch{1}.spm.util.imcalc.input = cellstr(strcat(spm_select('FPList' , subjectFolderPath, '.*\.nii'),',1'));                                  
matlabbatch{1}.spm.util.imcalc.output = sprintf('var_%s','rawData');
matlabbatch{1}.spm.util.imcalc.outdir = {subjectFolderPath};
matlabbatch{1}.spm.util.imcalc.expression = 'var(X)';
matlabbatch{1}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{1}.spm.util.imcalc.options.dmtx = 1;
matlabbatch{1}.spm.util.imcalc.options.mask = 0;
matlabbatch{1}.spm.util.imcalc.options.interp = 1;
matlabbatch{1}.spm.util.imcalc.options.dtype = 4;
 spm_jobman('run', matlabbatch)
 
    
  
%% Create the timeseries difference analysis plots and results
imgs  = spm_select('FPList' , subjectFolderPath, data)
[td, globals, slicediff, imgs] = tsdiffana(imgs);

% save the plot into subject folder
saveas(gcf,fullfile(subjectFolderPath, sprintf('%s_tsdiffana.png', blockNames{blockNum})));

% save the parameters into subject folder
save(fullfile(subjectFolderPath, sprintf('%s_Results.mat', blockNames{blockNum})), 'td', 'globals', 'slicediff', 'imgs');

end

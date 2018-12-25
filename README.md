# fMRI Quality Analysis Pipelines

I have been working on a quality analysis of a set of fMRI data that I collected this year and I made a list of available sources from some websites, blogs, academical papers including set of codes and slides and wanted to share with anyone interested. I will be updating this page as I find any source along my analysis continues but here is the current list of the sources I have collected so far. I benefited from all, I hope they would work for you all too.

If you know any sources that you think they should be listed here please do feel free to add those here. You can either send me a pull request and reach me out through my email or twitter account.



## Quality Analysis Sources

### Web Pages

* Harvard University's [neuroimaging page](http://cbs.fas.harvard.edu/science/core-facilities/neuroimaging/information-investigators/qc) gives detailed explanation of investigations you should run through your data. Although the page explains the pipeline through their system called CBSCentral, you still could learn quite bit details about quality analysis steps from this page.

* Cambridge University's two webpage [here](http://imaging.mrc-cbu.cam.ac.uk/imaging/CommonArtefacts#spinhistory) and [here](http://imaging.mrc-cbu.cam.ac.uk/imaging/DataDiagnostics) gives you the indications of noise you might find in your data. 

* Cambridge University's [wikipage](https://wiki.cam.ac.uk/bmuwiki/FMRI) on framewise displacement and functional connectivity

* MIT's [Mindhive](http://mindhive.mit.edu/node/54) has always been one of the websites I look for a help for fMRI data analysis and I highly recommend 

* I believe there is no need to promote, but a wonderful series of blog posts by [practiCal fMRI](https://twitter.com/practiCalfMRI) could be found from [here](https://practicalfmri.blogspot.com/2011/11/understanding-fmri-artifacts.html) and [here](https://practicalfmri.blogspot.com/2011/11/understanding-fmri-artifacts-good.html) 




### Manuals
* Massachussetts General Hospital's [Quality Control Manual](http://cbs.fas.harvard.edu/usr/mcmains/CBS_MRI_Qualitative_Quality_Control_Manual.pdf)

* University of Missouri's [guideline](http://bic.missouri.edu/doc/instruction_for_data_quality.pdf)

* University of Newyork's fMRI Data Quality [guideline](http://cbi.nyu.edu/Downloads/dataQuality.pdf)



### Presentations
* [MRI Quality Control Presentation](http://cbs.fas.harvard.edu/usr/mcmains/CBS_MRI_Quality_Control_Workshop.pdf) by Natasha S. Hansen

* CONN toolbox's quality assurance and analysis [slides](https://web.conn-toolbox.org/tutorials#h.p_Pk74qAeMP6Ml)


### Videos of MR Quality Assessments

* [Introduction to manual quality control in FSL](https://vimeo.com/61213860) by Harvard University.

* Andrew Jahn's video on [Quality Checks for fMRI Data](https://www.youtube.com/watch?v=fvv2dr3pT7I) 



### Workflows - Toolboxes

* [MRIQC](https://mriqc.readthedocs.io/en/stable/) by the Poldrack Lab at Stanford University

* Cambridge University's [data diagnostic](http://imaging.mrc-cbu.cam.ac.uk/imaging/DataDiagnostics) webpage. This page explains how to extract mean and standart images from the data. I wrote the scripts in Matlab, the codes are available [within my fMRI Quality Analysis Pipelines respository](https://github.com/complexbrains/fMRI_Quality_Analysis_Pipelines). Cambridge also provides a tsdiffana toolbox to plot the variations across the image-to-image and slice-to-slice intensity variance. I found those plots very useful to find out the noisy participants, I would strongly recommend you to use it as a starting QA analysis. 

* MIT's Artifact Detection toolbox [ART](https://www.nitrc.org/projects/artifact_detect/)

* University of Pennsylvania [QA Bash scripts](https://www.med.upenn.edu/cmroi/qascripts.html_) to use on bold, dti and perfusion data 

* A blog post by [CogNeuroStats](http://blog.cogneurostats.com/2013/05/23/quality-checking-fmri/) on how to install use fBIRN QC/QA for data quality analysis 

* Standford's [ArtRepair tool](https://cibsr.stanford.edu/tools/human-brain-project/artrepair-software/artrepairinstructions.html) to check and repair the slice and volume artifacts in your data and gives a global summary across the subjects.

* Rorden Lab's fMRI analysis and quality investigation [scripts](https://github.com/rordenlab/spmScripts)

* [NDS Lab's](http://www.decisionneurosciencelab.com/) MRI preprocessing and quality [analysis pipeline](http://ndslab.github.io/mri_pipeline/doc/#!pages/howto_getting_started.md) in which you could run a spike detection analysis, investigate the movement parameters you obtained in realignment, extract and plot mean image statistics across slices and images and plot the mosaic movies from your functional images. They also provide a preprocessing SPM batch scripts. 

* You can also find another set of scripts of Jeroen van Baar's [Github page](https://github.com/jeroenvanbaar/mri_pipeline/tree/master/analysis_mri/2_data_quality_check). The scripts contains function to detects spikes in the data and remove from it.

### Scientific Articles

* Davids et al.,[Fully-automated quality assurance in multi-center studies using MRI phantom measurements](https://www.ncbi.nlm.nih.gov/pubmed/24602825). Magn. Reson. Imaging.  2014. 32, 771–780.
 
* Johnstone et al., [Motion correction and the use of motion covariates in multiple-subject fMRI analysis](https://onlinelibrary.wiley.com/doi/full/10.1002/hbm.20219). Human Brain Mapping. 2006 27:779-788

* Stöcker et al., [Automated quality assurance routines for fMRI data applied to a multicenter study](https://onlinelibrary.wiley.com/doi/full/10.1002/hbm.20096). Hum Brain Mapp. 2005 Jun; 25(2):237-46.

* Liu et al., [Quality assurance in functional MRI](https://link.springer.com/chapter/10.1007/978-1-4899-7591-1_10) 2015. In:
Ugurbil, K., Berliner, L., Uludag, K. (Eds.), fMRI: From Nuclear Spins to Brain Function.
Springer

* Bullmore et al., [Methods for diagnosis and treatment of stimulus-correlated motion in generic brain activation studies using fMRI](https://www.ncbi.nlm.nih.gov/pubmed/9882089). Human Brain Mapping. (1998 7: 38-48

* . Friedman et al. [Report on a multicenter fMRI quality assurance protocol](https://onlinelibrary.wiley.com/doi/full/10.1002/jmri.20583). J Magn Reson Imaging. 2006 Jun; 23(6):827-39. 

* Alfaro-Almagro et al. [Image processing and Quality Control for the first 10,000 brain imaging datasets from UK Biobank](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5770339/). Neuroimage. 2018 Feb 1; 166: 400–424.

* Hutton et al., [Image distortion correction in fMRI: A quantitative evaluation](https://pdfs.semanticscholar.org/2e7e/4aa5c4e9d52d1b0f8c5d981de1ecda160611.pdf). NeuroImage. 2002, 16:217-240

* Hutton et al., [Combined correction for geometric distortion and its interaction with head motion in fMRI](https://www.researchgate.net/publication/285129384_Combined_correction_for_geometric_distortion_and_its_interaction_with_head_motion_in_fMRI). Proceedings of ISMRM 12, 2004, Kyoto, Japan

* Power et al. [Spurious but systematic correlations in functional connectivity MRI networks arise from subject motion](https://www.ncbi.nlm.nih.gov/pubmed/22019881). Neuroimage. 2012 59(3):2142-54.

* Satterthwaite et al., [Motion artifact in studies of functional connectivity: characteristics and mitigation strategies](https://onlinelibrary.wiley.com/doi/full/10.1002/hbm.23665) Hum. Brain Mapp. 2017.

* Ciric et al., [Benchmarking of participant-level confound regression strategies for the control of motion artifact in studies of functional connectivity.](https://www.ncbi.nlm.nih.gov/pmc/articles/pmid/28302591/) Neuroimage. 2017 Jul 1; 154: 174–187.

* Andersson et al., [Modelling geometric deformations in EPI time series](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.159.3027&rep=rep1&type=pdf). NeuroImage. 2001 13:903-919






# fMRI Quality Analysis Pipelines

I have been looking for information about fMRI data quality analysis techniques for a while for my own fMRI quality analysis. I made a list of available sources from some websites/blogs and academical papers and wanted to share with anyone interested. I will be updating those sites as I found along my research but here is the current list of sources I have collected so far. I hope those helps you all. 

If you know any sources that you think they should be listed here please do feel free to add those here. You can either send me a pull request and reach me out through my email or twitter account.

## Quality Analysis Sources

### Web Pages

* Harvard Univeristy's [neuroimaging page](http://cbs.fas.harvard.edu/science/core-facilities/neuroimaging/information-investigators/qc) gives detailed explanation of investigations you should run through your data. Although the page explains the pipeline through their system called CBSCentral, you still could learn quite bit details about quality analysis steps from this page.

* Cambridge University's two webpage [here](http://imaging.mrc-cbu.cam.ac.uk/imaging/CommonArtefacts#spinhistory) and [here](http://imaging.mrc-cbu.cam.ac.uk/imaging/DataDiagnostics) gives you the indications of noise you might find in your data. 

* Cambridge University's [wikipage](https://wiki.cam.ac.uk/bmuwiki/FMRI) on framewise displacement and functional connectivity

* MIT's [Mindhive](http://mindhive.mit.edu/node/54) has always been one of the websites I look for a help for fMRI data analysis and I highly recommend 

* I believe there is no need to indicate specifically but wonderful series of blogposts [here](https://practicalfmri.blogspot.com/2011/11/understanding-fmri-artifacts.html) and [here](https://practicalfmri.blogspot.com/2011/11/understanding-fmri-artifacts-good.html) by [practiCal fMRI](https://twitter.com/practiCalfMRI).




### Manuals
* Massachussetts General Hospital's [Quality Control Manual](http://cbs.fas.harvard.edu/usr/mcmains/CBS_MRI_Qualitative_Quality_Control_Manual.pdf)

* University of Missouri's [guideline](http://bic.missouri.edu/doc/instruction_for_data_quality.pdf)

* University of Newyork's fMRI Data Quality [guideline](http://cbi.nyu.edu/Downloads/dataQuality.pdf)



### Presentations
[MRI Quality Control Presentation](http://cbs.fas.harvard.edu/usr/mcmains/CBS_MRI_Quality_Control_Workshop.pdf) by Natasha S. Hansen


### Videos of MR Quality Assessments

[Introduction to manual quality control in FSL](https://vimeo.com/61213860) by Harvard University.



### Workflows - Toolboxes

* [MRIQC](https://mriqc.readthedocs.io/en/stable/) by the Poldrack Lab at Stanford University

* Cambridge University's [data diagnostic](http://imaging.mrc-cbu.cam.ac.uk/imaging/DataDiagnostics) webpage. This page explains how to extract mean and standart images from the data. I wrote the scripts in Matlab, so you can find them from [here] !!!!!!. Cambridge also provides a tsdiffana toolbox to plot the variations across the image-to-image and slice-to-slice intensity variance. I found those plots very useful to find out the noisy participants, I would strongly recommend you to use it as a starting QA analysis. 

* MIT's Artifact Detection toolbox [ART](https://www.nitrc.org/projects/artifact_detect/)

* University of Pennsylvania [QA Bash scripts](https://www.med.upenn.edu/cmroi/qascripts.html_) to use on bold, dti and perfusion data 

* A blog post by [CogNeuroStats](http://blog.cogneurostats.com/2013/05/23/quality-checking-fmri/) on how to install use fBIRN QC/QA for data quality analysis 

* Standford's [ArtRepair tool](https://cibsr.stanford.edu/tools/human-brain-project/artrepair-software/artrepairinstructions.html) to check and repair the slice and volume artifacts in your data and gives a global summary across the subjects.

* Rorden Lab's fMRI analysis and quality investigation [scripts](https://github.com/rordenlab/spmScripts)



### Scientific Articles

* Davids et al.,[Fully-automated quality assurance in multi-center studies using MRI phantom measurements](https://www.ncbi.nlm.nih.gov/pubmed/24602825). Magn. Reson. Imaging.  2014. 32, 771–780.


* Stöcker et al., [Automated quality assurance routines for fMRI data applied to a multicenter study](https://onlinelibrary.wiley.com/doi/full/10.1002/hbm.20096). Hum Brain Mapp. 2005 Jun; 25(2):237-46.

* Liu et al., [Quality assurance in functional MRI](https://link.springer.com/chapter/10.1007/978-1-4899-7591-1_10) 2015. In:
Ugurbil, K., Berliner, L., Uludag, K. (Eds.), fMRI: From Nuclear Spins to Brain Function.
Springer

* . Friedman L et al. [Report on a multicenter fMRI quality assurance protocol](https://onlinelibrary.wiley.com/doi/full/10.1002/jmri.20583). J Magn Reson Imaging. 2006 Jun; 23(6):827-39. 

* Alfaro-Almagro et al. [Image processing and Quality Control for the first 10,000 brain imaging datasets from UK Biobank](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5770339/). Neuroimage. 2018 Feb 1; 166: 400–424. 

* Power et al. [Spurious but systematic correlations in functional connectivity MRI networks arise from subject motion](https://www.ncbi.nlm.nih.gov/pubmed/22019881). Neuroimage. 2012 59(3):2142-54.

* Satterthwaite et al., [Motion artifact in studies of functional connectivity: characteristics and mitigation strategies](https://onlinelibrary.wiley.com/doi/full/10.1002/hbm.23665) Hum. Brain Mapp. 2017.

* Ciric et al., [Benchmarking of participant-level confound regression strategies for the control of motion artifact in studies of functional connectivity.](https://www.ncbi.nlm.nih.gov/pmc/articles/pmid/28302591/) Neuroimage. 2017 Jul 1; 154: 174–187.






                           Data analysis of online learning platform offered by Newcastle University 
              

The data is about a massive open online course (MOOC) at Newcastle University named "Cyber Security:
Safety At Home, Online, and in Life" has been offered seven times to the general public using the online education platform FutureLearn.


statistical analysis projects can be structured using the R package called ProjectTemplate. 
       steps to execute the project Template

*first'create.project()' has to be executed after installing the package called ProjectTemplate.
*To load the project ,'setwd("~/MOOC_Assignment")' has to run in console, then run the below code
 lines of R code:

	library('ProjectTemplate')
	load.project()
*In the MOOC_Assignment directory go to the config and set 'load_libraries: TRUE' in the file global.dcf
*The required library is included in the section called libraries
After running the load.project the below process run in background
* Reading in the global configuration file contained in `config`.
* Loading any R packages you listed in the configuration file.
* Reading in any datasets stored in `data` or `cache`.
* Preprocessing your data using the files in the `munge` directory.

*For every analysis,put a separate R file in the `src` directory.
*The code given below has to be included in the R file

	library('ProjectTemplate')
	load.project()

The packages that required for this projecttemplate to run are:
reshape2, plyr, tidyverse, stringr, lubridate,sqldf,ProjectTemplate,imager,knitr,RH2

Locations of important file
R Markdown File(.RMD file)-->MOOC_Assignment\reports
Reports generated (.docx,.pdf,.html)---> MOOC_Assignment\reports
Reflective log---------> in the same directory where the readme is located and in MOOC_Assignment\reports
Video(.mp4) and presentation(.ppt) -----> in \210409183_video_slide\ 

Note: For generating pdf 'tinytex' has to be installed 





For more details about ProjectTemplate, see http://projecttemplate.net

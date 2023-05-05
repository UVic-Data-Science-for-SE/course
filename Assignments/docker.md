---
Title: Docker with RStudio
Author: Neil Ernst
Date: May 2023
---

# Installing RStudio

We will require (at least) the following packages for analysis in the course:

* rstanarm
* tidyverse
* ggplot2
* bayesplot

You can install RStudio and these packages locally on your computer, of course, but occasionally library headaches pop up. THerefore, I have created a Docker image with the necessary software. To get it:

1. Install [Docker on your computer](https://www.docker.com) (should be on the lab machines).
2. Execute `docker pull neilernst/dsse_bayes` to get the image.
3. Run `docker run --rm -ti -e PASSWORD=yourpassword -p 8787:8787 neilernst/dsse_bayes` to start the container.
4. Navigate to https://localhost:8787 to get the RStudio interface. Login with "rstudio:yourpassword". 

Remember that containers, if killed, will not save your data [without some work on your end](https://docs.docker.com/storage/). I highly recommend saving the files you work on to your own disk, and not the "fake" disk that the container creates. 
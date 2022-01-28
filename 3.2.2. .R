## 3.2.2 advanced assignment 
## Thomas Willems

## question 2
devtools::install_github("cutterkom/generativeart")
install.packages("ambient")
library(generativeart)
library(ambient)
library(dplyr)

make_art <- function(seed1, nr_img, color1, background_color1){
  set.seed(seed1)
IMG_DIR <- "aRt/"
IMG_SUBDIR <- "everything/"
IMG_SUBDIR2 <- "handpicked/"
IMG_PATH <- paste0(IMG_DIR, 
                   IMG_SUBDIR)
LOGFILE_DIR <- "logfile/"
LOGFILE <- "logfile.csv"
LOGFILE_PATH <- paste0(LOGFILE_DIR, 
                       LOGFILE)
# create the directory structure
generativeart::setup_directories(IMG_DIR, 
                                 IMG_SUBDIR, 
                                 IMG_SUBDIR2, 
                                 LOGFILE_DIR)
my_formula <- list(
  x = quote(runif(1, -1, 10) * x_i^2 - sin(y_i^2)),
  y = quote(runif(1, -1, 10) * y_i^3 - cos(x_i^2) * y_i^4)
)
generativeart::generate_img(formula = my_formula, 
                            nr_of_img = nr_img, # set the number of iterations
                            polar = TRUE, 
                            filetype = "png", 
                            color = color1, 
                            background_color = background_color1)
}

make_art (1234, 1, "#E0542E", "#1a3657")


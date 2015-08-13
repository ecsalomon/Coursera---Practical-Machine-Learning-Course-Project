getData <- function(set = c("training", "testing")) {
  # Is the file absent? If so, download the data
  filename <- paste("pml-", set, ".csv", sep = "")
  if (!file.exists(filename)) {
    URL <- paste("https://d396qusza40orc.cloudfront.net/predmachlearn/",
                 filename, sep = "")
    download.file(URL, filename, method = "curl")
  }
  # return the data
  read.csv(filename)
}
## finding the max and min values for each column of the final data set
## used for writing the CodeBook.md

final <- read.table("run_analysis.txt") ## dim final = 181 * 88

## exclude the subject and activity columns

nfinal <-final[2:nrow(final), 3:ncol(final)] ## dim nfinal = 180 * 86


for (i in 1:86){
    
    col <- as.character(nfinal[ ,i])
    col <- as.numeric(col)
    
    col_name <- as.character(final[1, i+2])
    index <- as.character(i+2)
       
    cat("min value in col", index, col_name, "= ", min(col), fill=TRUE)
    cat("max value in col",  index, col_name, "= ", max(col), fill=TRUE)
    cat("", fill=TRUE)

}


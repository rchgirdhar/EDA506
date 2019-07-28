#get the working directory
getwd()

#setting the new working directory
setwd(dir = "/Users/richagirdhar/Desktop/HU/EDA")

#let us look at all the objects in the workspace
ls()

#Let us create some dataframes
study1.df <- data.frame(id = 1:5, 
                        sex = c("m", "m", "f", "f", "m"), 
                        score = c(51, 20, 67, 52, 42))

score.by.sex <- aggregate(score ~ sex, 
                          FUN = mean, 
                          data = study1.df)

study1.htest <- t.test(score ~ sex, 
                       data = study1.df)

#Save the objects in the new working directory
save(study1.df, score.by.sex, study1.htest,
     file = "study1.RData")

ls() #can now see the new dataframes in the workspace

#Writing a dataframe into a tab delimited
write.table(x = study1.df,
            file = "study1.txt",  # Name of the file
            sep = "\t")            # Makes the columns tab-delimited


#Read table from txt file
mydata <- read.table(file = 'study1.txt',         # gets file from the wd
                     sep = '\t',                  # tab-delimited file
                     header = TRUE,               # there is header in the first row
                     stringsAsFactors = FALSE)    # not converting strings to factors

mydata #view the dataframe

#Read table from the web
fromweb <- read.table(file = 'http://goo.gl/jTNf6P',
                      sep = '\t',
                      header = TRUE)
fromweb


# Test your R Might!
rm(list=ls())
a <- data.frame("sex" = c("m", "f", "m"),
                "age" = c(19, 43, 25),
                "favorite.movie" = c("Moon", "The Goonies", "Spice World"))
b <- mean(a$age)

c <- table(a$sex)

#Read directly from web
club.df <- read.table(file = 'http://nathanieldphillips.com/wp-content/uploads/2015/12/club.txt',
                      sep = '\t',
                      header = TRUE)

#Write data to text file
write.table(x = club.df,
            file = "club.txt",     # Save the file as txt
            sep = "\t")            # Make the columns tab-delimited

ls()

save.image(file = "myobjects.RData") #Saving the objects into a .RData file

rm(list=ls())

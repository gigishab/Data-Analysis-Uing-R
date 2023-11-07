
df1<-read.csv("https://public.tableau.com/app/sample-data/HollywoodsMostProfitableStories.csv")

#Take a look at the data: 
View(df1)

#Load library: 
install.packages("tidyverse")

#Import library 
library(tidyverse)

# Check data types: 
str(df1)

# Check for missing values: 
colSums(is.na(df1))

#Drop missing values 
df1<-na.omit(df1) #or df<-df%>%drop_na()

# check to make sure that the rows have been removed 
View(df1)

#Summary Statistics: 
summary(df1)

#scatterplot 
ggplot(df1, aes(x=Lead.Studio, y=Rotten.Tomatoes..)) + geom_point()+ scale_y_continuous(labels = scales::comma)+coord_cartesian(ylim = c(0, 110))+theme(axis.text.x = element_text(angle = 90))

#bar chart 
ggplot(df1, aes(x=Year)) + geom_bar()


#Export clean data 
write.csv(df1,"clean_df.csv") 
write.csv(df1, 'clean_df.csv')

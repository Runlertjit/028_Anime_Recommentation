#Exercise 1
x <- c(10.4,5.6,3.1,6.4,21.7)
mean(x) # 9.44
sum(x) # 47.2
median(x) # 6.4
sd(x) #7.33846
var(x) #53.853

#Exercise 2 
#2.1
# List of Marvel movies (Order by Marvel Phase released)
names <- c("Iron Man","The Incredible Hulk","Iron Man 2","Thor","Captain America: The First Avenger",
           "The Avengers","Iron Man 3","Thor: The Dark World","Captain America: The Winter Soldier",
           "Guardians of the Galaxy","Avengers: Age of Ultron","Ant-Man","Captain America: Civil War",
           "Doctor Strange","Guardians of the Galaxy 2","Spider-Man: Homecoming","Thor: Ragnarok","Black Panther",
           "Avengers: Infinity War","Ant-Man and the Wasp","Captain Marvel","Avengers: Endgame",
           "Spider-Man: Far From Home","WandaVision","Falcon and the Winter Soldier","Loki","Black Widow")

# List of released year of Marvel movies
years <- c(2008,2008,2010,2011,2011,2012,2013,2013,2014,2014,2015,2015,2016,2016,
           2017,2017,2017,2017,2018,2018,2019,2019,2019,2021,2021,2021,2021)


marvel_movies <- data.frame(names,years) 
View(marvel_movies)
#Dataframe is easy to retrieve data by extracting data for each column to match automatically.

#2.2
#Finding the information:

#The numbers of movies
length(names) #27

#Finding the 19th movies name

names[19] #"Avengers: Infinity War"

#Which year is most released movies (In this question can using observation data, not necessary to used command to find answer)

#2017,2021



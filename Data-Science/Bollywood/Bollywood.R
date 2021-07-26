bollywood <- read.csv("bollywood.csv")

# Access the last 10 movies (from bottom of bollywood dataframe).
# Find out the total number of missing values (NA) in the bollywood dataframe.
# Write the command to find out which movie tops the list in terms of Total Collections
# Write the command to find out which movie comes second on the list in terms of Total Collections
# Find out the movies shot by Shahrukh, Akshay & Amitabh separately.
# What is the total collection of Shahrukh, Akshay & Amitabh movies individually?
#     Write command/s to find out how many movies are in flop,average, Hit & Superhit categories in entire bollywood dataset.
# Write command/s to display the movies which have Tcollection more than 100.
# Find mean of Ocollection, Wcollection, Fwcollecion & Tcollection.
# Find maximum value of Ocollection, Wcollection, Fwcollecion & Tcollection.
# Write command to find name of movies which have maximum Ocollection, Wcollection, Fwcollecion & Tcollection.


print("DATASET")
#View(bollywood) opens the file in the new tab
print(bollywood)

print("Type of dataset")
print(class(bollywood))
print(mode(bollywood))
print(typeof(bollywood))

print("Internal Data Structure Of Dataset(str)")
print(str(bollywood))

print("Last 10 movies (from bottom of bollywood dataframe) using column.")
print(tail(bollywood,10))

print("Total number of missing values (NA) in the bollywood dataframe.")
print(sum(is.na(bollywood)))

#edit(bollywood) used to edit the invoking file

attach(bollywood)
print("Last 10 column")
print(tail(bollywood['Movie'],10))

print("Second method")
n=nrow(bollywood)
print(n)
m=bollywood$Movie[(n-9):n]
print(m)

print("Movie tops the list in terms of Total Collections")
#print(max(Tcollection))
#w=which.max(bollywood$Tcollectionn)
#print(bollywood[w,])
print(bollywood[which.max(bollywood$Tcollection),])

print("Movie comes second on the list in terms of Total Collections")
mt=max(bollywood$Tcollection)
mi=which(bollywood$Tcollection==mt)
mt2=max(bollywood$Tcollection[-mi])
print(bollywood[which(bollywood$Tcollection==mt2),])

print("Movies shot by Shahrukh")
print(Movie[bollywood['Lead']=='Shahrukh'])

print("Movies shot by Akshay")
print(Movie[bollywood['Lead']=='Akshay'])

print("Movies shot by Amitabh")
print(Movie[bollywood['Lead']=='Amitabh'])

#subset(bollywood, Lead == "Shahrukh")
#subset(bollywood, Lead == "Akshay")
#subset(bollywood, Lead  == "Amitabh")

print("Total collection of Shahrukh")
print(sum(Tcollection[bollywood['Lead']=='Shahrukh']))

print("Total collection of Akshay")
print(sum(Tcollection[bollywood['Lead']=='Akshay']))

print("Total collection of Amitabh")
print(sum(Tcollection[bollywood['Lead']=='Amitabh']))

#sum(shahrukh$Tcollection)
#sum(akshay$Tcollection)
#sum(amitabh$Tcollection)

print("Movies in Flop category")
print(subset(bollywood, Verdict == "Flop"))

print("Movies in Average category")
print(subset(bollywood, Verdict == "Average"))

print("Movies in Hit category")
print(subset(bollywood, Verdict == "Hit"))

print("Movies in Superhit category")
print(subset(bollywood, Verdict == "Super Hit"))

print("Movies which have Tcollection more than 100")
print(subset(bollywood, Tcollection >100))

print("Mean of Ocollection, Wcollection, Fwcollecion & Tcollection")
print(sapply(bollywood[4:7],mean,na.rm=TRUE))

print("Max of Ocollection, Wcollection, Fwcollecion & Tcollection")
print(sapply(bollywood[4:7],max,na.rm=TRUE))

print("Name of movies which have maximum Ocollection, Wcollection, Fwcollecion & Tcollection")
print(bollywood[which.max(bollywood$Tcollection),"Movie"])
print(bollywood[which.max(bollywood$Ocollection),"Movie"])
print(bollywood[which.max(bollywood$Fwcollection),"Movie"])
print(bollywood[which.max(bollywood$Wcollection),"Movie"])
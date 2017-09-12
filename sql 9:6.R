query<-"SELECT playerID,yearID,teamID,HR FROM Batting
WHERE teamID= 'NYA' and HR>=40"

sqldf(query)

#-----------------
query<-"SELECT playerID,yearID,teamID,HR,SO FROM Batting
WHERE HR>40 and SO<60"

sqldf(query)


#---------------
query<-"SELECT playerID,yearID,teamID,HR FROM Batting
WHERE teamID='PHI'and HR>30 and yearID<=1979 and yearID>=1970"

sqldf(query)



#---------------
query<-"SELECT playerID,yearID,teamID,HR FROM Batting
WHERE HR>50
ORDER BY HR DESC"
sqldf(query)




#--------------
query<-"SELECT playerID,yearID,teamID,SO, AB FROM Batting
WHERE SO<10 and AB>=400
ORDER BY SO"
sqldf(query)


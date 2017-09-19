query<- "SELECT playerID, sum (HR) FROM Batting
WHERE playerID='ruthba01'
GROUP BY playerID"

sqldf(query)


#---------------------

query<- "SELECT playerID, sum(HR) FROM Batting 
GROUP BY playerID
HAVING sum(HR)>600
ORDER BY sum(HR) DESC"
sqldf(query)

#----------------
query<- "SELECT playerID, avg(HR) FROM Batting
GROUP BY playerID
HAVING avg(HR)>30
ORDER BY avg(HR) DESC"
sqldf(query)




#----------------
query<- "SELECT nameFirst,nameLast,yearID,teamID,HR 
FROM Batting INNER JOIN Master
ON Batting.playerID=Master.playerID
WHERE Batting.playerID='ruthba01'"
sqldf(query)
#-------------------------

query<- "SELECT nameFirst,nameLast,yearID,teamID,HR 
FROM Batting INNER JOIN Master
ON Batting.playerID=Master.playerID
WHERE HR>50
ORDER BY HR DESC"
sqldf(query)





#------------


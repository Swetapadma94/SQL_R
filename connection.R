install.packages("RMySQL")
library(RMySQL)
db=dbConnect(MySQL(),dbname="excelr",host="localhost",user="root",password="sweta@123")
dbListTables(db)
dbListFields(db,'demo')

sd=dbSendQuery(db,"select * from demo" );
data=fetch(sd,n=-1)
# creating Table
dbSendQuery(db,"CREATE TABLE BOOK(BOOK_ID INT,BOOK_NAME VARCHAR(20),AUTHOR VARCHAR(25));")
# Inserting values
dbSendQuery(db,"INSERT INTO BOOK VALUES (1,'AMAZING SECRET','GOPAL DAS'); ")
sd=dbSendQuery(db,"select * from demo" );
data=fetch(sd,n=-1)




select ''
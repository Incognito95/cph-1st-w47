# cph-1st-w47



## 0. Install the sakira database if not already there. 
a. Download from: https://downloads.mysql.com/docs/sakila-db.zip  
b. Extract folder  
c. In MySQL Workbench, when connected to local instance, go to Administration -> Data Import/Restore  
d. Choose "Import from Self-Contained File" and select the "sakila-schema.sql"  
e. Press "Start Import"   
    (Note: if you don't have a start import button, try looking in the "Import Progress tab").   
f. Repeat step d. and e. for the file sakila-data.sql".  
	

## 1. Queries in MySQL Workbench. 

a. Open MySQL Workbench and create a new SQL tab (CTRL / CMD + t)   
b. write "USE sakila;" at the very first line.  
c. SELECT everything from the "actor" table.  
d. SELECT everything from the "actor" table where the last_name is "CAGE"  
e. SELECT everything from the "actor" table where the first_name is not "ZERO" and not "NICK"  
f. SELECT everything from the "actor" table where the first_name is "NICK", "JOHNNY", "JAMES", "MORGAN", or "WHOOPI" (hint: use the "IN" keyword)  
g. SELECT all rows from the "actor" table with an actor id ranging from 50 to 150;  
h. SELECT all rows from the "actor" table where first_name starts with the letter "C" (HINT: LIKE)  
i. Select all rows from the "actor" table, ordered by first_name	  
j. Select all rows from the "actor" table, ordered by last_name descending	  
k. Get the count of rows in the "actor" table.  
l. Get the count of rows in the "actor" table with distinct first_name  
m. SELECT all the horror films using the IN keyword.  
n. SELECT all the horror films using the AS keyword.   
	
## 2. More queries 
a. INSERT a row in the "actor" table, with your own first and last name.  
b. INSERT 5 rows in the "film_actor" table, with the actor_id given to you, along with 5 film_id's of your choosing.    
c. UPDATE the first_name and last_name of the row containing your name, and set it to your newfound stage name.   
d. Delete the row containing your data, and give up your acting career.   

## 3. JOINS
a. SELECT all rows from the category table. Note what id is "Horror"   
b. SELECT all rows from the film table and join the film_category table on film_id. Then join the category table on the category ID and add a where clause to   retrieve only films with the horror category_id. 
	

	
## 4. JDBC
a. Create a connection to your local instance world database.   
    - The URL should look like this: "jdbc:mysql://localhost/world"  
    - Create the connection like this:   
        Connection connection = null;   
        connection = DriverManager.getConnection(URL, username, password);  
    - NOTE: the second line in the above step, must be in a try/catch.  
b. Create a prepared statement, that retrieves the count of all cities in the city table. Write the result to console.   
c. Create a prepared statement, that retrieves all cities with a population greater than 5.000.000 and prints each result to console.   
d. Create a class called City with relevant data fields, and populate an arraylist\<City\> with the results retrieved from the above task (c).  
e. Override toString for the City class and print the arrayList to console.  
f. Close connection  
	
	
## 5 (OPTIONAL) Diagram and relational database  
a. In MySQL workbench, go to File -> new Model -> new Diagram  
b. model a database that can hold data of a customer making an order of multiple products.   
c. Once done with the diagram, go to File -> Export -> Forward Engineering.  
d. Check the two first options - Generate DROP and the press next.   
e. Press the show filter buttons and ensure that only objects related to your newly created diagram are selected, then press next.   
f. Press copy to clipboard and then finish.   
g. In your local instance, create new SQL tab (CTRL / CMD + t) and paste the SQL you copied to clipboard in the previous step.   
h. Execute the script. Solve errors. Execute again.   
i. Press refresh in the Schemas and review your new tables.   
j. If you like, you can try to insert data to it.   
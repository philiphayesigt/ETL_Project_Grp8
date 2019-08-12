# ETL_Project_Grp8

#### Vasudha Gangireddy - ETL for GoodReads Data, Creation of Titles table and corresponding SQL Query 
#### Philip Hayes - ETL for IMDB Movies Data


## Does a good book make a good movie?

Our goal for the ETL Project will be to create two tables, one for books and one for movies. 

From Kaggle.com we found a dataset for books listed on Goodreads.com (https://www.kaggle.com/jealousleopard/goodreadsbooks) and a dataset for movies listed on IMDB.com (https://www.kaggle.com/orgesleka/imdbmovies).

Once we have the datasets extracted, we will drop any unnecessary information and clean what data we remains. We will then load these two tables into a SQL database on Postgres.

With two clean tables loaded into our database, we plan to define movies and books that share a title and pull the ratings for both mediums into one table. This allows analysis to be completed on the quality of books in relation to their film adaptation.


### Methodology
#### Extraction
We began by identifying the book and movie datasets from two different sources on Kaggle.com. 
    Book Data - https://www.kaggle.com/jealousleopard/goodreadsbooks
    Movie Data - https://www.kaggle.com/orgesleka/imdbmovies
    
The data was downloaded into .csv files. Once downloaded we recognized some corruption in the .csv files where a small number of rows were misaligned from the remaining 13,000-14,000 rows. We manually cleaned these rows out from each file.

We then converted into Pandas DataFrames using Jupyter Notebooks. We segregated the files into two folders within our repository.

#### Transformation
Once the data was loaded into DataFrames we dropped columns that contained data unneccesary for our purpose. For each file we settled on 4-6 datapoints for each book or movie. We also filtered out information from the movies database, excluding tv shows, music, etc. 

At this point we had two clean tables containing only pertinent data. We then created three SQL tables using pgAdmin. We created a unique table for each medium and one table to combine the data. The code for the table creation can be found in the schema.sql file.

#### Loading
We then set up a connection between the Jupyter Notebooks and the SQL database in pgAdmin and passed the data into the tables.

Once the data was loaded into the SQL tables, we created queries that allow for a user to search and find pertinent data for any book or movie that share a keyword in their title. This query is saved in the query.sql document and uses the keyword "Harry" for an example. 



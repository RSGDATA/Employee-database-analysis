# sql-challenge

This was a challenge that required data modeling, data engineering and data analysis using postgresql  

and importing the schemata using pandas to visualize trends in the given databases 

  

1 You will find a my ERD, schema, queries, and jupyter notebook in the EmployeeSQL folder. 

2 ERD image file is under the name "erd_employee_sketch.png" 

3 Schema is under the file name "EMP_TABLES.sql" 

4 Queries are in the "queries.sql" file 

5 Jupyter notebook is in the "EmployeePy.SQL.ipynb" file 

  

When sketching my erd I thought it would be a good idea to have a primary key in each table. This is because I was planning on completing my queries by merging tables 

by the use of joins, apposed to selecting information from different tables using sub queries. Also, the edition of primary key in every table, gives each table a unique identifier 

and makes it so I could do groupbys and not have to worry about getting errors. 

  

After the queries where answered I imported my schemata using sqlalchemy import and was able to visualize the data by making a histogram on the average salary range 

and you will see that vast majority are in the 40k-50k range. the actual average salary after doing a .mean() on the salary table is 52,970. 

  

the other visualization is done by the use of a bar chart on the average salary by title. I prepare the bar chart by using a groupby on title against salary. the results show that highest paid 

job on the list is Senior Engineer at 78,228 a year.


 

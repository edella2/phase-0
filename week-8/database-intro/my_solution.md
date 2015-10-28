1.
SELECT * FROM states;

2.
SELECT * FROM regions;

3.
SELECT state_name, population
FROM states;

4.
SELECT state_name, population
FROM states
ORDER BY population DESC;

5.
SELECT state_name
FROM states
WHERE region_id = 7;

6.
SELECT state_name, population_density
FROM states
WHERE population_density > 50
ORDER BY population_density ASC;

7.
SELECT state_name
FROM states
WHERE population > 1000000 AND population < 1500000;

8.
SELECT state_name, region_id
FROM states
ORDER BY region_id ASC;

9.
SELECT region_name
FROM regions
WHERE region_name LIKE "%Central";

10.
SELECT region_name, state_name
FROM regions, states
ORDER BY region_id ASC;

##SCHEMA

![schema](https://github.com/edella2/phase-0/blob/master/week-8/database-intro/schema.png "schema")



## REFLECTIONS

#### 1. What are databases for?

Databases are a collection of information that can be easily accessed.  It can be a collection of tables that organizes the information. The data should be easy to add, access and modify.

#### 2. What is a one-to-many relationship?

From above, a one-to-many relationship can be identified by using the phrase "___belongs to a ___. ___ has many ___".  The example used is that Wisconsin belongs to the East North Central region. This region has many states,  it makes more sense to seperate the tables into one for regions and one for states.

#### 3. What is a primary key? What is a foreign key? How can you determine which is which?

When the tables are split the states table has a column for region_id.  In the regions table there is a column called id.  The two tables can be linked together by comparing items connected to the id.

#### 4. How can you select information out of a SQL database? What are some general guidelines for that?

You can access information from a SQL database by using SELECT (column || *) FROM table_name;
and target this data using WHERE, ORDER BY, LIKE.

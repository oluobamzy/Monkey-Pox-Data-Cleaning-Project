# Monkey-Pox-Data-Cleaning-Project
This project is to explain my thought process on cleaning the monkey pox data.
Data is obtained online via Kaggle and cleaned.
The first part of the code was to check for null values in the dataset and the intention was to either remove them (if more columns are affected in a single row) or to call coalesce() function on them (if one or two columns are affected and the field is important)
The other part of the code converted the data type from bit to varchar. This was done to alllow a seamless use of the iif function in replacing the bit values with postive and negative values.

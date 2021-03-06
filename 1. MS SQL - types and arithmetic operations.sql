-- SOME OFTEN USED TYPES IN MS SQL AND ARITHMETIC OPERATIONS WITH THEM


----->  BIT (C# Boolean)
DECLARE @mybit bit = 0
PRINT @mybit  -- 0

SET @mybit = 9
PRINT @mybit  -- 1


----->  INT (C# Int32)
DECLARE @myint int = 5
PRINT @myint -- 5

SET @myint = 2147483647 + 1
PRINT @myint -- Arithmetic overflow error converting expression to data type int.
             -- 5


----->  DECIMAL(NUMERIC) (C# Decimal)
DECLARE @mydecimal1 decimal(4,2) = 19.201
PRINT @mydecimal1 -- 19.201

DECLARE @mydecimal2 decimal(8,5) = 19.2
PRINT @mydecimal2 -- 19.20000

DECLARE @mydecimal3 decimal(8,2) = 19.222222222
PRINT @mydecimal3 -- 19.22

DECLARE @mydecimal4 decimal(8,5) = 111989.2
PRINT @mydecimal4 -- Arithmetic overflow error converting numeric to data type numeric.


----->   DATE
DECLARE @mydate date = '01-11-2019'
PRINT @mydate  -- 2019-01-11

SET @mydate = '20190121'
PRINT @mydate  -- 2019-01-21


-----> DATETIME
DECLARE @mydatetime datetime = '01-11-2019 11:11:11'
PRINT @mydatetime  -- Jan 11 2019 11:11AM


-----> TIME
DECLARE @mytime time = '11:18:28.1'
PRINT @mytime -- 11:18:28.1000000

SET @mytime = '11:18:28:1'
PRINT @mytime -- 11:18:28.0010000


-----> NCHAR
DECLARE @mynchar nchar(15) = N'some char'
PRINT @mynchar -- some char      

DECLARE @mynvarchar nvarchar(5) = N'some var char'
PRINT @mynvarchar  -- some 



-----> Arithmetic operators
DECLARE @x int = 13, @y int = 8
SELECT @x + @y  -- 21
SELECT 129.11 - 19  -- 110.11

DECLARE @date datetime = '20190117 12:00'
SELECT @date + 1.25  -- 2019-01-18 18:00:00.000

SELECT 'Hello, ' + 'world!'  -- Hello, world!

SELECT 10/3  -- 3
SELECT 10.1/3  -- 3.366666
SELECT 10/3.1  -- 3.225806

SELECT 7%5 -- 2

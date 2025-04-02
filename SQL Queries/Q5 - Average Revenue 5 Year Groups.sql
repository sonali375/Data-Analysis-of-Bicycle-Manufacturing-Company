WITH cte AS (SELECT  CASE WHEN YEAROPENED BETWEEN 1970 AND 1974 THEN 1970
        WHEN YEAROPENED BETWEEN 1975 AND 1979 THEN 1975
        WHEN YEAROPENED BETWEEN 1980 AND 1984 THEN 1980
        WHEN YEAROPENED BETWEEN 1985 AND 1989 THEN 1985
        WHEN YEAROPENED BETWEEN 1990 AND 1994 THEN 1990
        WHEN YEAROPENED BETWEEN 1995 AND 1999 THEN 1995
        ELSE 2000
        END AS year_group, 
AnnualRevenue
FROM Sales.vStoreWithDemographics)

SELECT year_group, avg(AnnualRevenue) AS avg_rev, count(*) AS count
FROM cte
GROUP BY year_group
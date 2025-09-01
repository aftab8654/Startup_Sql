CREATE TABLE startups (
    Startup_ID INT PRIMARY KEY,
    Company_Name VARCHAR(255),
    Industry VARCHAR(100),
    One_Line_Pitch TEXT,
    Founding_Year INT,
    Headquarters_Location VARCHAR(255),
    Funding_Stage VARCHAR(50),
    Last_Funding_Amount_USD_Millions DECIMAL(12,2),
    Number_of_Employees INT,
    Website VARCHAR(255),
    LinkedIn_Profile VARCHAR(255),
    Twitter_Handle VARCHAR(100),
    CEO_Name VARCHAR(100),
    Core_Technology VARCHAR(100),
    Market_Size_Billion_USD DECIMAL(12,2)
);
-- Count the total number of startups

SELECT COUNT(*) AS total_startups FROM startups;


-- Find the oldest startup (earliest founding year)

SELECT Company_Name, Founding_Year
FROM startups
ORDER BY Founding_Year ASC
LIMIT 1;


-- Get the number of startups by industry

SELECT Industry, COUNT(*) AS startup_count
FROM startups
GROUP BY Industry
ORDER BY startup_count DESC;


-- Find startups with more than 100 employees

SELECT Company_Name, Number_of_Employees
FROM startups
WHERE Number_of_Employees > 100;


-- Get the average funding amount by funding stage

SELECT Funding_Stage, AVG(Last_Funding_Amount_USD_Millions) AS avg_funding
FROM startups
GROUP BY Funding_Stage;


-- List startups founded after 2020 in the AI/ML industry

SELECT Company_Name, Founding_Year, Core_Technology
FROM startups
WHERE Founding_Year > 2020
  AND (Industry LIKE '%AI%' OR Core_Technology LIKE '%Learning%');


-- Find the top 5 startups with the largest market size

SELECT Company_Name, Market_Size_Billion_USD
FROM startups
ORDER BY Market_Size_Billion_USD DESC
LIMIT 5;


-- Count startups by headquarters country
-- (assuming country is the last part of Headquarters_Location)

SELECT SPLIT_PART(Headquarters_Location, ',', -1) AS Country,
       COUNT(*) AS startup_count
FROM startups
GROUP BY Country
ORDER BY startup_count DESC;


-- Find the CEO names of startups in Series B stage

SELECT Company_Name, CEO_Name
FROM startups
WHERE Funding_Stage = 'Series B';


-- Calculate total funding raised across all startups

SELECT SUM(Last_Funding_Amount_USD_Millions) AS total_funding_millions
FROM startups;

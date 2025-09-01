
It analyzes a dataset of **3,000+ startups** across industries, technologies, funding stages, and geographies.

---

## 📂 Dataset
The dataset contains:
- `Startup_ID`
- `Company_Name`
- `Industry`
- `One_Line_Pitch`
- `Founding_Year`
- `Headquarters_Location`
- `Funding_Stage`
- `Last_Funding_Amount_USD_Millions`
- `Number_of_Employees`
- `Website`
- `LinkedIn_Profile`
- `Twitter_Handle`
- `CEO_Name`
- `Core_Technology`
- `Market_Size_Billion_USD`

---

## 🛠️ Database Schema
```sql
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

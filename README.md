# hospital_operation_dashboard

# Project overview
This project leverages healthcare data to analyze patient outcomes, cost structures, and operational efficiency using Excel, SQL, and Power BI.

# Project objective
The goal of this analysis is to provide actionable insights into patient care, understanding key metrics such as:
  - ​Financial and Patient Metrics.
  - Operational Efficiency.
  - ​Patient Demographics and Case-Mix.
- Treatment and Financial Performance.

# Data Source & Description

The dataset used for this analysis was sourced from **[Kaggle.com](https://www.kaggle.com)**. It contains simulated hospital operational records designed to mimic real-world healthcare administration data, capturing patient demographics, clinical conditions, administrative costs, and treatment outcomes.

## Key Features of the Dataset:
* **Patient Demographics:** Includes unique tracking attributes such as Patient ID, Age, and Gender.
* **Clinical Records:** Tracks specific medical diagnoses (e.g., Heart Attack, Appendicitis, Cancer) and the procedures administered (e.g., Angioplasty, Appendectomy, Radiation Therapy).
* **Operational & Metrics Data:** Records critical metrics like **Length of Stay (LOS)** and **Patient Satisfaction Scores**.
* **Financial Data:** Details the total cost associated with each patient's admission and specific procedures.


 # Tools used
  - Excel
  - Power query
  - SQL
  - Power BI

 # Data Cleaning and preparation Process
  While the source data was cleaned, a systematic preparation process was executed to transform the data into analytial format:
  - Conversion of the raw data into a table.
  - The sumif  function was utilized to calculate the Total cost per medical condition.
  - A pivot Table was constructed from the data to summarize the complex relationship between medical condition amd cost.

# Dashboard Architecture & Visualizations
![Hospital Data Analysis Dashboard](hospital_dashboard_preview.jpg)
The Power BI dashboard shown utilizes a clean, container-based layout with a cohesive color theme to segment clinical, financial, and operational metrics. The user interface is structured to guide a stakeholder's eye from high-level summaries down to granular departmental insights.

## A. Key Performance Indicators (KPI Cards)
Positioned horizontally across the top banner for immediate high-level awareness:
* **Total Patients (984):** Displays the total volume of patient admissions captured in the dataset.
* **Total Cost ($8M):** Summarizes the overall financial expenditure/revenue across all operations.
* **Avg Length of Stay (37.66 days):** Tracks operational throughput and bed utilization efficiency.
* **Avg Satisfaction (3.60):** Measures the quality of patient care and experience.
* **Avg Cost ($8,367):** Monitors the mean financial impact per patient admission.

## B. Core Visualizations & Analytical Elements
The main body of the dashboard splits operational volume from financial and clinical outcomes:
* **Total Patient per Condition (Horizontal Bar Chart):** Breaks down the patient census by medical diagnosis (e.g., Fractured Leg, Heart Attack, Appendicitis) to identify primary drivers of hospital admissions.
* **Total Patient per Outcome (Column Chart):** Provides a snapshot of clinical efficacy by comparing total volume between distinct discharge categories (e.g., Recovered vs. Stable).
* **Avg Length of Stay per Condition (Horizontal Bar Chart):** Cross-references operational tracking with clinical conditions to highlight which diagnoses demand the longest recovery times (e.g., Cancer, Prostate Cancer).
* **Total Cost per Procedure (Horizontal Bar Chart):** Pinpoints the most capital-intensive medical interventions (e.g., Surgery, Radiation Therapy) to support financial budgeting.

## C. Interactive Slicers & Filtering
Located on the right-hand side panel to allow dynamic, on-the-fly data discovery:
* **Gender Slicer:** Radio buttons filtering the entire canvas by *Female* or *Male* demographics.
* **Age Slicer:** A dropdown filter allowing administrators to drill down into specific age groups or cohorts.

# Key Findings & Data Insights

Based on the data visualizations presented in the dashboard, several critical operational, financial, and clinical insights have been uncovered:

## A. Operational Efficiency & Capacity
* **Extended Recovery Timelines:** Oncology and Urology cases demand the heaviest bed utilization. Patients diagnosed with **Cancer** have the highest average length of stay (LOS) at **42.65 days**, closely followed by **Prostate Cancer** at **41.58 days**. 
* **High-Volume Drivers:** **Fractured Legs** and **Heart Attacks** lead hospital admissions with **67 patients** each, indicating a heavy, consistent demand for orthopedic and emergency cardiovascular resources.

## B. Financial Performance
* **High-Cost Cost Drivers:** Surgical interventions are the primary financial drivers for the facility. **Surgery and procedures** represent the highest total expenditure at **$1,650,000**, followed by **Radiation Therapy ($1,300,000)** and **Cardiac Catheterization ($1,206,000)**. 
* **Per-Patient Average:** While overall operational cost sits at **$8M**, the baseline average cost per single patient admission is stable at **$8,367**.

## C. Clinical Outcomes & Patient Experience
* **Positive Discharge Velocity:** Clinical outcomes lean heavily positive, with **591 patients successfully recovered** compared to **393 patients listed as stable** post-treatment.
* **Room for Satisfaction Growth:** The average patient satisfaction score is **3.60 out of 5.00**. While acceptable, this indicates mid-tier performance and highlights opportunities to improve the patient care experience.

---

# Actionable Recommendations

To optimize hospital operations and financial health based on these findings, management should consider the following strategic steps:

1. **Optimize Specialized Bed Turnaround:** Since Cancer and Prostate Cancer treatments average over 41 days per patient, establish dedicated transitional care pathways or outpatient support systems to lower acute care bed occupancy times.
2. **Standardize Resource Allocation for High-Volume Claims:** With Fractured Legs and Heart Attacks consistently driving patient volume, standardizing clinical protocols and keeping specialized trauma/cardiac teams heavily resourced will ensure consistent, high-quality care.
3. **Review High-Cost Surgical Workflows:** Conduct cost-benefit audits on the top three cost drivers (Surgery, Radiation, and Cardiac Catheterization) to see if operational bottlenecks, supply chain inefficiencies, or over-scheduling are inflating the **$1.65M** surgical budget.
4. **Deploy Patient Experience Initiatives:** To raise the satisfaction score from **3.60** toward a target of 4.50, introduce post-discharge feedback surveys to pinpoint specific pain points in nursing care, food services, or wait times.

---

# Conclusion  

This dashboard successfully unifies fragmented hospital operational, financial, and clinical data into a single source of truth. By identifying primary cost centers (Surgeries), bed utilization bottlenecks (Oncology), and throughput volumes, hospital stakeholders can transition from reactive management to data-driven operational planning.





  

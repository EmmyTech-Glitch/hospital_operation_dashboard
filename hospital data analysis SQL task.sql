--select * from dbo.hospital_data_analysis
-- top 10 most common diagnosis by patient volume   and Average cost
select top 10 
condition, count(patient_id) as patient_volume,
round (avg(cost),2) as avg_cost from hospital_data_analysis
group by condition 
order by patient_volume DESC

-- Select the unique list of medical conditions (Condition) recorded in the table.
SELECT  DISTINCT CONDITION FROM DBO.hospital_data_analysis

-- Find all female patients (Gender = 'Female') who are over the age of 60. 
SELECT GENDER, AGE FROM DBO.hospital_data_analysis
where gender = 'female' and age > 60

--List all patients who were treated for 'Heart Disease', showing only their Patient_ID, Age, and Cost.
select patient_id, age, cost  from dbo.hospital_data_analysis
 where Condition = 'heart disease'

 --Retrieve all patients who had a length of stay (Length_of_Stay) of 5 or more days, sorted from longest to shortest stay.
  select patient_id, length_of_stay  from dbo.hospital_data_analysis
   where length_of_stay >= 5 
   order by length_of_stay desc

   -- Find all patients who were not readmitted (Readmission = 'No').
   select distinct patient_id, readmission from dbo.hospital_data_analysis
   where Readmission = 0 

   -- List the top 10 most expensive procedures/treatments, sorted by Cost in descending order.
    select top 10 [Procedure], cost  from dbo.hospital_data_analysis
    order by cost desc

    --Find all patients with a medical condition that contains the word "Cancer" (using wildcards/LIKE).
    select patient_id, condition from dbo.hospital_data_analysis
      where condition like 'cancer'

      --Retrieve all patients who gave a Satisfaction score of either 4 or 5.
       select patient_id, satisfaction from dbo.hospital_data_analysis
       where satisfaction = 4 or Satisfaction = 5

       --Find all patients aged between 30 and 50 (inclusive) who experienced a 'Recovered' outcome.
       select patient_id, age, outcome from dbo.hospital_data_analysis
        where age between 30 and 50
        AND  outcome = 'recovered'

        --Calculate the total number of patients recorded in the dataset. 
        select distinct count(patient_id) as total_number_of_patient
        from dbo.hospital_data_analysis

        --Find the average, minimum, and maximum medical Cost across all patients.
        select avg(cost)  as avg_cost, min(cost) as min_cost,max(cost) as max_cost 
        from dbo.hospital_data_analysis
       
       -- Get the total number of patients grouped by Gender.
       select distinct count(patient_id) as total_number_of_patient, gender
        from dbo.hospital_data_analysis
        group by Gender

        --Group the data by Condition and find the average length of stay for each condition.
        select condition, avg(length_of_stay) as avg_length_of_stay   from dbo.hospital_data_analysis
         group by Condition

         --Count how many patients were readmitted versus how many were not.
           select
         count( case when Readmission =0 then 1 end) as  total_number_of_patient_readmitted,
         count( case when readmission = 1 then 1 end) as total_number_of_patient_not_readmitted
         from dbo.hospital_data_analysis

         --Find the total revenue generated  for each type of Procedure.
         select [procedure], sum(Cost) as total_cost
          from dbo.hospital_data_analysis
           group by [procedure]
           order by total_cost desc

           --Find the average Satisfaction score for each distinct Condition, ordered from highest satisfaction to lowest.
           select condition, avg(satisfaction) as avg_satisfaction_score from dbo. hospital_data_analysis
           group by condition
           order by avg_satisfaction_score desc

           -- List all conditions that have an average treatment cost greater than $5,000 
            select condition, avg(cost) as avg_treatment_cost from dbo.hospital_data_analysis 
            group by condition
            having  avg(cost) > 5000

            -- Find the total number of patients who had a 'Heart Attack' or 'Heart Disease', broken down by their treatment Outcome.
              select outcome, count(*) as total_number_of_patient from dbo.hospital_data_analysis
                where condition in ('heart attack', 'heart disease')
                 group by outcome
           
           --Calculate the total cost and average length of stay for male patients over the age of 65.
           select gender, sum(cost) as total_cost, avg(length_of_stay) as avg_length_of_stay, age 
           from dbo.hospital_data_analysis
           where gender = 'male' and age > 65
           group by gender, age;

            -- Write a query using a CASE statement to classify patients into three age groups: 'Under 30', '30-60', and 'Over 60', and count how many patients fall into each group. 
            select
            count( case when age < 30 then 1 end) as under_30,
            count( case when age between 30 and 60 then 1 end) as under_30_60,
            count( case when age > 60 then 1 end) as over_60
            from dbo.hospital_data_analysis

            -- Create a conditional flag column using CASE that marks a patient as 'High Cost' if their cost is above $15,000, and 'Standard Cost' otherwise.
            select patient_id,gender,cost, 
            case when cost > 15000 then 'HIGH COST'
            Else 'STANDARD COST'
            end as COST_FLAG
            from dbo.hospital_data_analysis

            --Find the condition(s) that have the highest number of readmissions (Readmission = 'Yes').
            select condition, count(readmission) as total_readmission   from dbo.hospital_data_analysis
            group by Condition
            order by total_readmission desc

            --Write a subquery to find all patients whose treatment cost is higher than the overall average cost of all patients in the database.
       
            
              select patient_id, gender , cost from dbo.hospital_data_analysis
            where cost > ( select avg(cost) from dbo.hospital_data_analysis)

            -- Find the average length of stay for patients who were readmitted versus those who weren't, grouped by Gender.
 

              select gender, patient_id,
                avg( case when readmission =0 then length_of_stay end) as Avg_los_not_readmitted,
                avg( case when readmission = 1 then length_of_stay end)  as Avg_los_readmiited
                  from dbo.hospital_data_analysis
                   group by gender, patient_id

            --- Determine which procedure has the lowest average customer satisfaction score.
             select top 1 [procedure], avg(satisfaction) as avg_satisfactioon from dbo.hospital_data_analysis
             group by [Procedure]
             order by avg_satisfactioon asc

             --Calculate the percentage of total patients who had to be readmitted (Hint: Use conditional aggregation or a subquery).
             select 
              (SUM(case when "Readmission" = 1 then 1 end) * 100) / count(*)  AS PERCENTAGE_READMITTED  from dbo.hospital_data_analysis

              select 
              (SUM(case when "Readmission" = 0 then 1 end) * 100) / count(*)  AS PERCENTAGE_NOT_READMITTED  from dbo.hospital_data_analysis

            --Calculate the running total of medical costs across all patients, ordered by Patient_ID.
            SELECT patient_id, gender,sum(cost) as total_cost from dbo.hospital_data_analysis
            group by Patient_ID,Gender

            --Find the most common Procedure performed on patients under the age of 40, and display how many times it was performed.
            select patient_id, gender, count([procedure]) as number_of_times from dbo.hospital_data_analysis
            where age < 40
             group by gender, patient_id 
             order by number_of_times desc
            




 

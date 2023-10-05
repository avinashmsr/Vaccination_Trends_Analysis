SELECT * FROM dbm_final_proj_group1.us_vaccination_data;

SELECT vaccination_date, Administered_Pfizer,Series_Complete_Pfizer FROM dbm_final_proj_group1.us_vaccination_data;

SELECT vaccination_date, Administered_Pfizer,Series_Complete_Pfizer,Administered_Pfizer-Series_Complete_Pfizer as 'difference' FROM dbm_final_proj_group1.us_vaccination_data;


SELECT 
    vaccination_date,
    Administered_Janssen,
    Administered_Pfizer,
    Administered_Moderna,
    Administered_Unk_Manuf,
    Administered_Janssen/(Administered_Janssen + Administered_Pfizer + Administered_Moderna + Administered_Unk_Manuf) as Administered_Janssen_Pct,
    Administered_Pfizer/(Administered_Janssen + Administered_Pfizer + Administered_Moderna + Administered_Unk_Manuf) as Administered_Pfizer_Pct,
    Administered_Moderna/(Administered_Janssen + Administered_Pfizer + Administered_Moderna + Administered_Unk_Manuf) as Administered_Moderna_Pct,
    Administered_Unk_Manuf/(Administered_Janssen + Administered_Pfizer + Administered_Moderna + Administered_Unk_Manuf) as Administered_Unk_Manuf_Pct,
    Series_Complete_Janssen,
    Series_Complete_Pfizer,
    Series_Complete_Moderna,
    Series_Complete_Unk_Manuf,
    Series_Complete_Janssen/(Series_Complete_Janssen + Series_Complete_Pfizer + Series_Complete_Moderna + Series_Complete_Unk_Manuf) as Series_Complete_Janssen_Pct,
    Series_Complete_Pfizer/(Series_Complete_Janssen + Series_Complete_Pfizer + Series_Complete_Moderna + Series_Complete_Unk_Manuf) as Series_Complete_Pfizer_Pct,
    Series_Complete_Moderna/(Series_Complete_Janssen + Series_Complete_Pfizer + Series_Complete_Moderna + Series_Complete_Unk_Manuf) as Series_Complete_Moderna_Pct,
    Series_Complete_Unk_Manuf/(Series_Complete_Janssen + Series_Complete_Pfizer + Series_Complete_Moderna + Series_Complete_Unk_Manuf) as Series_Complete_Unk_Manuf_Pct
FROM
    dbm_final_proj_group1.us_vaccination_data
    /*where vaccination_date in ('2021-10-25','2021-09-30')*/
ORDER BY vaccination_date DESC; 

SELECT 
    vaccination_date,
    Administered_Janssen,
    Administered_Pfizer,
    Administered_Moderna,
    Administered_Unk_Manuf,
    Administered_Janssen/(Administered_Janssen + Administered_Pfizer + Administered_Moderna + Administered_Unk_Manuf) as Administered_Janssen_Pct,
    Administered_Pfizer/(Administered_Janssen + Administered_Pfizer + Administered_Moderna + Administered_Unk_Manuf) as Administered_Pfizer_Pct,
    Administered_Moderna/(Administered_Janssen + Administered_Pfizer + Administered_Moderna + Administered_Unk_Manuf) as Administered_Moderna_Pct,
    Administered_Unk_Manuf/(Administered_Janssen + Administered_Pfizer + Administered_Moderna + Administered_Unk_Manuf) as Administered_Unk_Manuf_Pct,
    Series_Complete_Janssen,
    Series_Complete_Pfizer,
    Series_Complete_Moderna,
    Series_Complete_Unk_Manuf,
    Series_Complete_Janssen/(Series_Complete_Janssen + Series_Complete_Pfizer + Series_Complete_Moderna + Series_Complete_Unk_Manuf) as Series_Complete_Janssen_Pct,
    Series_Complete_Pfizer/(Series_Complete_Janssen + Series_Complete_Pfizer + Series_Complete_Moderna + Series_Complete_Unk_Manuf) as Series_Complete_Pfizer_Pct,
    Series_Complete_Moderna/(Series_Complete_Janssen + Series_Complete_Pfizer + Series_Complete_Moderna + Series_Complete_Unk_Manuf) as Series_Complete_Moderna_Pct,
    Series_Complete_Unk_Manuf/(Series_Complete_Janssen + Series_Complete_Pfizer + Series_Complete_Moderna + Series_Complete_Unk_Manuf) as Series_Complete_Unk_Manuf_Pct
FROM
    dbm_final_proj_group1.us_vaccination_data
    where vaccination_date in ('2021-10-25','2021-09-30','2021-08-31','2021-07-31','2021-06-30','2021-05-31','2021-04-30','2021-03-31','2021-02-28','2021-01-31','2020-12-31')
ORDER BY vaccination_date DESC; 

SELECT 
    vaccination_date,
    Administered_Janssen,
    Administered_Pfizer,
    Administered_Moderna,
    Administered_Unk_Manuf,
    Administered_Janssen + Administered_Pfizer + Administered_Moderna + Administered_Unk_Manuf AS Administered_Tot,
    Administered_Janssen / (Administered_Janssen + Administered_Pfizer + Administered_Moderna + Administered_Unk_Manuf) AS Administered_Janssen_Pct,
    Administered_Pfizer / (Administered_Janssen + Administered_Pfizer + Administered_Moderna + Administered_Unk_Manuf) AS Administered_Pfizer_Pct,
    Administered_Moderna / (Administered_Janssen + Administered_Pfizer + Administered_Moderna + Administered_Unk_Manuf) AS Administered_Moderna_Pct,
    Administered_Unk_Manuf / (Administered_Janssen + Administered_Pfizer + Administered_Moderna + Administered_Unk_Manuf) AS Administered_Unk_Manuf_Pct,
    Series_Complete_Janssen,
    Series_Complete_Pfizer,
    Series_Complete_Moderna,
    Series_Complete_Unk_Manuf,
    Series_Complete_Janssen + Series_Complete_Pfizer + Series_Complete_Moderna + Series_Complete_Unk_Manuf AS Series_Complete_Tot,
    Series_Complete_Janssen / (Series_Complete_Janssen + Series_Complete_Pfizer + Series_Complete_Moderna + Series_Complete_Unk_Manuf) AS Series_Complete_Janssen_Pct,
    Series_Complete_Pfizer / (Series_Complete_Janssen + Series_Complete_Pfizer + Series_Complete_Moderna + Series_Complete_Unk_Manuf) AS Series_Complete_Pfizer_Pct,
    Series_Complete_Moderna / (Series_Complete_Janssen + Series_Complete_Pfizer + Series_Complete_Moderna + Series_Complete_Unk_Manuf) AS Series_Complete_Moderna_Pct,
    Series_Complete_Unk_Manuf / (Series_Complete_Janssen + Series_Complete_Pfizer + Series_Complete_Moderna + Series_Complete_Unk_Manuf) AS Series_Complete_Unk_Manuf_Pct
FROM
    dbm_final_proj_group1.us_vaccination_data
WHERE
    vaccination_date IN ('2021-10-25' , '2021-09-30',
        '2021-08-31',
        '2021-07-31',
        '2021-06-30',
        '2021-05-31',
        '2021-04-30',
        '2021-03-31',
        '2021-02-28',
        '2021-01-31',
        '2020-12-31')
ORDER BY vaccination_date DESC; 

/*NEXT STEP*/
SELECT 
    vaccination_date,
    Administered_Janssen,
    Administered_Pfizer,
    Administered_Moderna,
    Administered_Unk_Manuf,
    Administered_Janssen + Administered_Pfizer + Administered_Moderna + Administered_Unk_Manuf AS Administered_Tot,
    Administered_Janssen / (Administered_Janssen + Administered_Pfizer + Administered_Moderna + Administered_Unk_Manuf) AS Administered_Janssen_Pct,
    Administered_Pfizer / (Administered_Janssen + Administered_Pfizer + Administered_Moderna + Administered_Unk_Manuf) AS Administered_Pfizer_Pct,
    Administered_Moderna / (Administered_Janssen + Administered_Pfizer + Administered_Moderna + Administered_Unk_Manuf) AS Administered_Moderna_Pct,
    Administered_Unk_Manuf / (Administered_Janssen + Administered_Pfizer + Administered_Moderna + Administered_Unk_Manuf) AS Administered_Unk_Manuf_Pct,
    Series_Complete_Janssen,
    Series_Complete_Pfizer,
    Series_Complete_Moderna,
    Series_Complete_Unk_Manuf,
    Series_Complete_Janssen + Series_Complete_Pfizer + Series_Complete_Moderna + Series_Complete_Unk_Manuf AS Series_Complete_Tot,
    Series_Complete_Janssen / (Series_Complete_Janssen + Series_Complete_Pfizer + Series_Complete_Moderna + Series_Complete_Unk_Manuf) AS Series_Complete_Janssen_Pct,
    Series_Complete_Pfizer / (Series_Complete_Janssen + Series_Complete_Pfizer + Series_Complete_Moderna + Series_Complete_Unk_Manuf) AS Series_Complete_Pfizer_Pct,
    Series_Complete_Moderna / (Series_Complete_Janssen + Series_Complete_Pfizer + Series_Complete_Moderna + Series_Complete_Unk_Manuf) AS Series_Complete_Moderna_Pct,
    Series_Complete_Unk_Manuf / (Series_Complete_Janssen + Series_Complete_Pfizer + Series_Complete_Moderna + Series_Complete_Unk_Manuf) AS Series_Complete_Unk_Manuf_Pct
FROM
    dbm_final_proj_group1.us_vaccination_data
WHERE
    vaccination_date IN ('2021-10-25' , '2021-09-30',
        '2021-08-31',
        '2021-07-31',
        '2021-06-30',
        '2021-05-31',
        '2021-04-30',
        '2021-03-31',
        '2021-02-28',
        '2021-01-31',
        '2020-12-31') AND Location='PA'
ORDER BY vaccination_date DESC; 

/*NEXT STEP*/
SELECT 
    vaccination_date,
    Administered_Janssen,
    Administered_Pfizer,
    Administered_Moderna,
    Administered_Unk_Manuf,
    Administered_Janssen + Administered_Pfizer + Administered_Moderna + Administered_Unk_Manuf AS Administered_Tot,
    Administered_Janssen / (Administered_Janssen + Administered_Pfizer + Administered_Moderna + Administered_Unk_Manuf) AS Administered_Janssen_Pct,
    Administered_Pfizer / (Administered_Janssen + Administered_Pfizer + Administered_Moderna + Administered_Unk_Manuf) AS Administered_Pfizer_Pct,
    Administered_Moderna / (Administered_Janssen + Administered_Pfizer + Administered_Moderna + Administered_Unk_Manuf) AS Administered_Moderna_Pct,
    Administered_Unk_Manuf / (Administered_Janssen + Administered_Pfizer + Administered_Moderna + Administered_Unk_Manuf) AS Administered_Unk_Manuf_Pct,
    Series_Complete_Janssen,
    Series_Complete_Pfizer,
    Series_Complete_Moderna,
    Series_Complete_Unk_Manuf,
    Series_Complete_Janssen + Series_Complete_Pfizer + Series_Complete_Moderna + Series_Complete_Unk_Manuf AS Series_Complete_Tot,
    Series_Complete_Janssen / (Series_Complete_Janssen + Series_Complete_Pfizer + Series_Complete_Moderna + Series_Complete_Unk_Manuf) AS Series_Complete_Janssen_Pct,
    Series_Complete_Pfizer / (Series_Complete_Janssen + Series_Complete_Pfizer + Series_Complete_Moderna + Series_Complete_Unk_Manuf) AS Series_Complete_Pfizer_Pct,
    Series_Complete_Moderna / (Series_Complete_Janssen + Series_Complete_Pfizer + Series_Complete_Moderna + Series_Complete_Unk_Manuf) AS Series_Complete_Moderna_Pct,
    Series_Complete_Unk_Manuf / (Series_Complete_Janssen + Series_Complete_Pfizer + Series_Complete_Moderna + Series_Complete_Unk_Manuf) AS Series_Complete_Unk_Manuf_Pct
FROM
    dbm_final_proj_group1.us_vaccination_data
WHERE
    vaccination_date IN ('2021-10-25' , '2021-09-30',
        '2021-08-31',
        '2021-07-31',
        '2021-06-30',
        '2021-05-31',
        '2021-04-30',
        '2021-03-31',
        '2021-02-28',
        '2021-01-31',
        '2020-12-31') AND Location='CO'
ORDER BY vaccination_date DESC; 

/*NEXT STEP*/
/*Further filtering by Location attribute 'PA'*/
SELECT 
Location,
    SUM(Administered_Janssen) AS Administered_Janssen_Total,
    SUM(Administered_Pfizer) AS Administered_Pfizer_Total,
    SUM(Administered_Moderna) AS Administered_Moderna_Total,
    SUM(Administered_Unk_Manuf) AS Administered_Unk_Manuf_Total,
    SUM(Series_Complete_Janssen) AS Series_Complete_Janssen_Total,
    SUM(Series_Complete_Pfizer) AS Series_Complete_Pfizer_Total,
    SUM(Series_Complete_Moderna) AS Series_Complete_Moderna_Total,
    SUM(Series_Complete_Unk_Manuf) AS Series_Complete_Unk_Manuf_Total
FROM
    dbm_final_proj_group1.us_vaccination_data
GROUP BY Location;

/*NEXT STEP*/
/*Further filtering by Location attribute 'PA'*/
/*SELECT 
Location,
    Administered_Janssen,
    Administered_Pfizer,
    Administered_Moderna,
    Administered_Unk_Manuf,
    Series_Complete_Janssen,
    Series_Complete_Pfizer,
    Series_Complete_Moderna,
    Series_Complete_Unk_Manuf
FROM
    dbm_final_proj_group1.us_vaccination_data
GROUP BY Location;*/

/*NEXT STEP*/
/*Further filtering by Location attribute 'PA'*/
SELECT 
Location,
    SUM(Administered_Janssen) AS Administered_Janssen_Total,
    SUM(Administered_Pfizer) AS Administered_Pfizer_Total,
    SUM(Administered_Moderna) AS Administered_Moderna_Total,
    SUM(Administered_Unk_Manuf) AS Administered_Unk_Manuf_Total,
    SUM(Series_Complete_Janssen) AS Series_Complete_Janssen_Total,
    SUM(Series_Complete_Pfizer) AS Series_Complete_Pfizer_Total,
    SUM(Series_Complete_Moderna) AS Series_Complete_Moderna_Total,
    SUM(Series_Complete_Unk_Manuf) AS Series_Complete_Unk_Manuf_Total
FROM
    dbm_final_proj_group1.us_vaccination_data
WHERE
    vaccination_date IN ('2021-10-25' , '2021-09-30',
        '2021-08-31',
        '2021-07-31',
        '2021-06-30',
        '2021-05-31',
        '2021-04-30',
        '2021-03-31',
        '2021-02-28',
        '2021-01-31',
        '2020-12-31') 
GROUP BY Location;
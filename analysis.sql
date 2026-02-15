/* =====================================================
   CLINIC PATIENT ANALYTICS PROJECT
   ===================================================== */

/* ==============================
   1. Patient Population by Age
   ============================== */

SELECT 
    CASE 
        WHEN patient_age BETWEEN 0 AND 17 THEN '0-17'
        WHEN patient_age BETWEEN 18 AND 39 THEN '18-39'
        WHEN patient_age BETWEEN 40 AND 64 THEN '40-64'
        ELSE '65+'
    END AS age_band,
    COUNT(DISTINCT patient_id) AS patient_count
FROM clinic_data
GROUP BY 
    CASE 
        WHEN patient_age BETWEEN 0 AND 17 THEN '0-17'
        WHEN patient_age BETWEEN 18 AND 39 THEN '18-39'
        WHEN patient_age BETWEEN 40 AND 64 THEN '40-64'
        ELSE '65+'
    END
ORDER BY age_band;


/* ==============================
   2. Top 10 Diagnoses Overall
   ============================== */

SELECT TOP 10
    icd_code,
    COUNT(*) AS diagnosis_count
FROM clinic_data
GROUP BY icd_code
ORDER BY diagnosis_count DESC;


/* ==============================
   2A. Diagnoses by Age Band
   ============================== */

SELECT 
    icd_code,
    CASE 
        WHEN patient_age BETWEEN 0 AND 17 THEN '0-17'
        WHEN patient_age BETWEEN 18 AND 39 THEN '18-39'
        WHEN patient_age BETWEEN 40 AND 64 THEN '40-64'
        ELSE '65+'
    END AS age_band,
    COUNT(*) AS diagnosis_count
FROM clinic_data
GROUP BY 
    icd_code,
    CASE 
        WHEN patient_age BETWEEN 0 AND 17 THEN '0-17'
        WHEN patient_age BETWEEN 18 AND 39 THEN '18-39'
        WHEN patient_age BETWEEN 40 AND 64 THEN '40-64'
        ELSE '65+'
    END
ORDER BY diagnosis_count DESC;


/* ==============================
   2B. Diagnoses by Sex
   ============================== */

SELECT 
    icd_code,
    patient_sex,
    COUNT(*) AS diagnosis_count
FROM clinic_data
GROUP BY icd_code, patient_sex
ORDER BY diagnosis_count DESC;


/* ==============================
   3. Visit Utilization
   ============================== */

-- Total visits per patient
SELECT 
    patient_id,
    COUNT(*) AS total_visits
FROM clinic_data
GROUP BY patient_id
ORDER BY total_visits DESC;


-- Average visits per patient
SELECT 
    AVG(visit_count * 1.0) AS avg_visits_per_patient
FROM (
    SELECT patient_id, COUNT(*) AS visit_count
    FROM clinic_data
    GROUP BY patient_id
) v;


-- High utilizers (4+ visits)
SELECT 
    patient_id,
    COUNT(*) AS total_visits
FROM clinic_data
GROUP BY patient_id
HAVING COUNT(*) >= 4
ORDER BY total_visits DESC;


/* ==============================
   4. Most Frequent CPT Codes
   ============================== */

SELECT 
    cpt_code,
    COUNT(*) AS procedure_count
FROM clinic_data
GROUP BY cpt_code
ORDER BY procedure_count DESC;

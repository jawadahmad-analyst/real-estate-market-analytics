SELECT * FROM real_estate_data LIMIT 10;

-- Transformation of Raw Data to Analysis Format
SELECT 
    CAST(sale_date AS DATE) AS "Date",
    locality AS "Market Area",
    CAST(NULLIF(estimated_value, '') AS NUMERIC) AS "Estimated Value",
    CAST(NULLIF(sale_price, '') AS NUMERIC) AS "Sale Price",
    property AS "Property Category",
    CAST(NULLIF(num_rooms, '') AS INT) AS "Total Rooms",
    CAST(NULLIF(carpet_area, '') AS NUMERIC) AS "Area (Sqft)"
FROM real_estate_data
LIMIT 10;
SELECT 
    *
FROM 
    {{ ref('fct_reviews')}} AS REVIEWS
JOIN 
    {{ ref('dim_listings_cleansed')}} AS CLEANSED
    USING(LISTING_ID)
WHERE 
    REVIEWS.REVIEW_DATE < CLEANSED.CREATED_AT
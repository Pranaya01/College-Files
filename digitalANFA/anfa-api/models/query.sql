/*news query */
Select n.news_id, cv.category_value, n.news_title, n.news_description, n.news_image 
FROM news n
JOIN category_value cv
USING(cvalue_id);
/* news query with Where Clause */
    Select n.news_id, cv.category_value, n.news_title, n.news_description, n.news_image 
    FROM news n
    JOIN category_value cv
    USING(cvalue_id) 
    WHERE cv.category_value="Competition";


SELECT club_name, club_description, club_founded_date, club_address, club_email, club_affiliation, cv.category_value, home_jersey_color, away_jersey_color, club_sponsor, kit_sponsor, club_logo
FROM CLUB 
JOIN category_value cv
USING(cvalue_id);

/*Club Query */
SELECT club_id, club_name, club_description, club_founded_date, club_address, club_email, club_affiliation, cv.category_value, home_jersey_color, away_jersey_color, club_sponsor, kit_sponsor, club_logo 
FROM Club
JOIN category_value cv 
USING(cvalue_id);

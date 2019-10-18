-- CASE WHEN - the if/else statements of SQL! It's litterally the same as if/else that we've seen in python
-- and excel, but different syntax:
-- CASE
-- WHEN (condition) THEN <output>
-- WHEN (condition) THEN <output>
-- ELSE <output>
-- END as <alias>

-- EXAMPLE:
--  SELECT 
-- 	name,
--   	CASE 
--      WHEN (monthlymaintenance > 100) THEN 'expensive'
--  	ELSE 'cheap'
--  	END AS cost <<-- this whole thing outputs a column ('cost') with output ('expensive','cheap')
-- 						depending on the condition being met in each row
--  FROM ...




-- YOUR TURN!
-- Our marketing analytics team has decided to do a promotion to get more customers to come into our store.
-- They've decided that they want all of the cheapest PG-13 films to now be rented at $0.10, 
-- and all PG-13 films in the NEXT HIGHER rental bracket above one dollar to now by rented at $1.00.
-- Return a list of all PG-13 films with the current and new rental rates - with films in the cheapest
-- rental bracket discounted to $0.10, and films in the rental bracket next above a dollar now being $1**. 

-- **To clarify - if the rental brackets were 0.99, 1.99, 2.99, 3.99, we want the new prices to be
-- 0.10, 1.00, 2.99, 3.99

-- HINT: you can hardcode the rental bracket rates (just typing in the number - eg 1.99) first to make sure 
-- you can get your CASE WHEN statement to work, THEN see if you can put it all together with softcoding 
-- (using a CTE/subquery to return the number - eg. 1.99)


SELECT
	rental_rate
	,CASE rental_rate
	WHEN 0.99 THEN 0.10
	END AS new_rental_rate

FROM
	film

WHERE
	rating = 'PG-13'



-- CHECK OUT THE HINTS FILE IF YOU GET STUCK
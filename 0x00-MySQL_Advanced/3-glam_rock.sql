-- Write a SQL script that lists all bands with Glam rock
-- as their main style, ranked by their longevity

/*
    Column must be in years
    You should use attributes formed and split for computing the lifespan
    Your script can be executed on any database
*/

SELECT band_name, IF(ISNULL(split),
2020 - formed, split - formed) as lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC;

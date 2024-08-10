-- Lists all bands with Glam rock as their main style, ranked by their longevity.
-- The lifespan of a band is the difference between the year they split up and the year they formed.

SELECT band_name, (IFNULL(split, '2022') - formed) AS lifespan
FROM metal_bands
WHERE FIND_IN_SET('Glam rock', IFNULL(style, "")) > 0
ORDER BY lifespan DESC;

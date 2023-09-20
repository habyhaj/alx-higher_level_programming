-- Lists all genres of the shows Dexter in the database hbtn_0d_tvshows.
-- Records are ordered by ascending genre name.
SELECT g. 'name'
  FROM `tv_genres` AS G
       INNER JOIN `tv_show_genres` AS s
       ON g.`id` = s.`genre_id`

       INNER JOIN `tv_shows` AS t
       ON t.`id` = s.`show_id`
       WHERE t.`title` = "Dexter"
 ORDER BY g.`name`;

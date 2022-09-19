select title as title, artist as artist, unit_price between 15 and 18 as price
From items
order by unit_price,artist;


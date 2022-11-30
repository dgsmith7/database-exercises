USE codeup_test_db;
SELECT 'All albums:' as 'Info';
SELECT * FROM albums;
SELECT 'Albums from before 1980:' AS 'info';
SELECT * FROM albums WHERE release_date < 1980;
SELECT 'Albums by Michael Jackson' AS 'Info';
SELECT * FROM albums WHERE aritst = 'Michael Jackson';
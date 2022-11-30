USE codeup_test_db;
SELECT 'Albums released after 1991:' AS 'Info';
SELECT name FROM albums WHERE release_date > 1991;
SELECT 'Disco albums:' AS 'Info';
SELECT name FROM albums WHERE genre = 'Disco';
SELECT 'Pink Floyd albums:' AS 'Info';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

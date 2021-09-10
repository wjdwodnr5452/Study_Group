DROP TABLE IF EXISTS exam_menu CASCADE;
 
CREATE TABLE exam_menu(
    mn_uid int PRIMARY KEY AUTO_INCREMENT,
    mn_name varchar(20) NOT NULL,
    mn_kind varchar(20) CHECK(mn_kind IN ('한식', '중식', '일식')),
    mn_price int DEFAULT 0 CHECK(mn_price >= 0)
);


SELECT * FROM exam_menu ;


SELECT mn_uid uid, mn_name name, mn_kind kind, mn_price price
FROM exam_menu 
ORDER BY mn_uid DESC;


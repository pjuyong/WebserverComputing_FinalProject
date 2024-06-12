CREATE TABLE seats (
    seat_id INT AUTO_INCREMENT PRIMARY KEY,
    is_occupied BOOLEAN DEFAULT FALSE
);



INSERT INTO seats (is_occupied) VALUES (FALSE);

-- 100개의 좌석을 생성하는 예제
DELIMITER $$

CREATE PROCEDURE createSeats(IN numSeats INT)
BEGIN
    DECLARE counter INT DEFAULT 1;
    WHILE counter <= numSeats DO
        INSERT INTO seats (is_occupied) VALUES (FALSE);
        SET counter = counter + 1;
    END WHILE;
END $$

DELIMITER ;

CALL createSeats(100);

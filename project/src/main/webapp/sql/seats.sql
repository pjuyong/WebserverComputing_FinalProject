CREATE PROCEDURE insert_seats() BEGIN     
	DECLARE i INT DEFAULT 1;    
	WHILE i <= 100 DO        
INSERT INTO seats (seat_id, is_occupied) VALUES (i, FALSE);        
SET i = i + 1;    
END WHILE; END//
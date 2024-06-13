CREATE TABLE board (
    num INT NOT NULL AUTO_INCREMENT,
    id VARCHAR(10) NOT NULL,
    name VARCHAR(10) NOT NULL,
    subject VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    regist_day VARCHAR(30),
    hit INT,
    ip VARCHAR(20),
    PRIMARY KEY (num)
) DEFAULT CHARSET=utf8;

SELECT * FROM board;

DESC board;


CREATE TABLE BOARD2 (
    NUM INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(255) NOT NULL,
    SUBJECT VARCHAR(255) NOT NULL,
    CONTENT TEXT NOT NULL,
    CREATED TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO board (num, id, name, subject, content, regist_day, hit, ip)
VALUES (1, 'user1', 'John Doe', '첫 번째 게시글', '첫 번째 게시글 내용입니다.', '2024-06-13', 0, '127.0.0.1');

INSERT INTO board (num, id, name, subject, content, regist_day, hit, ip)
VALUES (2, 'user2', 'Jane Doe', '두 번째 게시글', '두 번째 게시글 내용입니다.', '2024-06-13', 0, '127.0.0.1');


ALTER TABLE board MODIFY id INT AUTO_INCREMENT;
insert into BOOK (id, title, author, price, qty) values (
(select nvl(max(id) + 1, 1) from book), 'OS', 'Wiley', 30700, 50
);

insert into book (id, title, author, price, qty) values (
(select nvl(max(id) + 1, 1) from book), 'Java', 'OReily', 35000, 10
);

insert into book (id, title, author, price, qty) values (
(select nvl(max(id) + 1, 1) from book), 'C++', 'øµ¡¯', 45000, 20
);

insert into book (id, title, author, price, qty) values (
(select nvl(max(id) + 1, 1) from book), 'Oracle', '«—±π', 50000, 30
);

insert into book (id, title, author, price, qty) values (
(select nvl(max(id) + 1, 1) from book), 'HTML5', '±Êπ˛', 20000, 50
);

commit;

SELECT  *
FROM    BOOK;

CREATE SYNONYM BOOK FOR JSP_ADMIN.BOOK;

CREATE SYNONYM MEMO FOR JSP_ADMIN.MEMO;

CREATE SYNONYM MEMBER FOR JSP_ADMIN.MEMBER;

CREATE SYNONYM MEMBER_02 FOR JSP_ADMIN.MEMBER_02;

CREATE SYNONYM EMP2 FOR JSP_ADMIN.EMP2;

CREATE SYNONYM MEMBER_03 FOR JSP_ADMIN.MEMBER_03;

CREATE SYNONYM PACK_ENCRYPTION_DECRYPTION FOR JSP_ADMIN.PACK_ENCRYPTION_DECRYPTION;

INSERT INTO MEMO (IDX, WRITER, MEMO) VALUES (1, 'kim', '∏ﬁ∏');
INSERT INTO MEMO (IDX, WRITER, MEMO) VALUES (2, '±Ë√∂ºˆ', '∏ﬁ∏');
INSERT INTO MEMO (IDX, WRITER, MEMO) VALUES (3, 'park', '∏ﬁ∏');

COMMIT;

SELECT  *
FROM    MEMO;

INSERT INTO MEMBER_02 (USER_ID, PASSWD, NAME) VALUES ('kim', '1234', '±Ë√∂ºˆ');
INSERT INTO MEMBER_02 (USER_ID, PASSWD, NAME) VALUES ('park', '1234', 'π⁄√∂ºˆ');

COMMIT;

SELECT  USER_ID,
        PASSWD,
        NAME,
        TO_CHAR(REG_DATE, 'YYYY-MM-DD') REG_DATE,
        ADDRESS,
        TEL
FROM    MEMBER_02;

SELECT  *
FROM    EMP2;

DELETE FROM EMP2;

COMMIT;

SELECT  *
FROM    MEMBER_03;

DELETE
FROM    MEMBER_03
WHERE   1=1
AND     USER_ID = 'kim'
and     join_date >= to_char(sysdate, 'yyyymmdd');

commit;


INSERT INTO MEMBER_03 (USER_ID, PASSWD, NAME) VALUES ('kim', PACK_ENCRYPTION_DECRYPTION.FUNC_ENCRYPT('1234'), '±Ë∞˙¿Â');

INSERT INTO MEMBER_03 (USER_ID, PASSWD, NAME) VALUES ('park', PACK_ENCRYPTION_DECRYPTION.FUNC_ENCRYPT('1234'), '√÷∫Œ¿Â');
INSERT INTO MEMBER_03 (USER_ID, PASSWD, NAME) VALUES ('hong', PACK_ENCRYPTION_DECRYPTION.FUNC_ENCRYPT('1234'), '»´Ω«¿Â');


SELECT  *
FROM    MEMBER_03
WHERE   1=1
AND     USER_ID = 'kim'
AND     passwd = PACK_ENCRYPTION_DECRYPTION.FUNC_ENCRYPT('123456');

SELECT  length(passwd) as len
FROM    MEMBER_03

select  *
from    member_03;

commit;

select user_id, name from member_03 where user_id = 'kim' and passwd = PACK_ENCRYPTION_DECRYPTION.FUNC_ENCRYPT('123456');

select  *
from    member_02;
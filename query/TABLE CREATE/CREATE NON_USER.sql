DROP TABLE C##ORCL.NON_USER CASCADE CONSTRAINTS;

CREATE TABLE C##ORCL.NON_USER
(
  NON_PK       NUMBER(10)                     NOT NULL,
  USER_ID      VARCHAR2(45 BYTE),
  USER_PASS    VARCHAR2(45 BYTE),
  USER_PHONE   VARCHAR2(45 BYTE),
  USER_NM      VARCHAR2(45 BYTE)
)
TABLESPACE USERS
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE;

COMMENT ON TABLE C##ORCL.NON_USER IS '비회원';

COMMENT ON COLUMN C##ORCL.NON_USER.NON_PK IS '비회원 키';

COMMENT ON COLUMN C##ORCL.NON_USER.USER_ID IS '비회원 아이디';

COMMENT ON COLUMN C##ORCL.NON_USER.USER_PASS IS '비회원 비밀번호';

COMMENT ON COLUMN C##ORCL.NON_USER.USER_PHONE IS '비회원 전화번호';

COMMENT ON COLUMN C##ORCL.NON_USER.USER_NM IS '비회원명';


ALTER TABLE C##ORCL.NON_USER ADD (
  PRIMARY KEY
  (NON_PK)
  USING INDEX
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                PCTINCREASE      0
                BUFFER_POOL      DEFAULT
               )
  ENABLE VALIDATE);




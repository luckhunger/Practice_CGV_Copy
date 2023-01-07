DROP TABLE C##ORCL.BOOKMARK CASCADE CONSTRAINTS;

CREATE TABLE C##ORCL.BOOKMARK
(
  BM_PK    NUMBER(10)                           NOT NULL,
  USER_PK  NUMBER(10)                           NOT NULL,
  MV_PK    NUMBER(10)                           NOT NULL,
  MV_NM    VARCHAR2(45 BYTE)                    NOT NULL
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

COMMENT ON TABLE C##ORCL.BOOKMARK IS '북마크';

COMMENT ON COLUMN C##ORCL.BOOKMARK.BM_PK IS '북마크 키';

COMMENT ON COLUMN C##ORCL.BOOKMARK.USER_PK IS '사용자 키';

COMMENT ON COLUMN C##ORCL.BOOKMARK.MV_PK IS '영화 키';

COMMENT ON COLUMN C##ORCL.BOOKMARK.MV_NM IS '영화 이름';


ALTER TABLE C##ORCL.BOOKMARK ADD (
  PRIMARY KEY
  (BM_PK)
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


--  There is no statement for index C##ORCL.SYS_C007449.
--  The object is created when the parent object is created.

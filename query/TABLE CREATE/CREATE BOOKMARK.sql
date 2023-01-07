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

COMMENT ON TABLE C##ORCL.BOOKMARK IS '�ϸ�ũ';

COMMENT ON COLUMN C##ORCL.BOOKMARK.BM_PK IS '�ϸ�ũ Ű';

COMMENT ON COLUMN C##ORCL.BOOKMARK.USER_PK IS '����� Ű';

COMMENT ON COLUMN C##ORCL.BOOKMARK.MV_PK IS '��ȭ Ű';

COMMENT ON COLUMN C##ORCL.BOOKMARK.MV_NM IS '��ȭ �̸�';


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

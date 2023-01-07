DROP TABLE C##ORCL.COMMON CASCADE CONSTRAINTS;

CREATE TABLE C##ORCL.COMMON
(
  GR_PK  NUMBER(10)                             NOT NULL,
  GR_NM  VARCHAR2(45 BYTE)                      NOT NULL,
  GR_CD  NUMBER(10),
  GR_DT  DATE
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

COMMENT ON TABLE C##ORCL.COMMON IS '�����ڵ�';

COMMENT ON COLUMN C##ORCL.COMMON.GR_PK IS '�����ڵ� Ű';

COMMENT ON COLUMN C##ORCL.COMMON.GR_NM IS '�����ڵ� ��';

COMMENT ON COLUMN C##ORCL.COMMON.GR_CD IS '�����ڵ� ��';

COMMENT ON COLUMN C##ORCL.COMMON.GR_DT IS '�����ڵ� ��������';


ALTER TABLE C##ORCL.COMMON ADD (
  PRIMARY KEY
  (GR_PK)
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


--  There is no statement for index C##ORCL.SYS_C007458.
--  The object is created when the parent object is created.

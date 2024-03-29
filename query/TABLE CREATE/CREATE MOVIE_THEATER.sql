
  CREATE TABLE "C##MYUSER"."MOVIE_THEATER" 
   (	"MVT_PK" NUMBER(10,0) NOT NULL ENABLE, 
	"ADDRESS" VARCHAR2(45 BYTE) NOT NULL ENABLE, 
	"FROM_DT" VARCHAR2(45 BYTE), 
	"TO_DT" VARCHAR2(45 BYTE), 
	"SCREEN_1" VARCHAR2(45 BYTE), 
	"SCREEN_2" VARCHAR2(45 BYTE), 
	"SCREEN_3" VARCHAR2(45 BYTE), 
	"SEAT_1" VARCHAR2(45 BYTE), 
	"SEAT_2" VARCHAR2(45 BYTE), 
	"SEAT_3" VARCHAR2(45 BYTE), 
	"TYPE_CD" VARCHAR2(45 BYTE), 
	"USE_YN" VARCHAR2(45 BYTE) DEFAULT 'N' NOT NULL ENABLE, 
	 PRIMARY KEY ("MVT_PK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE( PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE( PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "C##MYUSER"."MOVIE_THEATER"."MVT_PK" IS '상영관 키';
   COMMENT ON COLUMN "C##MYUSER"."MOVIE_THEATER"."ADDRESS" IS '상영관 주소';
   COMMENT ON COLUMN "C##MYUSER"."MOVIE_THEATER"."FROM_DT" IS '시작시간';
   COMMENT ON COLUMN "C##MYUSER"."MOVIE_THEATER"."TO_DT" IS '종료시간';
   COMMENT ON COLUMN "C##MYUSER"."MOVIE_THEATER"."SCREEN_1" IS '1번 상영관';
   COMMENT ON COLUMN "C##MYUSER"."MOVIE_THEATER"."SCREEN_2" IS '2번 상영관';
   COMMENT ON COLUMN "C##MYUSER"."MOVIE_THEATER"."SCREEN_3" IS '3번 상영관';
   COMMENT ON COLUMN "C##MYUSER"."MOVIE_THEATER"."SEAT_1" IS '1번 상영관 자리수';
   COMMENT ON COLUMN "C##MYUSER"."MOVIE_THEATER"."SEAT_2" IS '2번 상영관 자리수';
   COMMENT ON COLUMN "C##MYUSER"."MOVIE_THEATER"."SEAT_3" IS '3번 상영관 자리수';
   COMMENT ON COLUMN "C##MYUSER"."MOVIE_THEATER"."TYPE_CD" IS '영화관 스크린 종류(3D/4D/IMAX)';
   COMMENT ON COLUMN "C##MYUSER"."MOVIE_THEATER"."USE_YN" IS '사용여부';
   COMMENT ON TABLE "C##MYUSER"."MOVIE_THEATER"  IS '영화 상영관';


-- Generated by Oracle SQL Developer Data Modeler 4.1.5.907
--   at:        2019-12-29 08:00:38 NPT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




CREATE TABLE Course
  (
    Course_no                INTEGER NOT NULL ,
    course_name              VARCHAR2 (50) ,
    Instructor_Instructor_no INTEGER NOT NULL
  ) ;
ALTER TABLE Course ADD CONSTRAINT Course_PK PRIMARY KEY ( Course_no ) ;


CREATE TABLE Instructor
  (
    Instructor_no      INTEGER NOT NULL ,
    Instructor_name    VARCHAR2 (50) NOT NULL ,
    Instructor_faculty VARCHAR2 (50) NOT NULL
  ) ;
ALTER TABLE Instructor ADD CONSTRAINT Instructor_PK PRIMARY KEY ( Instructor_no ) ;


CREATE TABLE Module_code
  (
    module_code      INTEGER NOT NULL ,
    module_name      VARCHAR2 (50) ,
    Course_Course_no INTEGER NOT NULL
  ) ;
ALTER TABLE Module_code ADD CONSTRAINT Module_code_PK PRIMARY KEY ( module_code ) ;


CREATE TABLE Seat
  (
    Seat_id       INTEGER NOT NULL ,
    Seat_position VARCHAR2 (50) NOT NULL
  ) ;
ALTER TABLE Seat ADD CONSTRAINT Seat_PK PRIMARY KEY ( Seat_id ) ;


CREATE TABLE Student
  (
    Student_id       INTEGER NOT NULL ,
    Student_name     VARCHAR2 (50) ,
    Student_address  VARCHAR2 (50) ,
    Course_Course_no INTEGER NOT NULL
  ) ;
ALTER TABLE Student ADD CONSTRAINT Student_PK PRIMARY KEY ( Student_id ) ;


ALTER TABLE Course ADD CONSTRAINT Course_Instructor_FK FOREIGN KEY ( Instructor_Instructor_no ) REFERENCES Instructor ( Instructor_no ) ;

ALTER TABLE Student ADD CONSTRAINT Student_Course_FK FOREIGN KEY ( Course_Course_no ) REFERENCES Course ( Course_no ) ;

ALTER TABLE Student ADD CONSTRAINT Student_Seat_FK FOREIGN KEY ( Student_id ) REFERENCES Seat ( Seat_id ) ;

CREATE OR REPLACE TRIGGER FKNTM_Student BEFORE
  UPDATE OF Student_id ON Student BEGIN raise_application_error(-20225,'Non Transferable FK constraint  on table Student is violated');
END;
/


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             0
-- ALTER TABLE                              8
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           1
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
 
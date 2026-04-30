!6311124
PROGRAM EXAM_RESULTS
 IMPLICIT NONE
  INTEGER :: i
  REAL, DIMENSION(10)::R     !R=RESULTS OF STUDENTS
  CHARACTER(LEN=15)::A,B,C,F,DISTINCTION,CREDIT, PASS, FAIL
 
 PRINT*,'PLEASE ENTER 10 RESULTS'
  
   DO i=1,10
    READ*, R(i)
   END DO
   
 DO i=1,10
   PRINT*,'____________________________________________________'
   
   IF ((R(i)>=80.00).AND.(R(i)<=100.00)) THEN
    PRINT*,'A',R(i), '  ','DISTINCTION'
  
   ELSE IF ((R(i)>=60.00).AND.(R(i)<=79.00)) THEN
    PRINT*,'B',R(i),'  ','CREDIT'
   
   ELSE IF ((R(i)>=40.00).AND.(R(i)<=59.00)) THEN
    PRINT*,'C',R(i),'  ','PASS'
   
   ELSE IF ((R(i)>=0.00).AND.(R(i)<=39.99)) THEN
    PRINT*,'F',R(i),'  ','FAIL'
   
   ELSE 
    PRINT*,'ERROR:  INVALID SCORE' 
   END IF
   
  END DO   
PRINT*,'_______________________________________________________'
END PROGRAM EXAM_RESULTS

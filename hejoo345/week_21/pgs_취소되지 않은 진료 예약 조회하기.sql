SELECT A.APNT_NO, P.PT_NAME, P.PT_NO, A.MCDP_CD, D.DR_NAME, A.APNT_YMD
FROM PATIENT P, DOCTOR D, APPOINTMENT A
WHERE P.PT_NO = A.PT_NO
  AND D.DR_ID = A.MDDR_ID
  AND DATE_FORMAT(A.APNT_YMD, '%Y%m%d') = '20220413'
  AND A.APNT_CNCL_YN = 'N'
  AND A.MCDP_CD = 'CS'
ORDER BY A.APNT_YMD
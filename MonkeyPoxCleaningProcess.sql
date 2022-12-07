--select * from DATA$
-------------------------------------------------------------------------------------------------------------------------------------
/*CHECK WHETHER THERE ARE NULL VALUES IN THE DATASET
select * from DATA$
where 
     Patient_ID is null or
	 MonkeyPox is null or 
	 [Systemic Illness] is null or 
	 [Rectal Pain] is null or
	 [Sore Throat] is null or
	 [Penile Oedema]  is null or
	 [Oral Lesions] is null or
	 [Solitary Lesion] is null or
	 [Swollen Tonsils] is null or
	 [HIV Infection] is null or
	 [Sexually Transmitted Infection] is null
*/
/*
--------------------------------------------------------------------------------------------------------------------------------------
---REPLACE 1 AND 0 WITH POSITIVE AND NEGATIVE
--STEP1: convert all columns with bit from bit to varchar
 alter table DATA$ 
 alter column [Rectal Pain] nvarchar(50);
 alter table DATA$ 
 alter column [Sore Throat] nvarchar(50);
  alter table DATA$ 
 alter column [Penile Oedema] nvarchar(50);
  alter table DATA$ 
 alter column [Oral Lesions] nvarchar(50);
  alter table DATA$ 
 alter column [Solitary Lesion] nvarchar(50);
  alter table DATA$ 
 alter column [Swollen Tonsils] nvarchar(50);
  alter table DATA$ 
 alter column [HIV Infection] nvarchar(50);
  alter table DATA$ 
 alter column [Sexually Transmitted Infection] nvarchar(50);

 --- Change 0 and 1 to positive and negative
 update DATA$ 
 set
-- select
 [Rectal Pain]= 
 iif([Rectal Pain] = '0','negative','positive') ,
 [Sore Throat] = 
 iif([Sore Throat]= '0','negative','positive') ,
[Penile Oedema] =
iif([Penile Oedema]= '0','negative','positive') ,
  [Oral Lesions] =
iif([Oral Lesions]= '0','negative','positive') ,
 [Solitary Lesion] = 
 iif([Solitary Lesion]= '0','negative','positive'),
[Swollen Tonsils] = 
iif([Swollen Tonsils]= '0','negative','positive'),
 [HIV Infection]  = 
 iif([HIV Infection]= '0','negative','positive'),
  [Sexually Transmitted Infection]  = 
 iif( [Sexually Transmitted Infection]= '0','negative','positive')
-- from DATA$  		
*/
CREATE DATABASE banking ;
USE banking;
CREATE TABLE Financial_Dataset(
Customer_ID INT PRIMARY KEY,
Account_Type TEXT,
Account_ID INT NOT NULL,
Branch TEXT,
City TEXT,
Transaction_ID INT NOT NULL,
Transaction_Date DATE,
Transaction_Type TEXT,
Amount INT NOT NULL,
Balance INT,
Loan_Status TEXT,
Credit_Score INT,
Account_Status VARCHAR(100)
); 
INSERT INTO financial_dataset
(Customer_id, account_type, Account_ID, Branch, City,
Transaction_ID, Transaction_Date, Transaction_Type,
Amount, Balance, Loan_Status, Credit_Score, Account_Status)
VALUES
(100,'Savings','101','Connaught Place','Delhi','001','2024-01-01','Credit',5000,15000,'No',750,'Active'),
(250,'Current','102','Noida Sec-18','Noida','002','2024-01-02','Debit',2000,13000,'Yes',680,'Active'),
(385,'Savings','103','Andheri','Mumbai','003','2024-01-03','Credit',8000,21000,'No',720,'Active'),
(154,'Savings','104','Salt Lake','Kolkata','004','2024-01-04','Debit',3000,18000,'No',700,'Inactive'),
(425,'Current','105','MG Road','Bengaluru','005','2024-01-05','Credit',12000,35000,'Yes',660,'Active'),
(456,'Savings','106','Banjara Hills','Hyderabad','3606','2024-01-06','Debit',2500,16000,'No',740,'Active'),
(867,'Savings','107','Civil Lines','Jaipur','007','2024-01-07','Credit',4000,19000,'No',710,'Active'),
(788,'Current','108','Sector 17','Chandigarh','008','2024-01-08','Debit',3500,22000,'Yes',690,'Active'),
(859,'Savings','109','Alkapuri','Vadodara','009','2024-01-09','Credit',6000,24000,'No',730,'Active'),
(180,'Savings','110','Hazratganj','Lucknow','2510','2024-01-10','Debit',1500,14000,'No',760,'Active'),
(151,'Current','111','Indiranagar','Bengaluru','011','2024-01-11','Credit',9000,30000,'Yes',650,'Active'),
(132,'Savings','112','Koregaon Park','Pune','012','2024-01-12','Debit',2800,17000,'No',720,'Inactive'),
(133,'Savings','113','Anna Nagar','Chennai','013','2024-01-13','Credit',7000,26000,'No',740,'Active'),
(134,'Current','114','T Nagar','Chennai','014','2024-01-14','Debit',4200,21000,'Yes',680,'Active'),
(135,'Savings','115','Rajouri Garden','Delhi','015','2024-01-15','Credit',5200,18500,'No',750,'Active'),
(176,'Savings','116','Borivali','Mumbai','016','2024-01-16','Debit',3300,19500,'No',710,'Active'),
(167,'Current','117','DLF Phase 3','Gurgaon','2517','2024-01-17','Credit',11000,40000,'Yes',640,'Active'),
(128,'Savings','118','Sector 62','Noida','018','2024-01-18','Debit',2100,16500,'No',735,'Active'),
(139,'Savings','219','Vashi','Navi Mumbai','019','2024-01-19','Credit',6500,23000,'No',720,'Active'),
(220,'Current','120','Park Street','Kolkata','020','2024-01-20','Debit',3800,25000,'Yes',670,'Inactive'),
(221,'Savings','121','Ashok Nagar','Ranchi','021','2024-01-21','Credit',4800,17500,'No',760,'Active'),
(222,'Current','122','Fraser Road','Patna','022','2024-01-22','Debit',2900,16000,'Yes',690,'Active'),
(233,'Savings','123','MP Nagar','Bhopal','023','2024-01-23','Credit',5400,22000,'No',730,'Active'),
(241,'Savings','124','Lalbagh','Indore','024','2024-01-24','Debit',2600,18500,'No',710,'Active'),
(225,'Current','125','MI Road','Jaipur','5225','2024-01-25','Credit',10000,36000,'Yes',650,'Active'),
(261,'Savings','126','Sector 14','Rohtak','026','2024-01-26','Debit',1700,15000,'No',740,'Active'),
(272,'Savings','127','Gomti Nagar','Lucknow','027','2024-01-27','Credit',6200,24500,'No',720,'Active'),
(282,'Current','528','Panaji Market','Goa','028','2024-01-28','Debit',3900,27000,'Yes',680,'Active'),
(295,'Savings','129','RS Puram','Coimbatore','65529','2024-01-29','Credit',7100,26000,'No',750,'Active'),
(3056,'Savings','130','Kakkanad','Kochi','030','2024-01-30','Debit',2200,17500,'No',730,'Inactive'),
(317,'Current','131','MG Road','Trivandrum','5431','2024-01-31','Credit',8500,32000,'Yes',660,'Active'),
(322,'Savings','132','Civil Lines','Prayagraj','032','2024-02-01','Debit',1800,14500,'No',760,'Active'),
(332,'Savings','133','Station Road','Ajmer','033','2024-02-02','Credit',4600,20000,'No',720,'Active'),
(345,'Current','134','Clock Tower','Dehradun','034','2024-02-03','Debit',3100,21500,'Yes',690,'Active'),
(352,'Savings','135','Sector 15','Faridabad','8935','2024-02-04','Credit',5800,24000,'No',740,'Active'),
(362,'Savings','136','BTM Layout','Bengaluru','036','2024-02-05','Debit',2600,19000,'No',710,'Active'),
(376,'Current','137','Whitefield','Bengaluru','037','2024-02-06','Credit',12500,42000,'Yes',640,'Active'),
(382,'Savings','138','Khar','Mumbai','038','2024-02-07','Debit',3500,21000,'No',725,'Active'),
(390,'Savings','419','Powai','Mumbai','039','2024-02-08','Credit',6900,25500,'No',750,'Active'),
(408,'Current','140','Dadar','Mumbai','040','2024-02-09','Debit',4000,28000,'Yes',670,'Inactive'),
(412,'Savings','141','Sector 22','Chandigarh','041','2024-02-10','Credit',5200,22500,'No',735,'Active'),
(422,'Current','142','Sector 50','Noida','042','2024-02-11','Debit',2900,19500,'Yes',690,'Active'),
(434,'Savings','143','Patel Nagar','Delhi','043','2024-02-12','Credit',6100,24000,'No',750,'Active'),
(442,'Savings','144','Karol Bagh','Delhi','044','2024-02-13','Debit',2100,17000,'No',730,'Active'),
(455,'Current','145','South Ex','Delhi','55245','2024-02-14','Credit',14000,48000,'Yes',630,'Active'),
(466,'Savings','146','Rajpur Road','Dehradun','046','2024-02-15','Debit',2600,18500,'No',740,'Active'),
(487,'Savings','147','Mall Road','Shimla','047','2024-02-16','Credit',4500,21000,'No',720,'Active'),
(458,'Current','148','Model Town','Ludhiana','048','2024-02-17','Debit',3300,23000,'Yes',680,'Active'),
(409,'Savings','149','GT Road','Amritsar','049','2024-02-18','Credit',5700,24500,'No',750,'Active'),
(520,'Savings','150','Law Garden','Ahmedabad','050','2024-02-19','Debit',2900,20000,'No',730,'Active'),
(1001,'Savings','54592','Rural Branch','Chennai', '126225','2024-05-20','Credit',11548.93,368499.14,'Yes',696,'Active'),
(1002,'Current','38657','Main Branch','Chennai','343962','2024-09-15','Credit',28281.63,358293.79,'No',709,'Active'),
(1003,'Current','30926','Main Branch','Delhi','832052','2024-08-04','Debit',14254.63,108441.57,'No',740,'Active'),
(1004,'Current','55082','Main Branch','Hyderabad','733052','2024-05-15','Credit', 36621.72,268577.82,'No',848,'Dormant'),
(1005,'Savings','57400','Main Branch','Delhi', '705397','2024-04-08','Credit', 2768.31,114721.24,'No',498,'Inactive'),
(1006,'Savings','59320','Rural Branch','Mumbai','974628','2024-07-05','Credit',18823.96,165544.01,'Yes',486,'Active'),
(1007,'Savings','59735','Main Branch','Delhi', '383060','2024-11-23','Debit',34388.41,421583.11,'Yes',747,'Inactive'),
(1008,'Current','18675','Main Branch','Bangalore', '321231','2024-10-17','Debit', 11025.01,250116.40,'Yes',802,'Active'),
(1009,'Savings','83579','Rural Branch','Chennai','665158','2024-05-14','Debit',44942.23,200300.85,'Yes',462,'Active'),
(1010,'Current','24371','City Branch','Hyderabad','260265','2024-11-17','Credit', 39707.93,211657.82,'No',380,'Dormant');

UPDATE financial_dataset SET CS_Category = CASE
        WHEN Credit_Score > 700 THEN 'Excellent'
        WHEN Credit_Score < 500 THEN 'Poor'
        ELSE 'Fair'
    END;

SELECT COUNT(DISTINCT Customer_id) AS Total_Customers FROM financial_dataset;
SELECT SUM(Amount) AS Total_Transaction_Amount FROM financial_dataset;
SELECT SUM(Balance) AS Total_Balance FROM financial_dataset;
SELECT COUNT(DISTINCT Customer_id) AS Active_Accounts FROM financial_dataset
WHERE Account_Status = 'Active';

SELECT Transaction_Type, SUM(Amount) AS Total_Amount FROM financial_dataset
GROUP BY Transaction_Type;

SELECT City, COUNT(DISTINCT Customer_id) AS Customer_Count FROM financial_dataset
GROUP BY City
ORDER BY Customer_Count DESC;

SELECT CS_Category, COUNT(DISTINCT Customer_id) AS Customer_Count FROM financial_dataset
GROUP BY CS_Category;
SELECT MONTH(Transaction_Date) AS Month_No, SUM(Amount) AS Total_Amount FROM financial_dataset
GROUP BY MONTH(Transaction_Date)
ORDER BY Month_No;
SELECT * FROM financial_dataset LIMIT 20;

SELECT * FROM financial_dataset;

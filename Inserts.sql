   -- Script name: inserts.sql
   -- Author:      Nomar Olivas
   -- Purpose:     To insert sample data to test the integrity of my ATMManagementDB System
   
   -- the database used to insert the data into:
   USE ATMManagementDB; 
-- -----------------------------------------------------
-- Data for table `ATMManagementDB`.`bank`
-- -----------------------------------------------------
START TRANSACTION;
USE `ATMManagementDB`;
INSERT INTO `ATMManagementDB`.`bank` (`bank_id`, `bank_name`, `currency_id`, `security_measures`) VALUES (0, 'Chase Bank', 1, 'High');
INSERT INTO `ATMManagementDB`.`bank` (`bank_id`, `bank_name`, `currency_id`, `security_measures`) VALUES (0, 'Bank of America', 1, 'Very High');
INSERT INTO `ATMManagementDB`.`bank` (`bank_id`, `bank_name`, `currency_id`, `security_measures`) VALUES (0, 'Wells Fargo', 1, 'Medium');
INSERT INTO `ATMManagementDB`.`bank` (`bank_id`, `bank_name`, `currency_id`, `security_measures`) VALUES (0, 'Schools First Credit', 1, 'Medium');
INSERT INTO `ATMManagementDB`.`bank` (`bank_id`, `bank_name`, `currency_id`, `security_measures`) VALUES (0, 'California Bank', 1, 'High');

COMMIT;


-- -----------------------------------------------------
-- Data for table `ATMManagementDB`.`bank_account`
-- -----------------------------------------------------
START TRANSACTION;
USE `ATMManagementDB`;
INSERT INTO `ATMManagementDB`.`bank_account` (`bank_account_id`, `bank_id`, `account_owner_id`, `debit_card_id`, `credit_card_id`, `loan_id`, `investments_id`) VALUES (0, 1, 1, 1, 1, 1, 1);
INSERT INTO `ATMManagementDB`.`bank_account` (`bank_account_id`, `bank_id`, `account_owner_id`, `debit_card_id`, `credit_card_id`, `loan_id`, `investments_id`) VALUES (0, 2, 2, 2, 2, 2, 2);
INSERT INTO `ATMManagementDB`.`bank_account` (`bank_account_id`, `bank_id`, `account_owner_id`, `debit_card_id`, `credit_card_id`, `loan_id`, `investments_id`) VALUES (0, 3, 3, 3, NULL, NULL, NULL);
INSERT INTO `ATMManagementDB`.`bank_account` (`bank_account_id`, `bank_id`, `account_owner_id`, `debit_card_id`, `credit_card_id`, `loan_id`, `investments_id`) VALUES (0, 1, 4, 4, 3, 3, 3);
INSERT INTO `ATMManagementDB`.`bank_account` (`bank_account_id`, `bank_id`, `account_owner_id`, `debit_card_id`, `credit_card_id`, `loan_id`, `investments_id`) VALUES (0, 4, 5, 5, 4, 4, 4);
INSERT INTO `ATMManagementDB`.`bank_account` (`bank_account_id`, `bank_id`, `account_owner_id`, `debit_card_id`, `credit_card_id`, `loan_id`, `investments_id`) VALUES (0, 5, 6, 6, 5, 5, 5);
INSERT INTO `ATMManagementDB`.`bank_account` (`bank_account_id`, `bank_id`, `account_owner_id`, `debit_card_id`, `credit_card_id`, `loan_id`, `investments_id`) VALUES (0, 5, 7, 7, 6, 6, 6);
INSERT INTO `ATMManagementDB`.`bank_account` (`bank_account_id`, `bank_id`, `account_owner_id`, `debit_card_id`, `credit_card_id`, `loan_id`, `investments_id`) VALUES (0, 3, 8, 8, 7, 7, 7);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ATMManagementDB`.`account_owner_id`
-- -----------------------------------------------------
START TRANSACTION;
USE `ATMManagementDB`;
INSERT INTO `ATMManagementDB`.`account_owner_id` (`owner_name`, `SSN`, `date_of_birth`, `created_date`, `bank_account_id`, `investment_id`) VALUES ('Jonah Hill', 1234567, '1995-04-18', '1985-02-15', 1, 0);
INSERT INTO `ATMManagementDB`.`account_owner_id` (`owner_name`, `SSN`, `date_of_birth`, `created_date`, `bank_account_id`, `investment_id`) VALUES ('Robert Big', 2237344, '1987-04-14', '1975-08-15', 2, NULL);
INSERT INTO `ATMManagementDB`.`account_owner_id` (`owner_name`, `SSN`, `date_of_birth`, `created_date`, `bank_account_id`, `investment_id`) VALUES ('John Wick', 5432101, '2000-06-02', '1988-02-15', 3, 1);
INSERT INTO `ATMManagementDB`.`account_owner_id` (`owner_name`, `SSN`, `date_of_birth`, `created_date`, `bank_account_id`, `investment_id`) VALUES ('Cameron Boyce', 4443322, '1993-10-20', '1983-09-15', 4, 2);
INSERT INTO `ATMManagementDB`.`account_owner_id` (`owner_name`, `SSN`, `date_of_birth`, `created_date`, `bank_account_id`, `investment_id`) VALUES ('Josh Salas', 6673488, '1975-05-03', '1962-05-14 ', 5, 3);
INSERT INTO `ATMManagementDB`.`account_owner_id` (`owner_name`, `SSN`, `date_of_birth`, `created_date`, `bank_account_id`, `investment_id`) VALUES ('Omar Villar', 8376290, '1980-08-30', '1972-09-08 ', 6, NULL);
INSERT INTO `ATMManagementDB`.`account_owner_id` (`owner_name`, `SSN`, `date_of_birth`, `created_date`, `bank_account_id`, `investment_id`) VALUES ('Alex Jose', 8956734, '1965-03-23', '1955-12-28 ', 7, 4);
INSERT INTO `ATMManagementDB`.`account_owner_id` (`owner_name`, `SSN`, `date_of_birth`, `created_date`, `bank_account_id`, `investment_id`) VALUES ('Mary Hill', 3581129, '1995-09-20', '1978-03-13 ', 8, 5);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ATMManagementDB`.`checking_account`
-- -----------------------------------------------------
START TRANSACTION;
USE `ATMManagementDB`;
INSERT INTO `ATMManagementDB`.`checking_account` (`checking_account_id`, `account_owner_id`, `bank_account_id`, `routing_number`, `balance`, `debit_card_id`, `withdrawls_id`, `deposits_id`) VALUES (0, 1, 1, 123456789, 100568.45, 1, 1, 1);
INSERT INTO `ATMManagementDB`.`checking_account` (`checking_account_id`, `account_owner_id`, `bank_account_id`, `routing_number`, `balance`, `debit_card_id`, `withdrawls_id`, `deposits_id`) VALUES (0, 2, 2, 437619267, 510.63, 2, 2, 2);
INSERT INTO `ATMManagementDB`.`checking_account` (`checking_account_id`, `account_owner_id`, `bank_account_id`, `routing_number`, `balance`, `debit_card_id`, `withdrawls_id`, `deposits_id`) VALUES (0, 3, 3, 983621764, 250.20, 3, 3, 3);
INSERT INTO `ATMManagementDB`.`checking_account` (`checking_account_id`, `account_owner_id`, `bank_account_id`, `routing_number`, `balance`, `debit_card_id`, `withdrawls_id`, `deposits_id`) VALUES (0, 4, 4, 278954921, 53483.62, 4, 4, 4);
INSERT INTO `ATMManagementDB`.`checking_account` (`checking_account_id`, `account_owner_id`, `bank_account_id`, `routing_number`, `balance`, `debit_card_id`, `withdrawls_id`, `deposits_id`) VALUES (0, 5, 5, 567923579, 893.26, 5, 5, 5);
INSERT INTO `ATMManagementDB`.`checking_account` (`checking_account_id`, `account_owner_id`, `bank_account_id`, `routing_number`, `balance`, `debit_card_id`, `withdrawls_id`, `deposits_id`) VALUES (0, 6, 6, 126840974, 125.32, 6, 6, 6);
INSERT INTO `ATMManagementDB`.`checking_account` (`checking_account_id`, `account_owner_id`, `bank_account_id`, `routing_number`, `balance`, `debit_card_id`, `withdrawls_id`, `deposits_id`) VALUES (0, 7, 7, 257390215, 9321.46, 7, 7, 7);
INSERT INTO `ATMManagementDB`.`checking_account` (`checking_account_id`, `account_owner_id`, `bank_account_id`, `routing_number`, `balance`, `debit_card_id`, `withdrawls_id`, `deposits_id`) VALUES (0, 8, 8, 219530641, 5256.33, 8, 8, 8);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ATMManagementDB`.`savings_account`
-- -----------------------------------------------------
START TRANSACTION;
USE `ATMManagementDB`;
INSERT INTO `ATMManagementDB`.`savings_account` (`savings_account_id`, `account_owner_id`, `routing_number`, `balance`, `withdrawal_id`, `deposits_id`) VALUES (0, 1, 324564317, 200000.00, 1, 1);
INSERT INTO `ATMManagementDB`.`savings_account` (`savings_account_id`, `account_owner_id`, `routing_number`, `balance`, `withdrawal_id`, `deposits_id`) VALUES (0, 2, 232145632, 5000.00, 2, 2);
INSERT INTO `ATMManagementDB`.`savings_account` (`savings_account_id`, `account_owner_id`, `routing_number`, `balance`, `withdrawal_id`, `deposits_id`) VALUES (0, 4, 125675326, 6000.00, 4, 4);
INSERT INTO `ATMManagementDB`.`savings_account` (`savings_account_id`, `account_owner_id`, `routing_number`, `balance`, `withdrawal_id`, `deposits_id`) VALUES (0, 5, 234532145, 200.00, 5, 5);
INSERT INTO `ATMManagementDB`.`savings_account` (`savings_account_id`, `account_owner_id`, `routing_number`, `balance`, `withdrawal_id`, `deposits_id`) VALUES (0, 6, 577432245, 3900.00, 6, 6);
INSERT INTO `ATMManagementDB`.`savings_account` (`savings_account_id`, `account_owner_id`, `routing_number`, `balance`, `withdrawal_id`, `deposits_id`) VALUES (0, 7, 245643245, 3222.00, 7, 7);
INSERT INTO `ATMManagementDB`.`savings_account` (`savings_account_id`, `account_owner_id`, `routing_number`, `balance`, `withdrawal_id`, `deposits_id`) VALUES (0, 8, 234335663, 50000.00, 8, 8);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ATMManagementDB`.`crypto_wallet_account`
-- -----------------------------------------------------
START TRANSACTION;
USE `ATMManagementDB`;
INSERT INTO `ATMManagementDB`.`crypto_wallet_account` (`crypto_wallet_account_id`, `account_owner_id`, `bank_account_id`, `routing_number`, `balance`, `date_created`) VALUES (0, 1, 1, 456298610, 10000.00, '2009-08-26');
INSERT INTO `ATMManagementDB`.`crypto_wallet_account` (`crypto_wallet_account_id`, `account_owner_id`, `bank_account_id`, `routing_number`, `balance`, `date_created`) VALUES (0, 2, 2, 123456789, 15000.33, '2008-06-18');
INSERT INTO `ATMManagementDB`.`crypto_wallet_account` (`crypto_wallet_account_id`, `account_owner_id`, `bank_account_id`, `routing_number`, `balance`, `date_created`) VALUES (0, 4, 4, 362986341, 400.20, '2014-10-09');
INSERT INTO `ATMManagementDB`.`crypto_wallet_account` (`crypto_wallet_account_id`, `account_owner_id`, `bank_account_id`, `routing_number`, `balance`, `date_created`) VALUES (0, 5, 5, 483261840, 850.32, '2010-02-22');
INSERT INTO `ATMManagementDB`.`crypto_wallet_account` (`crypto_wallet_account_id`, `account_owner_id`, `bank_account_id`, `routing_number`, `balance`, `date_created`) VALUES (0, 6, 6, 745309821, 150.64, '2020-03-15');

COMMIT;


-- -----------------------------------------------------
-- Data for table `ATMManagementDB`.`card`
-- -----------------------------------------------------
START TRANSACTION;
USE `ATMManagementDB`;
INSERT INTO `ATMManagementDB`.`card` (`card_id`, `account_owner_id`, `bank_account_id`) VALUES (0, 1, 1);
INSERT INTO `ATMManagementDB`.`card` (`card_id`, `account_owner_id`, `bank_account_id`) VALUES (0, 2, 2);
INSERT INTO `ATMManagementDB`.`card` (`card_id`, `account_owner_id`, `bank_account_id`) VALUES (0, 3, 3);
INSERT INTO `ATMManagementDB`.`card` (`card_id`, `account_owner_id`, `bank_account_id`) VALUES (0, 4, 4);
INSERT INTO `ATMManagementDB`.`card` (`card_id`, `account_owner_id`, `bank_account_id`) VALUES (0, 5, 5);
INSERT INTO `ATMManagementDB`.`card` (`card_id`, `account_owner_id`, `bank_account_id`) VALUES (0, 6, 6);
INSERT INTO `ATMManagementDB`.`card` (`card_id`, `account_owner_id`, `bank_account_id`) VALUES (0, 7, 7);
INSERT INTO `ATMManagementDB`.`card` (`card_id`, `account_owner_id`, `bank_account_id`) VALUES (0, 8, 8);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ATMManagementDB`.`credit_card`
-- -----------------------------------------------------
START TRANSACTION;
USE `ATMManagementDB`;
INSERT INTO `ATMManagementDB`.`credit_card` (`credit_card_id`, `card_owner_name`, `cvv_number`, `balance`, `owed_balalance`, `payment_due_date`, `account_owner_id`, `overall_total_spent`) VALUES (0, 'Jonah Hill', 024, 10650.54, 2345.78, '2022-12-28', 1, 55952.65);
INSERT INTO `ATMManagementDB`.`credit_card` (`credit_card_id`, `card_owner_name`, `cvv_number`, `balance`, `owed_balalance`, `payment_due_date`, `account_owner_id`, `overall_total_spent`) VALUES (0, 'Robert Big', 789, 5299.75, 1567.36, '2022-11-20', 2, 25332.89);
INSERT INTO `ATMManagementDB`.`credit_card` (`credit_card_id`, `card_owner_name`, `cvv_number`, `balance`, `owed_balalance`, `payment_due_date`, `account_owner_id`, `overall_total_spent`) VALUES (0, 'Cameron Boyce', 346, 2423.89, 253.89, '2022-12-15', 4, 12673.48);
INSERT INTO `ATMManagementDB`.`credit_card` (`credit_card_id`, `card_owner_name`, `cvv_number`, `balance`, `owed_balalance`, `payment_due_date`, `account_owner_id`, `overall_total_spent`) VALUES (0, 'Josh Salas', 220, 1263.89, 9623.22, '2022-11-10', 5, 33461.22);
INSERT INTO `ATMManagementDB`.`credit_card` (`credit_card_id`, `card_owner_name`, `cvv_number`, `balance`, `owed_balalance`, `payment_due_date`, `account_owner_id`, `overall_total_spent`) VALUES (0, 'Omar Villar', 824, 392.22, 108.22, '2022-12-22', 6, 1893.84);
INSERT INTO `ATMManagementDB`.`credit_card` (`credit_card_id`, `card_owner_name`, `cvv_number`, `balance`, `owed_balalance`, `payment_due_date`, `account_owner_id`, `overall_total_spent`) VALUES (0, 'Alex Jose', 785, 893.56, 1343.77, '2022-12-14', 7, 5752.22);
INSERT INTO `ATMManagementDB`.`credit_card` (`credit_card_id`, `card_owner_name`, `cvv_number`, `balance`, `owed_balalance`, `payment_due_date`, `account_owner_id`, `overall_total_spent`) VALUES (0, 'Mary Hill', 665, 783.88, 205.99, '2022-12-08', 8, 2342.56);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ATMManagementDB`.`debit_card`
-- -----------------------------------------------------
START TRANSACTION;
USE `ATMManagementDB`;
INSERT INTO `ATMManagementDB`.`debit_card` (`debit_card_id`, `card_owner_name`, `pin_number`, `cvv_number`, `balance`, `checing_account_id`, `account_owner_id`, `total_amount_spent`) VALUES (0, 'Jonah Hill', 5150, 321, 500.00, 1, 1, 400683.21);
INSERT INTO `ATMManagementDB`.`debit_card` (`debit_card_id`, `card_owner_name`, `pin_number`, `cvv_number`, `balance`, `checing_account_id`, `account_owner_id`, `total_amount_spent`) VALUES (0, 'Robert Big', 2374, 443, 129.32, 2, 2, 7322.31);
INSERT INTO `ATMManagementDB`.`debit_card` (`debit_card_id`, `card_owner_name`, `pin_number`, `cvv_number`, `balance`, `checing_account_id`, `account_owner_id`, `total_amount_spent`) VALUES (0, 'John Wick ', 3452, 642, 43.38, 3, 3, 13872.11);
INSERT INTO `ATMManagementDB`.`debit_card` (`debit_card_id`, `card_owner_name`, `pin_number`, `cvv_number`, `balance`, `checing_account_id`, `account_owner_id`, `total_amount_spent`) VALUES (0, 'Cameron Boyce', 6432, 684, 248.36, 4, 4, 1234.78);
INSERT INTO `ATMManagementDB`.`debit_card` (`debit_card_id`, `card_owner_name`, `pin_number`, `cvv_number`, `balance`, `checing_account_id`, `account_owner_id`, `total_amount_spent`) VALUES (0, 'Josh Salis', 5331, 424, 1033.43, 5, 5, 4921.32);
INSERT INTO `ATMManagementDB`.`debit_card` (`debit_card_id`, `card_owner_name`, `pin_number`, `cvv_number`, `balance`, `checing_account_id`, `account_owner_id`, `total_amount_spent`) VALUES (0, 'Omar Villar', 5325, 443, 3283.44, 6, 6, 9243.45);
INSERT INTO `ATMManagementDB`.`debit_card` (`debit_card_id`, `card_owner_name`, `pin_number`, `cvv_number`, `balance`, `checing_account_id`, `account_owner_id`, `total_amount_spent`) VALUES (0, 'Alex Jose', 6432, 321, 4389.32, 7, 7, 8632.13);
INSERT INTO `ATMManagementDB`.`debit_card` (`debit_card_id`, `card_owner_name`, `pin_number`, `cvv_number`, `balance`, `checing_account_id`, `account_owner_id`, `total_amount_spent`) VALUES (0, 'Mary Jill', 2000, 093, 10325.32, 8, 8, 15324.34);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ATMManagementDB`.`transaction_records`
-- -----------------------------------------------------
START TRANSACTION;
USE `ATMManagementDB`;
INSERT INTO `ATMManagementDB`.`transaction_records` (`transaction_records_id`, `record_type`, `transaction_year`, `account_owner_id`, `bank_account_id`, `card_id`) VALUES (0, 'Mail', 2020, 1, 1, 1);
INSERT INTO `ATMManagementDB`.`transaction_records` (`transaction_records_id`, `record_type`, `transaction_year`, `account_owner_id`, `bank_account_id`, `card_id`) VALUES (0, 'Online', 2022, 2, 2, 2);
INSERT INTO `ATMManagementDB`.`transaction_records` (`transaction_records_id`, `record_type`, `transaction_year`, `account_owner_id`, `bank_account_id`, `card_id`) VALUES (0, 'Mail', 2021, 3, 3, 3);
INSERT INTO `ATMManagementDB`.`transaction_records` (`transaction_records_id`, `record_type`, `transaction_year`, `account_owner_id`, `bank_account_id`, `card_id`) VALUES (0, 'Online', 2010, 4, 4, 4);
INSERT INTO `ATMManagementDB`.`transaction_records` (`transaction_records_id`, `record_type`, `transaction_year`, `account_owner_id`, `bank_account_id`, `card_id`) VALUES (0, 'Online', 2015, 5, 5, 5);
INSERT INTO `ATMManagementDB`.`transaction_records` (`transaction_records_id`, `record_type`, `transaction_year`, `account_owner_id`, `bank_account_id`, `card_id`) VALUES (0, 'Online', 2016, 6, 6, 6);
INSERT INTO `ATMManagementDB`.`transaction_records` (`transaction_records_id`, `record_type`, `transaction_year`, `account_owner_id`, `bank_account_id`, `card_id`) VALUES (0, 'Online', 2019, 7, 7, 7);
INSERT INTO `ATMManagementDB`.`transaction_records` (`transaction_records_id`, `record_type`, `transaction_year`, `account_owner_id`, `bank_account_id`, `card_id`) VALUES (0, 'Mail', 2020, 8, 8, 8);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ATMManagementDB`.`transaction_reports`
-- -----------------------------------------------------
START TRANSACTION;
USE `ATMManagementDB`;
INSERT INTO `ATMManagementDB`.`transaction_reports` (`transaction_reports_id`, `transaction_reports_type`, `month_year`, `account_owner_id`, `bank_account_id`, `card_id`, `record_type`) VALUES (0, 'Online', 082022, 1, 1, 1, 'Online');
INSERT INTO `ATMManagementDB`.`transaction_reports` (`transaction_reports_id`, `transaction_reports_type`, `month_year`, `account_owner_id`, `bank_account_id`, `card_id`, `record_type`) VALUES (0, 'Online', 092021, 2, 2, 2, 'Online');
INSERT INTO `ATMManagementDB`.`transaction_reports` (`transaction_reports_id`, `transaction_reports_type`, `month_year`, `account_owner_id`, `bank_account_id`, `card_id`, `record_type`) VALUES (0, 'Mail', 102020, 3, 3, 3, 'Physical');
INSERT INTO `ATMManagementDB`.`transaction_reports` (`transaction_reports_id`, `transaction_reports_type`, `month_year`, `account_owner_id`, `bank_account_id`, `card_id`, `record_type`) VALUES (0, 'Online', 012020, 4, 4, 4, 'Online');
INSERT INTO `ATMManagementDB`.`transaction_reports` (`transaction_reports_id`, `transaction_reports_type`, `month_year`, `account_owner_id`, `bank_account_id`, `card_id`, `record_type`) VALUES (0, 'Online', 092020, 5, 5, 5, 'Online');
INSERT INTO `ATMManagementDB`.`transaction_reports` (`transaction_reports_id`, `transaction_reports_type`, `month_year`, `account_owner_id`, `bank_account_id`, `card_id`, `record_type`) VALUES (0, 'Online', 122021, 6, 6, 6, 'Online');
INSERT INTO `ATMManagementDB`.`transaction_reports` (`transaction_reports_id`, `transaction_reports_type`, `month_year`, `account_owner_id`, `bank_account_id`, `card_id`, `record_type`) VALUES (0, 'Online', 052019, 7, 7, 7, 'Online');
INSERT INTO `ATMManagementDB`.`transaction_reports` (`transaction_reports_id`, `transaction_reports_type`, `month_year`, `account_owner_id`, `bank_account_id`, `card_id`, `record_type`) VALUES (0, 'Mail', 092020, 8, 8, 8, 'Physical');

COMMIT;


-- -----------------------------------------------------
-- Data for table `ATMManagementDB`.`withdrawal`
-- -----------------------------------------------------
START TRANSACTION;
USE `ATMManagementDB`;
INSERT INTO `ATMManagementDB`.`withdrawal` (`withdrawal_id`, `withdrawal_type`, `amount`, `date_time`, `account_owner_id`, `checking_account_id`, `savings_account`) VALUES (0, 'Person', 200.00, '2022-02-02 10:25:12', 1, 1, 1);
INSERT INTO `ATMManagementDB`.`withdrawal` (`withdrawal_id`, `withdrawal_type`, `amount`, `date_time`, `account_owner_id`, `checking_account_id`, `savings_account`) VALUES (0, 'Online', 150.00, '2021-05-15 11:15:12', 2, 2, 2);
INSERT INTO `ATMManagementDB`.`withdrawal` (`withdrawal_id`, `withdrawal_type`, `amount`, `date_time`, `account_owner_id`, `checking_account_id`, `savings_account`) VALUES (0, 'Online', 2000.00, '2020-10-08 9:40:12', 3, 3, 3);
INSERT INTO `ATMManagementDB`.`withdrawal` (`withdrawal_id`, `withdrawal_type`, `amount`, `date_time`, `account_owner_id`, `checking_account_id`, `savings_account`) VALUES (0, 'Person', 40.00, '2021-09-10 2:35:12', 4, 4, 4);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ATMManagementDB`.`deposits`
-- -----------------------------------------------------
START TRANSACTION;
USE `ATMManagementDB`;
INSERT INTO `ATMManagementDB`.`deposits` (`deposits_id`, `deposit_type`, `amount`, `date_time`, `account_owner_id`, `checking_account_id`, `savings_account_id`, `total_amount`) VALUES (0, 'Online', 400.00, '2022-02-08 10:55:12', 1, 1, 1, 500000.00);
INSERT INTO `ATMManagementDB`.`deposits` (`deposits_id`, `deposit_type`, `amount`, `date_time`, `account_owner_id`, `checking_account_id`, `savings_account_id`, `total_amount`) VALUES (0, 'Person', 503.43, '2019-05-10 6:35:12', 2, 2, 2, 25000.00);
INSERT INTO `ATMManagementDB`.`deposits` (`deposits_id`, `deposit_type`, `amount`, `date_time`, `account_owner_id`, `checking_account_id`, `savings_account_id`, `total_amount`) VALUES (0, 'Online', 15.00, '2020-09-15 11:55:12', 3, 3, 3, 200.00);
INSERT INTO `ATMManagementDB`.`deposits` (`deposits_id`, `deposit_type`, `amount`, `date_time`, `account_owner_id`, `checking_account_id`, `savings_account_id`, `total_amount`) VALUES (0, 'Online', 2500.00, '2021-10-20 8:58:12', 4, 4, 4, 6000.00);
INSERT INTO `ATMManagementDB`.`deposits` (`deposits_id`, `deposit_type`, `amount`, `date_time`, `account_owner_id`, `checking_account_id`, `savings_account_id`, `total_amount`) VALUES (0, 'Person', 450.00, '2018-02-19 10:30:12', 5, 5, 5, 3000.00);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ATMManagementDB`.`loan`
-- -----------------------------------------------------
START TRANSACTION;
USE `ATMManagementDB`;
INSERT INTO `ATMManagementDB`.`loan` (`loan_id`, `loan_type`, `loan_amount`, `intrest_rate`, `date_time`, `bank_account_id`) VALUES (0, 'Car', 10000.00, 2.4, '2010-02-16 10:55:12', 1);
INSERT INTO `ATMManagementDB`.`loan` (`loan_id`, `loan_type`, `loan_amount`, `intrest_rate`, `date_time`, `bank_account_id`) VALUES (0, 'House', 200000.00, 1.9, '2015-08-16 12:10:12', 3);
INSERT INTO `ATMManagementDB`.`loan` (`loan_id`, `loan_type`, `loan_amount`, `intrest_rate`, `date_time`, `bank_account_id`) VALUES (0, 'Personal', 500.000, 3.2, '2012-10-09 08:55:12', 4);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ATMManagementDB`.`budget_tracker`
-- -----------------------------------------------------
START TRANSACTION;
USE `ATMManagementDB`;
INSERT INTO `ATMManagementDB`.`budget_tracker` (`budget_tracker_id`, `account_owner_id`, `bank_account_id`, `budget_amount`) VALUES (1, 1, 1, 10000);
INSERT INTO `ATMManagementDB`.`budget_tracker` (`budget_tracker_id`, `account_owner_id`, `bank_account_id`, `budget_amount`) VALUES (2, 2, 2, 0);
INSERT INTO `ATMManagementDB`.`budget_tracker` (`budget_tracker_id`, `account_owner_id`, `bank_account_id`, `budget_amount`) VALUES (3, 3, 3, 350);
INSERT INTO `ATMManagementDB`.`budget_tracker` (`budget_tracker_id`, `account_owner_id`, `bank_account_id`, `budget_amount`) VALUES (4, 4, 4, 800);
INSERT INTO `ATMManagementDB`.`budget_tracker` (`budget_tracker_id`, `account_owner_id`, `bank_account_id`, `budget_amount`) VALUES (5, 5, 5, 380);
INSERT INTO `ATMManagementDB`.`budget_tracker` (`budget_tracker_id`, `account_owner_id`, `bank_account_id`, `budget_amount`) VALUES (6, 6, 6, 0);
INSERT INTO `ATMManagementDB`.`budget_tracker` (`budget_tracker_id`, `account_owner_id`, `bank_account_id`, `budget_amount`) VALUES (7, 7, 7, 100);
INSERT INTO `ATMManagementDB`.`budget_tracker` (`budget_tracker_id`, `account_owner_id`, `bank_account_id`, `budget_amount`) VALUES (8, 8, 8, 220);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ATMManagementDB`.`currency`
-- -----------------------------------------------------
START TRANSACTION;
USE `ATMManagementDB`;
INSERT INTO `ATMManagementDB`.`currency` (`currency_id`, `currency_type`, `currency_balance`, `bank_id`) VALUES (1, 'USD', 100000, 1);
INSERT INTO `ATMManagementDB`.`currency` (`currency_id`, `currency_type`, `currency_balance`, `bank_id`) VALUES (2, 'CAD', 100000, 2);
INSERT INTO `ATMManagementDB`.`currency` (`currency_id`, `currency_type`, `currency_balance`, `bank_id`) VALUES (3, 'EUR', 100000, 3);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ATMManagementDB`.`security_measures`
-- -----------------------------------------------------
START TRANSACTION;
USE `ATMManagementDB`;
INSERT INTO `ATMManagementDB`.`security_measures` (`security_measures_id`, `bank_id`) VALUES ('Very High', 2);
INSERT INTO `ATMManagementDB`.`security_measures` (`security_measures_id`, `bank_id`) VALUES ('High', 1);
INSERT INTO `ATMManagementDB`.`security_measures` (`security_measures_id`, `bank_id`) VALUES ('Medium', 3);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ATMManagementDB`.`customer_support`
-- -----------------------------------------------------
START TRANSACTION;
USE `ATMManagementDB`;
INSERT INTO `ATMManagementDB`.`customer_support` (`customer_support_id`, `support_type`, `account_owner_id`, `date_time`) VALUES (0, 'Mobile', 1, '2021-02-15 9:55:12');
INSERT INTO `ATMManagementDB`.`customer_support` (`customer_support_id`, `support_type`, `account_owner_id`, `date_time`) VALUES (0, 'Person', 2, '2019-05-20 8:30:12');
INSERT INTO `ATMManagementDB`.`customer_support` (`customer_support_id`, `support_type`, `account_owner_id`, `date_time`) VALUES (0, 'Online', 3, '2015-10-08 7:45:19');

COMMIT;


-- -----------------------------------------------------
-- Data for table `ATMManagementDB`.`investments`
-- -----------------------------------------------------
START TRANSACTION;
USE `ATMManagementDB`;
INSERT INTO `ATMManagementDB`.`investments` (`investments_id`, `bank_account_id`, `account_owner_id`, `stock_id`, `stock_value`, `amount_of_shares`) VALUES (0, 1, 1, 'TSLA', 2000.00, 15);
INSERT INTO `ATMManagementDB`.`investments` (`investments_id`, `bank_account_id`, `account_owner_id`, `stock_id`, `stock_value`, `amount_of_shares`) VALUES (0, 2, 2, 'AAPL', 1000.00, 2);
INSERT INTO `ATMManagementDB`.`investments` (`investments_id`, `bank_account_id`, `account_owner_id`, `stock_id`, `stock_value`, `amount_of_shares`) VALUES (0, 4, 4, 'GOOG', 120.00, 4);
INSERT INTO `ATMManagementDB`.`investments` (`investments_id`, `bank_account_id`, `account_owner_id`, `stock_id`, `stock_value`, `amount_of_shares`) VALUES (0, 5, 5, 'AMZN', 500.00, 2);
INSERT INTO `ATMManagementDB`.`investments` (`investments_id`, `bank_account_id`, `account_owner_id`, `stock_id`, `stock_value`, `amount_of_shares`) VALUES (0, 6, 6, 'JPM', 240.00, 8);
INSERT INTO `ATMManagementDB`.`investments` (`investments_id`, `bank_account_id`, `account_owner_id`, `stock_id`, `stock_value`, `amount_of_shares`) VALUES (0, 7, 7, 'WMT', 60.00, 4);
INSERT INTO `ATMManagementDB`.`investments` (`investments_id`, `bank_account_id`, `account_owner_id`, `stock_id`, `stock_value`, `amount_of_shares`) VALUES (0, 8, 8, 'XOM', 100.00, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ATMManagementDB`.`tap_pay`
-- -----------------------------------------------------
START TRANSACTION;
USE `ATMManagementDB`;
INSERT INTO `ATMManagementDB`.`tap_pay` (`tap_pay_id`, `amount`, `date_time`, `debit_card`) VALUES (0, 18.99, '2020-05-15 10:55:12', 1);
INSERT INTO `ATMManagementDB`.`tap_pay` (`tap_pay_id`, `amount`, `date_time`, `debit_card`) VALUES (0, 220.00, '2022-08-16 12:20:12', 2);
INSERT INTO `ATMManagementDB`.`tap_pay` (`tap_pay_id`, `amount`, `date_time`, `debit_card`) VALUES (0, 190.00, '2021-10-08 04:22:12', 3);
INSERT INTO `ATMManagementDB`.`tap_pay` (`tap_pay_id`, `amount`, `date_time`, `debit_card`) VALUES (0, 64.99, '2020-09-21 11:11:12', 4);

COMMIT;


select * from Borrower;
select * from Depositor;
select * from Branch;
select * from Loan;

--1
select * from Borrower where Customer_name like 'T%'; 
select * from Depositor where Customer_name like 'T%'; 

--2
(select Customer_name from Depositor) except (select Customer_name from Borrower);

--3
select Borrower.Customer_name from Borrower inner join Depositor on Borrower.Customer_name = Depositor.Customer_name;

--4
select Customer_name, Borrower.Loan_number, Amount from Borrower inner join Loan on Borrower.Loan_number = Loan.Loan_number where Amount < 28000;

--5
select Branch_name from Branch where Assests > all (select Assests from Branch where Branch_name='Dhanmondi'); 

--6
update Branch set Assests = Assests * 1.10 where Branch_name = 'Dhanmondi';
update Branch set Assests = Assests * 1.05 where Branch_name = 'Banani';
update Branch set Assests = Assests * 1.02 where Branch_name != 'Dhanmondi' and Branch_name != 'Banani';

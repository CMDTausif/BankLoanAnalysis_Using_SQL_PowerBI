select * from Bank_Loandata

/* Total Loan Application from banl loan data */
select count(id) as Total_Loan_Application  from Bank_Loandata

/*MTD Loan Application*/
select count(id) as MTD_Total_Loan_Application  from Bank_Loandata
where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021


/*Previous Month To Date Loan Application*/
select count(id) as PMTD_Total_Loan_Application  from Bank_Loandata
where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021

/* Total Funded Amounts */
select sum(loan_amount) as Total_Funded_Amounts from Bank_Loandata 

/*Month Of Total Funded Amounts*/
select sum(loan_amount) as Total_Funded_Amounts  from Bank_Loandata
where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021

/* Previous Month Of Total Funded Amounts */
select sum(loan_amount) as Total_Funded_Amounts  from Bank_Loandata
where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021

/* Total Amount received */
select sum(total_payment) as Total_Amount_Collected from Bank_Loandata

/*MTD Total Amount Received */
select sum(total_payment) as MTD_Total_Amount_Collected from Bank_Loandata
where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021


/*PMTD Total Amount Received */
select sum(total_payment) as PMTD_Total_Amount_Collected from Bank_Loandata
where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021

select * from Bank_Loandata

/* Average Interest Rate */
select round(avg(int_rate), 4)*100 as Avg_Interest_Rate from Bank_Loandata

/* Average MTD Interest Rate */
select round(avg(int_rate), 4)*100 as MTD_Avg_Interest_Rate from Bank_Loandata
where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021

/* Average PMTD Interest Rate */
select round(avg(int_rate), 4)*100 as PMTD_Avg_Interest_Rate from Bank_Loandata
where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021

/* Average DTI */
select round(avg(dti), 4)*100 as Avg_DTI from Bank_Loandata

/* Average MTD DTI */
select round(avg(dti), 4)*100 as MTD_Avg_DTI from Bank_Loandata
where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021

/* Average PMTD DTI */
select round(avg(dti), 4)*100 as PMTD_Avg_DTI from Bank_Loandata
where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021

/* Good Loan Issued */
select * from Bank_Loandata

/* Good Loan Percentage */

select loan_status from Bank_Loandata

select 
		(count(case when loan_status = 'Fully Paid' or loan_status = 'Current' then id END))
		/
		count(id) as Good_Loan_Percentage

from Bank_Loandata









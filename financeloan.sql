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





















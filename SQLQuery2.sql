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
select sum(loan_amount) as Month_Of_Total_Funded_Amounts  from Bank_Loandata
where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021

/* Previous Month Of Total Funded Amounts */
select sum(loan_amount) as Previous_Month_Of_Total_Funded_Amounts  from Bank_Loandata
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


/* Good Loan Percentage */
select 
		(count(case when loan_status = 'Fully Paid' or loan_status = 'Current' then id END) * 100.0)
		/
		count(id) as Good_Loan_Percentage

from Bank_Loandata

/* Good Loan Application */

select count(id) as Good_Loan_Application from Bank_Loandata
where loan_status = 'Fully Paid' OR loan_status = 'Current'


/* Good Loan Funded Amount */

select sum(loan_amount) as Good_Loan_Funded_Amount from Bank_Loandata
where loan_status = 'Fully Paid' OR loan_status = 'Current'

/* Good Loan Amount Received */

select sum(total_payment) as Good_Loan_Amount_Received from Bank_Loandata
where loan_status = 'Fully Paid' OR loan_status = 'Current'


/* Bad Loan Issused */
select loan_status from Bank_Loandata

/* Bad Loan Percentage */
select 
		(count(case when loan_status = 'Charged Off' then id END) * 100.0)
		/
		count(id) as Bad_Loan_Percentage

from Bank_Loandata

/* Bad Loan Application */

select count(id) as Bad_Loan_Application from Bank_Loandata
where loan_status = 'Charged Off' 


/* Bad Loan Funded Amount */

select sum(loan_amount) as Bad_Loan_Funded_Amount from Bank_Loandata
where loan_status = 'Charged Off' 

/* Bad Loan Amount Received */

select sum(total_payment) as Bad_Loan_Amount_Received from Bank_Loandata
where loan_status = 'Charged Off'

/* Loan Status */
select
   loan_status,
   count(id) as Total_Loan_Applications,
   sum(total_payment) as  Total_Amount_Received,
   sum(loan_amount) as Total_Funded_Amount,
   avg(int_rate * 100) as Interest_Rate,
   avg(dti * 100) as DTI
from
   Bank_Loandata
group by 
   loan_status


select 
	loan_status, 
	sum(total_payment) as MTD_Total_Amount_Received, 
	sum(loan_amount) as MTD_Total_Funded_Amount 
from Bank_Loandata
where month(issue_date) = 12 
group by loan_status

/* Dashboard 2 Overview */
/*  Bank Loan Report Overview */

select * from Bank_Loandata

select 
	MONTH(issue_date) as Month_Number,
	DATENAME(MONTH, issue_date) as Month_Name,
	COUNT(id) as Total_Loan_Application,
	SUM(loan_amount) as Total_Funded_Amount,
	SUM(total_payment) as Total_Received_Amount

from Bank_Loandata
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date) 

/* Regional Analysis By State */
select address_state,
COUNT(id) as Total_Loan_Application,
SUM(loan_amount) as Total_Funded_Amount,
SUM(total_payment) as Total_Received_Amount

from Bank_Loandata
Group By address_state
Order By SUM(loan_amount) DESC


select address_state as State,
COUNT(id) as Total_Loan_Application,
SUM(loan_amount) as Total_Funded_Amount,
SUM(total_payment) as Total_Received_Amount

from Bank_Loandata
Group By address_state
Order By address_state

/* Term */

select term as Term,
COUNT(id) as Total_Loan_Application,
SUM(loan_amount) as Total_Funded_Amount,
SUM(total_payment) as Total_Received_Amount

from Bank_Loandata
Group By term
Order By term

/* Employee Length */
select emp_length as Employee_Length,
COUNT(id) as Total_Loan_Application,
SUM(loan_amount) as Total_Funded_Amount,
SUM(total_payment) as Total_Received_Amount

from Bank_Loandata
Group By emp_length
Order By emp_length

/* With Respect To Purpose */
select * from Bank_Loandata

select purpose as Purpose,
COUNT(id) as Total_Loan_Application,
SUM(loan_amount) as Total_Funded_Amount,
SUM(total_payment) as Total_Received_Amount

from Bank_Loandata
Group By purpose
Order By purpose

/* with respect to home ownership */

select home_ownership as HomeOwnership,
COUNT(id) as Total_Loan_Application,
SUM(loan_amount) as Total_Funded_Amount,
SUM(total_payment) as Total_Received_Amount

from Bank_Loandata
Group By home_ownership
Order By home_ownership


select purpose as Purpose,
COUNT(id) as Total_Loan_Application,
SUM(loan_amount) as Total_Funded_Amount,
SUM(total_payment) as Total_Received_Amount

from Bank_Loandata
where grade = 'A'
Group By purpose
Order By purpose

























# BankLoanAnalysis_Using_SQL_PowerBI
**Financial Bank Loan Analysis Dashboard Using SQL and PowerBI** 

This project includes a comprehensive Details Dashboard that offers a user-friendly interface for accessing essential loan data. It provides detailed insights into the loan portfolio, borrower profiles, and loan performance, streamlining the analysis and management of lending activities.


## Terminologies For The Bank Loan Data

**1. Loan Application -** Banks gather loan data primarily through loan applications, where individuals or businesses provide detailed personal and financial information. This data is collected electronically or in paper form during the application process.

**2. Credit Reports -** Banks also access credit reports from credit bureaus to evaluate a borrower's creditworthiness. These reports detail credit history, existing loans, and payment behavior.

**3. Internal Records -** Banks maintain internal records of loan transactions, such as disbursements, repayments, and status updates, which are stored in their databases for tracking and management.

**4. Online Portals -** Banks use online platforms where borrowers can apply for loans, make payments, and access account details. Data from these portals is collected and stored for analysis and management.

**5. Third-Party Data Sources -** Banks may also utilize third-party data sources, like income verification services, to gather additional information about borrowers for a comprehensive assessment.

### Process For Granting Loan

**1. Loan Application -** The loan application process starts when a customer submits their application to a bank or lending institution, either in person, online, or through other available channels. 

**2. Application Review -** During the application review, the lending institution evaluates the loan application and collects essential documents like income statements, credit reports, and identification.

**3. Identity Verification -** Identity verification is an essential initial step to confirm the applicant's identity, ensuring authenticity and preventing identity theft.

**4. Credit Check -** A credit check is a key step where lenders access the applicant's credit report from credit bureaus to assess their credit history, score, and any past delinquencies or defaults.

**5. Income Verification  -** Income verification is conducted by lenders to assess the applicant's ability to repay the loan. This may involve reviewing pay stubs, tax returns, or other income-related documents.

**6. DTI Check -** Lenders calculate the Debt-to-Income (DTI) ratio, which compares the applicant's monthly debt payments to their monthly income. A lower DTI suggests a stronger capacity to repay the loan.

**7. Employee Verification  -** Lenders may verify the applicant's employment status and duration by contacting their employer. A stable employment history is typically viewed as a positive factor in the loan assessment.

**8. Collateral Assessment -** If the loan is secured by collateral, such as a home or car, the lender assesses its value and condition to ensure it covers the loan amount in case of default.

**9. Risk Assessment-**
Lenders conduct a risk assessment to evaluate the overall risk of the loan. This includes analyzing the applicant's credit risk, income stability, and the purpose of the loan.

**10. Loan Approval or Denial-** After gathering all necessary information and conducting a risk assessment, the lender decides whether to approve or deny the loan application. If approved, the lender determines the loan amount, interest rate, and terms.

**11. Disbursement of Funds-**
After both parties sign the loan agreement, the lender disburses the funds to the borrower, who can then use the funds for the specified purpose.

**12. Repayment-**
The borrower is responsible for making regular loan payments as outlined in the loan agreement, which includes repaying both the principal amount and interest.

**13. Ongoing Monitoring-**
Lenders monitor the loan throughout its term, tracking payments, evaluating the borrower's financial health, and addressing any delinquencies or defaults.


### Reasons For Analysing Bank Loan Data

**1. Risk Assessment:**
Banks analyze loan data to assess lending risks, evaluate borrower creditworthiness, predict default probabilities, and determine suitable interest rates and lending terms.

**2. Decision-making:**
Loan data analysis aids banks in making informed decisions on loan applications by utilizing data-driven models and algorithms to approve or deny requests.

**3. Portfolio Management:**
Data analysis enables banks to manage loan portfolios by monitoring their health, identifying underperforming loans, and optimizing loan terms and pricing.

**4. Fraud Detection:**
Banks leverage data analysis to identify fraudulent loan applications and activities by detecting unusual patterns, inconsistencies, or discrepancies that trigger fraud alerts.

**5. Regulatory Compliance:**
Banks utilize data analysis to meet regulatory requirements, such as the Home Mortgage Disclosure Act (HMDA) and Know Your Customer (KYC) regulations, by ensuring accurate data collection and reporting.

**6. Profitability Analysis:**
Banks analyze loan data, including interest income, origination costs, default rates, and collection efforts, to evaluate the profitability of their loan portfolios.

**7. Market Research:**
Data analysis enables banks to understand market trends, the competitive landscape, and customer demand, aiding in product development and market expansion strategies.

**8. Credit Risk Management:**
Banks use data analysis to monitor and manage credit risk by setting risk management strategies, provisioning for potential losses, and conducting stress tests on loan portfolios.

**9. Customer Retention:**
Banks utilize data analysis to identify opportunities for retaining customers, such as offering loan refinancing options or additional financial products.


**Loan ID:**

**•	Purpose:** A unique identifier assigned to each loan application or account, serving as a primary key for tracking and managing individual loans.

**•	Use for Banks:** Banks use Loan IDs to efficiently manage and track loans throughout their lifecycle, organize loan records, monitor repayments, and address customer inquiries.

**Address State:**

**•	Purpose:** Indicates the borrower's location, aiding in the assessment of regional risk factors, compliance with state regulations, and estimating default probabilities.

**•	Use for Banks:** Banks use this information to identify regional trends in loan demand, adjust marketing strategies, and manage risk portfolios based on geographic regions.

**Employee Length:**

**•	Purpose:** Employee Length provides insights into the borrower's employment stability. Longer employment durations may indicate greater job security.

**•	Use for Banks:** Banks consider employment length when assessing a borrower's ability to repay. Stable employment often translates to a lower default risk.

**Address State:**

**•	Purpose:** Indicates the borrower's location, aiding in the assessment of regional risk factors, compliance with state regulations, and estimating default probabilities.

**•	Use for Banks:** Banks use this information to identify regional trends in loan demand, adjust marketing strategies, and manage risk portfolios based on geographic regions.

**Employee Length:**

**•	Purpose:** Provides insights into the borrower's employment stability, with longer employment durations often indicating greater job security.

**•	Use for Banks:** Banks consider employment length when assessing a borrower's ability to repay, as stable employment typically correlates with a lower risk of default.

**Employee Title:**

**•	Purpose:** Specifies the borrower's occupation or job title, helping lenders understand the source of the borrower's income.

**•	Use for Banks:** Banks use this information to verify income sources, assess the borrower's financial capacity, and tailor loan offers to different professions.

**Grade:**

**•	Purpose:** Represents a risk classification assigned to the loan based on the borrower's creditworthiness, with higher grades indicating lower risk.

**•	Use for Banks:** Banks use the grade to price loans and manage risk, with higher-grade loans typically receiving lower interest rates and being more attractive to investors.

**Sub Grade:**

**•	Purpose:** Refines the risk assessment within a grade, providing additional risk differentiation.

**•	Use for Banks:** Sub Grades allow banks to fine-tune risk assessments, helping them tailor interest rates and lending terms to better match borrower risk profiles.

**Home Ownership:**

**•	Purpose:** Indicates the borrower's housing status, providing insights into their financial stability.

**•	Use for Banks:** Banks use this information to assess collateral availability and borrower stability, as homeowners typically have lower default rates.

**Issue Date:**

**•	Purpose:** Marks the loan's origination date, crucial for loan tracking and maturity calculations.

**•	Use for Banks:** Banks use Issue Dates to track loan aging, calculate interest accruals, and manage loan portfolios.

**Last Credit Pull Date:**

**•	Purpose:** Records when the borrower's credit report was last accessed, helping to monitor creditworthiness.

**•	Use for Banks:** Banks use this date to track updates to credit history, assess credit risk, and make informed lending decisions.

**Last Payment Date:**

**•	Purpose:** Indicates the most recent loan payment received, tracking the borrower's payment history.

**•	Use for Banks:** Banks use this date to evaluate payment behavior, calculate delinquency, and forecast future payments.

**Loan Status:**

**•	Purpose:** Indicates the current state of the loan (e.g., fully paid, current, default), tracking its performance.

**•	Use for Banks:** Banks use Loan Status to monitor loan health, categorize loans for risk analysis, and determine provisioning requirements.

**Next Payment Date:**

**•	Purpose:** Estimates the date of the next loan payment, aiding in cash flow forecasting.

**•	Use for Banks:** Banks use this date for liquidity planning and projecting revenue from loan portfolios.

**Purpose:**

**•	Purpose:** Specifies the reason for the loan (e.g., debt consolidation, education), providing insights into borrower intentions.

**•	Use for Banks:** Banks use this information to segment and customize loan offerings, aligning loan terms with borrower needs.

**Term:**

**•	Purpose:** Defines the loan's duration in months, establishing the repayment period.

**•	Use for Banks:** Banks use the term to structure loan agreements, calculate interest payments, and manage loan maturities.

**Verification Status:**

**•	Purpose:** Indicates whether the borrower's financial information has been verified, ensuring data accuracy.

**•	Use for Banks:** Banks use this information to gauge data reliability, verify income, and assess the credibility of loan applications.

**Annual Income:**

**•	Purpose:** Reflects the borrower's total yearly earnings, used to assess repayment capacity.

**•	Use for Banks:** Banks use this figure to determine loan eligibility, calculate debt-to-income ratios, and evaluate creditworthiness.

**DTI (Debt-to-Income Ratio):**

**•	Purpose:** Measures the borrower's debt burden relative to income, indicating their capacity to take on additional debt.

**•	Use for Banks:** Banks use DTI to assess a borrower's ability to manage loan payments and make responsible lending decisions.

**Instalment:**

**•	Purpose:** Represents the fixed monthly payment amount for loan repayment, including both principal and interest.

**•	Use for Banks:** Banks use this information to structure loan terms, calculate amortization schedules, and evaluate payment affordability.

**Interest Rate:**

**•	Purpose:** Represents the annual borrowing cost expressed as a percentage, determining the loan's overall cost.

**•	Use for Banks:** Banks use interest rates to price loans, manage profit margins, and attract investors.

**Loan Amount:**

**•	Purpose:** Represents the total borrowed sum, defining the principal amount.

**•	Use for Banks:** Banks use the loan amount to determine the loan size and assess.























































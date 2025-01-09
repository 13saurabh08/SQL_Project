use tm_project_db;

select * from financial_data;

select count(id) as total_loan_applications from financial_data;

select sum(loan_amount) as total_funded_amount from financial_data;

select sum(total_payment) as total_amount_received from financial_data;

select round(avg(int_rate),2)*100 as avg_int_rate from Financial_data;

select avg(dti) as avg_dti_ratio from financial_data;

select Loan_status from financial_data;

select count(id) as good_loan_applications from financial_data where loan_status='fully paid' or loan_status='current';

select count(id) as bad_loan_applications from financial_data where loan_status='charged off';

select (count(case when loan_status='fully paid' or loan_status='current' then id end)*100)/count(id) as good_loan_percentage from financial_data;

select (count(case when loan_status='charged off' then id end)*100)/count(id) as bad_loan_percentage from financial_data;

select sum(loan_amount) as bad_loan_amount from financial_data where loan_status='charged off';

select sum(loan_amount) as good_loan_amount from financial_data where loan_status='fully paid' or loan_status='current';

select sum(total_payment) as bad_loan_amount_received from financial_data where loan_status='charged off';

select sum(total_payment) as good_loan_amount_received from financial_data where loan_status='fully paid' or loan_status='current';



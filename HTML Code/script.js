var monthly_payment; // Ежемесячные платёж
var loan_amount; // Сумма кредита
var monthly_interest_rate; // Ежемесячная процентная ставка
var loan_term; // срок, на который берётся кредит

monthly_payment = loan_amount * ( monthly_interest_rate + monthly_interest_rate/(pow(1 + monthly_interest_rate, loan_term) - 1) )

document.write (monthly_payment) // Вывод результата
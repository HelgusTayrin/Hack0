<script>
        function validateForm () {
            var loan_amount = document.forms["myForm"]["fsum"].value;
            var loan_term = document.forms["myForm"]["fsrok"].value;

            var RUBinDOL = 72.95;
            var RUBinEUR = 87.03;
            var DOLinEUR = 0.8386;

            var monthly_interest_rate = (20 / 100) / 12;
            var degr = Math.pow( 1 + ((20 / 100) / 12), Number(loan_term) * 12 );
            var monthly_payment = Number(loan_amount) * (monthly_interest_rate + monthly_interest_rate/(degr - 1));


            if (loan_amount == "" || loan_term == "") {
                alert ("You must put your information");
                return false;
            } 

            if (!(loan_amount == "" && loan_amount == "")) {

                if (document.forms["myForm"]["valuteSum"].value == document.forms["myForm"]["valuteDohod"].value) {
                    alert ("Ваш ежемесячный платёж = " + monthly_payment);
                    return false;
                } 

                if (document.forms["myForm"]["valuteSum"].value == "RUB" && document.forms["myForm"]["valuteDohod"].value == "DOL") {
                    monthly_payment = monthly_payment / RUBinDOL;
                    alert ("Ваш ежемесячный платёж = " + monthly_payment);
                    return false;
                }

                if (document.forms["myForm"]["valuteSum"].value == "RUB" && document.forms["myForm"]["valuteDohod"].value == "EUR") {
                    monthly_payment = monthly_payment / RUBinEUR;
                    alert ("Ваш ежемесячный платёж = " + monthly_payment);
                    return false;
                }

                if (document.forms["myForm"]["valuteSum"].value == "DOL" && document.forms["myForm"]["valuteDohod"].value == "RUB") {
                    monthly_payment = monthly_payment * RUBinDOL;
                    alert ("Ваш ежемесячный платёж = " + monthly_payment);
                    return false;
                }

                if (document.forms["myForm"]["valuteSum"].value == "DOL" && document.forms["myForm"]["valuteDohod"].value == "EUR") {
                    monthly_payment = monthly_payment * DOLinEUR;
                    alert ("Ваш ежемесячный платёж = " + monthly_payment);
                    return false;
                }

                if (document.forms["myForm"]["valuteSum"].value == "EUR" && document.forms["myForm"]["valuteDohod"].value == "RUB") {
                    monthly_payment = monthly_payment * RUBinEUR;
                    alert ("Ваш ежемесячный платёж = " + monthly_payment);
                    return false;
                }

                if (document.forms["myForm"]["valuteSum"].value == "EUR" && document.forms["myForm"]["valuteDohod"].value == "DOL") {
                    monthly_payment = monthly_payment / DOLinEUR;
                    alert ("Ваш ежемесячный платёж = " + monthly_payment);
                    return false;
                }
            }
    
        }
    </script>
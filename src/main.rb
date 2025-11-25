require_relative 'model/payment_types/visa_payment'
require_relative 'model/payment_types/cheque_payment'
require_relative 'model/payment_types/cash_payment'
require_relative 'model/payment_types/mobile_money_payment'

def effectuer_transaction(paiement, montant)
    puts "--- Nouvelle Transaction de Paiement ---"
    details = paiement.pay(montant)

    if details.statut == :termine
        puts "Détails du paiement : Montant - #{details.montant}Ar, Méthode - #{details.methode}, Statut - #{details.statut}"
    else
        puts "Transaction ID #{details.id} de paiement a échoué. Veuillez réessayer."
    end
    puts "----------------------------------------"
end

visa = VisaPaiement.new("4111-XXXX-XXXX-1234")
effectuer_transaction(visa, 150.75)

mobile_money = MobileMoneyPaiement.new("0341234567")
effectuer_transaction(mobile_money, 75.50)

cheque = ChequePaiement.new("CH123456")
effectuer_transaction(cheque, 200.00)

especes = EspecesPaiement.new
effectuer_transaction(especes, 50.00)
invalid_visa = VisaPaiement.new("5111-XXXX-XXXX-1234")
effectuer_transaction(invalid_visa, 100.00)
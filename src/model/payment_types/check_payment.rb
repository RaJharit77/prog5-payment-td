require_relative "../strategy/payment_strategy"

class ChequePaiement < PaiementStrategy
    def initialize(cheque_number)
        @cheque_number = cheque_number
    end

    def pay(montant)
        details = generer_details(montant, :cheque)

        puts "Traitement du paiement par chèque #{@cheque_number} pour un montant de #{montant}Ar..."

        if @cheque_number.match?(/\ACH\d{6}\z/)
            details.terminer!
            puts "Paiement par chèque réussi pour un montant de #{montant}Ar."
        else
            details.echouer!
            puts "Échec du paiement par chèque pour un montant de #{montant}Ar."
        end
        details
    end
end
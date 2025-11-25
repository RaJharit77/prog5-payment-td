require_relative "../strategy/payment_strategy"

class VisaPaiement < PaiementStrategy
    def initialize(card_number)
        super()
        @card_number = card_number
    end

    def pay(montant)
        details = generer_details(montant, :carte)

        puts "Traitement du paiement Visa #{@card_number} pour un montant de #{montant}Ar..."

        if @card_number.start_with?("4")
            details.terminer!
            puts "Paiement Visa réussi pour un montant de #{montant}Ar."
        else
            details.echouer!
            puts "Échec du paiement Visa pour un montant de #{montant}Ar."
        end

        details
    end
end

require_relative 'paiement_strategy'

class MobileMoneyPaiement < PaiementStrategy
    def initialize(phone_number)
        @phone_number = phone_number
    end

    def pay(montant)
        details = generer_details(montant, :mobile_money)

        puts "Traitement du paiement Mobile Money #{@phone_number} pour un montant de #{montant}Ar..."

        if @phone_number.match?(/\A\+2613\d{7}\z/)
            details.terminer!
            puts "Paiement Mobile Money réussi pour un montant de #{montant}Ar."
        else
            details.echouer!
            puts "Échec du paiement Mobile Money pour un montant de #{montant}Ar."
        end

        details
    end
end
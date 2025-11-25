require_relative "../strategy/payment_strategy"

class EspecesPaiement < PaiementStrategy
    def pay(montant)
        details = generer_details(montant, :especes)

        puts "Traitement du paiement en espèces pour un montant de #{montant}Ar..."

        details.terminer!
        puts "Paiement en espèces réussi pour un montant de #{montant}Ar."

        details
    end
end

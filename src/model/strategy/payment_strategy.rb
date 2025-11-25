require_relative "../../info_payment"

class PaiementStrategy
    def generer_details(montant, payment_method)
        InfoPaiement.new(id: rand(1_000_000), amount: montant, payment_method: payment_method)
    end

    def pay(_montant)
        raise NotImplementedError, "Méthode 'pay' doit être implémentée dans la sous-classe"
    end
end
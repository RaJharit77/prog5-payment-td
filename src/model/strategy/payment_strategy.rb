require_relative '../info_paiement'

class PaiementStrategy
    def generer_details(montant, method)
        InfoPaiement.new(rand(1000000), montant, method)
    end

    def pay(_montant)
        raise NotImplementedError, "Méthode 'pay' doit être implémentée dans la sous-classe"
    end
end
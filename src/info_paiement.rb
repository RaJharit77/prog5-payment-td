class InfoPaiement
    attr_reader :id, :amount, :date, :method, :status

    METHODES = [:carte, :cheque, :mobile_money, :especes]
    STATUS = [:en_attente, :termine, :echoue]

    def initialize(id:, amount:, method:)
        @id = id
        @amount = amount
        @date = Time.now
        @method = method
        @status = :en_attente
    end

    def terminer!
        @status = :termine
    end

    def echouer!
        @status = :echoue
    end
end

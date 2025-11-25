class InfoPaiement
    attr_reader :id, :amount, :date, :payment_method, :status

    METHODES = [:carte, :cheque, :mobile_money, :especes].freeze
    STATUTS = [:en_attente, :termine, :echoue].freeze

    def initialize(id:, amount:, payment_method:)
        @id = id
        @amount = amount
        @date = Time.now
        @payment_method = payment_method
        @status = :en_attente
    end

    def terminer!
        @status = :termine
    end

    def echouer!
        @status = :echoue
    end
end
Gem::Specification.new do |spec|
    spec.name          = "prog5_rb"
    spec.version       = "1.0.0"
    spec.authors       = ["RaJharit77"]
    spec.email         = ["hei.rajo@gmail.com"]

    spec.summary       = "Système de paiement avec pattern Strategy"
    spec.description   = "Implémentation Ruby d'un système de paiement utilisant le pattern Strategy"
    spec.homepage      = "https://github.com/RaJharit77/prog5-payment-td"
    spec.license       = "MIT"

    spec.files         = Dir["src/**/*", "README.md", "LICENSE.txt"]
    spec.require_paths = ["src"]

    spec.required_ruby_version = '>= 3.0.0'

    spec.add_development_dependency "debug", "~> 1.9"
    spec.add_development_dependency "rubocop", "~> 1.81"
    spec.add_development_dependency "rubocop-performance", "~> 1.26"
    spec.add_development_dependency "rubocop-rspec", "~> 3.8"
    spec.add_development_dependency "rubocop-rake", "~> 0.7"
end
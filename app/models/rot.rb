class Rot < ActiveRecord::Base
    has_many :viagems
    has_many :ponto_passagems

    accepts_nested_attributes_for :ponto_passagems, :allow_destroy => true

    validates :nome, :origem, :destino, :presence => true
end

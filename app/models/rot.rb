class Rot < ActiveRecord::Base
    has_many :viagems
    has_many :ponto_passagems

    accepts_nested_attributes_for :ponto_passagems

    validates :nome, :origem, :destino, :presence => true
end

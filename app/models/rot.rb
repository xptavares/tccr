class Rot < ActiveRecord::Base
    has_many :viagems
    has_many :ponto_passagems
    belongs_to :origem, :class_name => "Ponto"
    belongs_to :destino, :class_name => "Ponto"
    
    accepts_nested_attributes_for :destino, :origem
end

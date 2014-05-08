class Viagem < ActiveRecord::Base
    belongs_to :rot
    belongs_to :veiculo
    has_many :itinerario_realizados
    
    accepts_nested_attributes_for :rot, :veiculo
end

class Viagem < ActiveRecord::Base
    belongs_to :rot
    belongs_to :veiculo
    has_many :itinerario_realizados

    def nome
    	[self.rot.nome, self.veiculo.id].join(' - ')
    end
    
    accepts_nested_attributes_for :rot, :veiculo
end

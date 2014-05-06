class Viagem < ActiveRecord::Base
    belongs_to :rot
    belongs_to :veiculo
    
    accepts_nested_attributes_for :rot, :veiculo
end

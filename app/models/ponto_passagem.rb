class PontoPassagem < ActiveRecord::Base
    belongs_to :rot
    belongs_to :ponto
    
    accepts_nested_attributes_for :rot, :ponto
end

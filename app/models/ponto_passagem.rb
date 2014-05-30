class PontoPassagem < ActiveRecord::Base
    belongs_to :rot
    
    accepts_nested_attributes_for :rot
end

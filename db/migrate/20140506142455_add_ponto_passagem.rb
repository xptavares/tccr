class AddPontoPassagem < ActiveRecord::Migration
  def change
  	@rots = Rot.all
  	@pontos = Ponto.all
  	@rots.each do |rot|
  		@pontos.each do |ponto|
  			if !(ponto.nome.eql? rot.origem.nome) and  !(ponto.nome.eql? rot.destino.nome) and (ponto.nome.include? "sc" or ponto.nome.include? "rs")
  				PontoPassagem.create rot_id: rot.id, ponto_id: ponto.id
  			end
  		end
  	end
  end
end

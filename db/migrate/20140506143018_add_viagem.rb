class AddViagem < ActiveRecord::Migration
  def change
  	for i in 1..10
  		for j in 1..3
  			Viagem.create date: DateTime.now, rot_id:i, veiculo_id:j
  		end
  	end
  end
end

class AddItinerarioRealizado < ActiveRecord::Migration
  def change
  	ItinerarioRealizado.create latitude:-27.593688, longitude: -48.547612, date: DateTime.now, viagem_id: 1
  	ItinerarioRealizado.create latitude:-27.596902, longitude: -48.549865, date: DateTime.now, viagem_id: 1
  	ItinerarioRealizado.create latitude:-27.601228, longitude: -48.549639, date: DateTime.now, viagem_id: 1
  	ItinerarioRealizado.create latitude:-27.598024, longitude: -48.559242, date: DateTime.now, viagem_id: 1
  end
end

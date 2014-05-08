# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

directionsDisplay = null
directionsService = new google.maps.DirectionsService()
map = null

initialize = -> 
 directionsDisplay = new google.maps.DirectionsRenderer()
 chicago = new google.maps.LatLng(41.850033, -87.6500523)
 mapOptions =
  zoom: 6
  center: chicago
 map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions)
 directionsDisplay.setMap(map)
google.maps.event.addDomListener(window, 'load', initialize)


calculaPontos = (start, end, waypoints) ->
 waypts = []
 waypoints.forEach (way)->
  waypts.push {location:way.ponto_passagems_ponto_nome, stopover:true}
 
 request = 
  origin: start
  destination: end
  waypoints: waypts
  optimizeWaypoints: true
  travelMode: google.maps.TravelMode.DRIVING
 
 directionsService.route request, (response, status) ->
  if status == google.maps.DirectionsStatus.OK
   directionsDisplay.setDirections response
   route = response.routes[0]
   summaryPanel = document.getElementById('directions_panel')
   summaryPanel.innerHTML = ''
   routeSegment = 0
   for leg in route.legs
   	routeSegment++
   	summaryPanel.innerHTML += '<b>Route Segment: ' + routeSegment + '</b><br>'
    summaryPanel.innerHTML += leg.start_address + ' to '
    summaryPanel.innerHTML += leg.end_address + '<br>'
    summaryPanel.innerHTML += leg.distance.text + '<br><br>'

changeRota = ->
 if( typeof $('#rot_rot_id').val() != "undefined")
  $.get  "/rots/" + $('#rot_rot_id').val() + ".json", ( data ) ->
   calculaPontos(data.origem, data.destino, data.ponto_passagems);

changeVeiculo = ->
 if( typeof $('#veiculo_veiculo_id').val() != "undefined" && typeof $('#viagem').val() != "undefined")
  $.get "/veiculos/" + $('#veiculo_veiculo_id').val() + "/viagens.json", ( data ) ->
   $('#viagem').empty()
   data.forEach (viagem) ->
    $('#viagem').append $('<option>', {value: viagem.id, text : viagem.id })
    changeViagem()

changeViagem =->
 $.get "/viagems/" + $('#viagem').val() + ".json", (viagem) ->
  calculaPontos(viagem.origem, viagem.destino, viagem.ponto_passagems)

getInit = ->
 $.get "/viagens/"+ $('#viagem').val() + "/itinerario_realizados.json", (itinerarios) ->
  itinerarios.forEach (itinerario) ->
   console.log itinerario
   marker = new google.maps.Marker({position: new google.maps.LatLng(itinerario.latitude, itinerario.longitude), map: map, title:"Hello World!"})
  
$ ->
 $('#rot_rot_id').on 'change', (e)->
  changeRota()
 changeRota()
 $('#veiculo_veiculo_id').on 'change', (e)->
  changeVeiculo()
 changeVeiculo()
 $('#viagem').on 'change',(e)->
  changeViagem()
 setInterval getInit, 10000


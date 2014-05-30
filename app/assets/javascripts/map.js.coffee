# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

directionsDisplay = null
directionsService = new google.maps.DirectionsService()
map = null

initialize = ->
 if document.getElementById('map-canvas') != null
  directionsDisplay = new google.maps.DirectionsRenderer()
  chicago = new google.maps.LatLng(41.850033, -87.6500523)
  mapOptions =
   zoom: 6
   center: chicago
  map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions)
  directionsDisplay.setMap(map)

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
   if document.getElementById('directions_panel') != null
    route = response.routes[0]
    summaryPanel = document.getElementById('directions_panel')
    summaryPanel.innerHTML = ''
    routeSegment = 0
    for leg in route.legs
   	 routeSegment++
   	 summaryPanel.innerHTML += '<b>Segmento: ' + routeSegment + '</b><br>'
     summaryPanel.innerHTML += leg.start_address + ' para '
     summaryPanel.innerHTML += leg.end_address + '<br>'
     summaryPanel.innerHTML += leg.distance.text + '<br><br>'

createRota = ->
 if( typeof $('#rot_origem').val() != "undefined" && typeof $('#rot_origem').val() != "undefined")
  origem = $('#rot_origem').val()
  destino = $('#rot_destino').val()
  pontosPassagem = []
  $('.fields-for-passagems-list :input[type="text"]').map (way)->
   pontosPassagem.push {ponto_passagems_ponto_nome: $(this).val()}
  calculaPontos(origem, destino, pontosPassagem)

changeRota = ->
 if( typeof $('#rot_rot_id').val() != "undefined")
  $.get  "/rots/" + $('#rot_rot_id').val() + ".json", ( data ) ->
   calculaPontos(data.origem, data.destino, data.ponto_passagems);

changeRotaViagem = ->
 if( typeof $('#viagem_rot_id').val() != "undefined")
  $.get  "/rots/" + $('#viagem_rot_id').val() + ".json", ( data ) ->
   calculaPontos(data.origem, data.destino, data.ponto_passagems);

changeVeiculo = ->
 if( typeof $('#veiculo_veiculo_id').val() != "undefined" && typeof $('#viagem_viagem_id').val() != "undefined")
  $.get "/veiculos/" + $('#veiculo_veiculo_id').val() + "/viagens.json", ( data ) ->
   $('#viagem_viagem_id').empty()
   data.forEach (viagem) ->
    $('#viagem_viagem_id').append $('<option>', {value: viagem.id, text : viagem.nome })
    changeViagem()

changeViagem =->
 $.get "/viagems/" + $('#viagem_viagem_id').val() + ".json", (viagem) ->
  calculaPontos(viagem.origem, viagem.destino, viagem.ponto_passagems)

getInit = ->
 if( typeof $('#viagem_viagem_id').val() != "undefined" && typeof $('#viagem_viagem_id').val() != "undefined")
  $.get "/viagens/"+ $('#viagem_viagem_id').val() + "/itinerario_realizados.json", (itinerarios) ->
   itinerarios.forEach (itinerario) ->
    marker = new google.maps.Marker({position: new google.maps.LatLng(itinerario.latitude, itinerario.longitude), map: map, title:"Hello World!"})

createPontos = ->
  $('.pontos').on 'change', (e)->
   createRota()

optionsNumerous =
 'passagems-list':
  'add': (form) ->
   createPontos()

ready = ->
 $('#rot_rot_id').on 'change', (e)->
  changeRota()
 changeRota()
 $('#veiculo_veiculo_id').on 'change', (e)->
  changeVeiculo()
 changeVeiculo()
 $('#viagem_viagem_id').on 'change',(e)->
  changeViagem()
 $('#viagem_rot_id').on 'change', (e)->
  changeRotaViagem()
 changeRotaViagem()
 $('#rot_origem_id').on 'change', (e)->
  createRota()
 createRota()
 $('#rot_destino_id').on 'change', (e)->
  createRota()
 $('#rot_destino_id').on 'change', (e)->
  createRota()
 setInterval getInit, 10000
 createPontos()
 initialize()
 Numerous.init optionsNumerous

$(document).ready(ready)
$(document).on('page:load', ready)

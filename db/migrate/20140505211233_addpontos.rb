class Addpontos < ActiveRecord::Migration
  def change
      Ponto.create nome: 'florianopolis, sc'
      Ponto.create nome: 'lages, sc'
      Ponto.create nome: 'chapeco, sc'
      Ponto.create nome: 'vacaria, rs'
      Ponto.create nome: 'criciuma, QBC'
      Ponto.create nome: 'lages, ONT'
      Ponto.create nome: 'porto alegre, rs'
      Ponto.create nome: 'torres'
      Ponto.create nome: 'urubici'
      Ponto.create nome: 'Calgary'
  end
end

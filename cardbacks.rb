require 'squib'

Squib::Deck.new cards: 16 , width: '63.5 mm', height: '88.9 mm' do
  background color: 'white'
	svg file: 'cardback.svg', width: '63.5 mm', height: '88.9 mm'
  save_pdf dir: '.', prefix: 'cardback', margin: 150
end

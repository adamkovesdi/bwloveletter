require 'squib'

data = Squib.csv file: 'data.csv'

Squib::Deck.new cards: data['Title'].size, layout: 'loveletter.yml', width: '63.5 mm', height: '88.9 mm' do

  background color: 'white'
  #rect stroke_width: 1, layout: 'cut'

  text str: data['Title'], layout: 'Title'
  text str: data['number'], layout: 'Number'
	svg file: data['icon'], layout: 'Icon'
  text str: data['Description'], layout: 'Description'
  svg file: data['picture'], layout: 'Picture'

  save_pdf dir: '.', prefix: 'loveletter_', margin: 150
end

# MIT License
# Copyright (c) 2016 Manoel de Albuquerque Lira Amaro
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

require 'rails_helper'

RSpec.describe 'Cards', type: :request do
  describe 'GET /cards' do
    it 'Should response the Serialized entities' do
      zombie_card    = create(:zombie_card)
      equipment_card = create(:equipment_card)

      get cards_path
      expect(response).to have_http_status(200)
      json_body = JSON.parse(response.body)
      expect(json_body).to be_a(Hash)
      expect(json_body['cards']).to be_an(Array)
      expect(json_body['cards'][0]).to eq('id' => zombie_card.id,
                                          'name' => zombie_card.name,
                                          'description' => zombie_card.description,
                                          'card_type' => zombie_card.card_type)

      expect(json_body['cards'][1]).to eq('id' => equipment_card.id,
                                          'name' => equipment_card.name,
                                          'description' => equipment_card.description,
                                          'card_type' => equipment_card.card_type)
    end
  end

  describe ''
end

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

RSpec.describe Game, type: :model do
  it 'creates a new Game model' do
    expect do
      Game.create(name: 'Game 01', is_playable: true, is_expansion: false)
    end.to change { Game.count }.by(1)
  end

  context 'Adding new cards to a game' do
    before(:each) do
      @game = Game.create(name: 'Zombicide Season 01', is_playable: true, is_expansion: false)
    end

    it 'Adds a new zombie card to game' do
      zombie_card = create(:zombie_card)
      @game.zombie_cards << zombie_card

      @game.reload

      expect(@game.zombie_cards.count).to be(1)
      expect(@game.equipment_cards.count).to be(0)
      expect(@game.extra_cards.count).to be(0)
      expect(@game.zombie_cards).to include(zombie_card)
    end

    it 'Adds a new equipment card to game' do
      card = create(:equipment_card)
      @game.equipment_cards << card

      @game.reload

      expect(@game.zombie_cards.count).to be(0)
      expect(@game.equipment_cards.count).to be(1)
      expect(@game.extra_cards.count).to be(0)
      expect(@game.equipment_cards).to include(card)
    end

    it 'Adds a new extra card to game' do
      card = create(:extra_card)
      @game.equipment_cards << card

      @game.reload

      expect(@game.zombie_cards.count).to be(0)
      expect(@game.equipment_cards.count).to be(0)
      expect(@game.extra_cards.count).to be(1)
      expect(@game.extra_cards).to include(card)
    end
  end
end

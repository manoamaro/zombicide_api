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

RSpec.describe Card, type: :model do
  it 'should create a new zombie card' do
    expect do
      Card.create(name: 'Card 01', description: 'Card 01 description', card_type: :zombie)
    end.to change { Card.zombie.count }.by(1)
  end

  it 'should create a new equipment card' do
    expect do
      Card.create(name: 'Card 01', description: 'Card 01 description', card_type: :equipment)
    end.to change { Card.equipment.count }.by(1)
  end

  it 'should create a new extra card' do
    expect do
      Card.create(name: 'Card 01', description: 'Card 01 description', card_type: :extra)
    end.to change { Card.extra.count }.by(1)
  end
end

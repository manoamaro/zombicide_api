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

RSpec.describe SurvivorsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/survivors').to route_to('survivors#index')
    end

    it 'routes to #show' do
      expect(get: '/survivors/1').to route_to('survivors#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/survivors').to route_to('survivors#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/survivors/1').to route_to('survivors#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/survivors/1').to route_to('survivors#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/survivors/1').to route_to('survivors#destroy', id: '1')
    end
  end
end

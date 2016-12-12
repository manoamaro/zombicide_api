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

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe GamesController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # Game. As you add validations to Game, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    {
      name: 'Game 01',
      is_playable: true,
      is_expansion: false
    }
  end

  let(:invalid_attributes) do
    {
      name: nil,
      is_playable: true,
      is_expansion: false
    }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GamesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'assigns all games as @games' do
      game = Game.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:games)).to eq([game])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested game as @game' do
      game = Game.create! valid_attributes
      get :show, params: { id: game.to_param }, session: valid_session
      expect(assigns(:game)).to eq(game)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Game' do
        expect do
          post :create, params: { game: valid_attributes }, session: valid_session
        end.to change(Game, :count).by(1)
      end

      it 'assigns a newly created game as @game' do
        post :create, params: { game: valid_attributes }, session: valid_session
        expect(assigns(:game)).to be_a(Game)
        expect(assigns(:game)).to be_persisted
      end

      it 'have http status 201' do
        post :create, params: { game: valid_attributes }, session: valid_session
        expect(response).to have_http_status(201)
      end
    end

    context 'with invalid params' do
      it 'assigns a newly created but unsaved game as @game' do
        post :create, params: { game: invalid_attributes }, session: valid_session
        expect(assigns(:game)).to be_a_new(Game)
      end

      it 'have http status 422' do
        post :create, params: { game: invalid_attributes }, session: valid_session
        expect(response).to have_http_status(422)
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        {
          name: 'Game 02'
        }
      end

      it 'updates the requested game' do
        game = Game.create! valid_attributes
        put :update, params: { id: game.to_param, game: new_attributes }, session: valid_session
        game.reload
        expect(game.name).to eq('Game 02')
      end

      it 'assigns the requested game as @game' do
        game = Game.create! valid_attributes
        put :update, params: { id: game.to_param, game: valid_attributes }, session: valid_session
        expect(assigns(:game)).to eq(game)
      end

      it 'have http status 200' do
        game = Game.create! valid_attributes
        put :update, params: { id: game.to_param, game: valid_attributes }, session: valid_session
        expect(response).to have_http_status(200)
      end
    end

    context 'with invalid params' do
      it 'assigns the game as @game' do
        game = Game.create! valid_attributes
        put :update, params: { id: game.to_param, game: invalid_attributes }, session: valid_session
        expect(assigns(:game)).to eq(game)
      end

      it 'has http status 422' do
        game = Game.create! valid_attributes
        put :update, params: { id: game.to_param, game: invalid_attributes }, session: valid_session
        expect(response).to have_http_status(422)
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested game' do
      game = Game.create! valid_attributes
      expect do
        delete :destroy, params: { id: game.to_param }, session: valid_session
      end.to change(Game, :count).by(-1)
    end

    it 'has http status 204' do
      game = Game.create! valid_attributes
      delete :destroy, params: { id: game.to_param }, session: valid_session
      expect(response).to have_http_status(204)
    end
  end
end

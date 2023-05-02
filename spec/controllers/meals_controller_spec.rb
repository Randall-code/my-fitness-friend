# frozen_string_literal: true

require 'rails_helper'

describe MealsController do
  describe 'GET new' do
    let(:meal) { instance_double(Meal, :meal) }

    before do
      allow(Meal).to receive(:new) { meal }
    end

    it 'creates an instance of meal' do
      get :new
      expect(assigns(:meal)).to eq meal
    end
  end

  describe 'POST create' do
    subject { post :create, params: }
    let(:params) do
      {
        meal_type: 'breakfast',
        notes: 'This is it'
      }

      it 'creates a meal' do
        subject
        meal = Meal.first
        expect(Meal.count).to eq 1
        expect(mmeal.notes).to eq('This is it')
        expect(mmeal.meal_type).to eq('breakfast')
      end
    end
  end
end

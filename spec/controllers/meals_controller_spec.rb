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
    subject { post :create, params: params}
    let(:params) do
      { meal: 
        {
          meal_type: 'Breakfast',
          notes: 'This is it',
          meal_report_id: 1
        }
      }
    end
  
    context "when the meal is valid" do
      before do
        create(:meal_report)
      end
      it 'creates a meal' do
        post :create, params: params
        expect(Meal.count).to eq 1
        expect(assigns(:meal).notes).to eq('This is it')
        expect(assigns(:meal).meal_type).to eq('Breakfast')
      end

      it "redirects to the meal report index page" do
        expect(subject).to redirect_to(meal_reports_path)
      end
    end

    context "when the meal is not valid" do
      before do 
        allow(Meal).to receive(:create) {nil}
      end

      it "renders the new meal page" do
        subject
        expect(response).to render_template(:new)
      end
    end
  end
end

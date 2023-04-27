require 'rails_helper'

describe MealReportsController do
  describe 'GET index' do
    subject { get :index }

    let(:meal_report) { class_double(MealReport, :meal_report) }

    before do
      allow(MealReport).to receive(:all) { meal_report }
    end

    it 'assigns meal_reports' do
      subject
      expect(assigns(:meal_reports)).to eq meal_report
    end
  end
end

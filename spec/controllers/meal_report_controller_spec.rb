require "rails_helper"

describe MealReportController do
  describe "GET index" do
    subject { get :index }

    let!(:meal_report) { create(:meal_report) }

    it "assigns meal_reports" do
      expect(assigns(:meal_reports)).to [meal_reports]
    end

    it "queries all meal reports" do
      expect(MealReport).to have_received(:all)
    end
  end
end

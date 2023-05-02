require "rails_helper"

describe MealsController do
  describe "GET new" do
    let(:meal) { instance_double(Meal, :meal)}

    before do 
      allow(Meal).to receive(:new) {meal}
    end

    it "creates an instance of meal" do
      get :new
      expect(assigns(:meal)).to eq meal
    end
  end
end
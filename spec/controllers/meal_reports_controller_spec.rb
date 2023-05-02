# frozen_string_literal: true

require 'rails_helper'

describe MealReportsController do
  describe 'GET index' do
    let(:meal_report) { class_double(MealReport, :meal_report) }
    let(:date_range) { { report_date: start_date.beginning_of_week..start_date.end_of_week } }

    before do
      allow(MealReport).to receive(:where).with(date_range) { meal_report }
    end

    context 'when there is no start date param' do
      let(:start_date) { Date.today }
      it 'assigns meal_reports using todays date' do
        get :index
        expect(assigns(:meal_reports)).to eq meal_report
      end
    end

    context 'when there is a start date param' do
      let(:start_date) { Date.parse('2023-04-10') }
      it 'assigns meal_reports created in the week specified' do
        get :index, params: { start_date: '2023-04-10' }
        expect(assigns(:meal_reports)).to eq meal_report
      end
    end
  end
end

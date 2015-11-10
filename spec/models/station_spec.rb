require 'rails_helper'

RSpec.describe Station, type: :model do
  
	describe 'Attributes' do
		it { is_expected.to respond_to :name }
		it { is_expected.to respond_to :address }
		it { is_expected.to respond_to :latitude }
		it { is_expected.to respond_to :longitude }
		it { is_expected.to respond_to :abbreviation }
		it { is_expected.to respond_to :slug }
	end

	describe 'Database' do
		it { is_expected.to have_db_column :name }
		it { is_expected.to have_db_column :address }
		it { is_expected.to have_db_column :latitude }
		it { is_expected.to have_db_column :longitude }
		it { is_expected.to have_db_column :abbreviation }
		it { is_expected.to have_db_column :slug }
	end

end

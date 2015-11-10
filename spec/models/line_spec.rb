require 'rails_helper'

#NOTE: Yay, testing!

RSpec.describe Line, type: :model do
  
	describe 'Attributes' do
		it { is_expected.to respond_to :name }
		it { is_expected.to respond_to :number }
		it { is_expected.to respond_to :abbreviation }
		it { is_expected.to respond_to :color }
		it { is_expected.to respond_to :stations }
	end

	describe 'Database' do
		it { is_expected.to have_db_column :name }
		it { is_expected.to have_db_column :number }
		it { is_expected.to have_db_column :abbreviation }
		it { is_expected.to have_db_column :color }
		it { is_expected.to have_db_column :stations }
	end
  
end

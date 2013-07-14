require 'spec_helper'

describe 'Visitor' do # who is doing the action
	context 'visits the front page' do # action		
		it{should visit root_path} # the test itself
		it "displays content on page" do
			(1..3).each do |x|
				FactoryGirl.create(:product)
			end
			visit root_path
			page.should have_selector('table')
			page.all('tr').should have(3).items
			page.all('td').should have(9).items
		end
	end
end
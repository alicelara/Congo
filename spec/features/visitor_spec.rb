require 'spec_helper'

describe 'Visitor' do # who is doing the action
	context 'visits the front page' do # action		
		it{should visit root_path} # the test itself
		it "displays content on page" do
			(1..2).each do |x|
			FactoryGirl.create(:product)
			end
			product = FactoryGirl.create(:product)
			visit root_path
			page.should have_selector('table')
			page.all('tr').should have(3).items
			page.all('td').should have(9).items
			page.should have_content(product.name)
			page.should have_content(product.description)
			page.should have_content(product.price)
		end
	end

	context 'visits the product page' do
		visit root_path
		click_link("Show Product")
	end
end
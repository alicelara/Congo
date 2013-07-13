require 'spec_helper'

describe 'Visitor' do # who is doing the action
	context 'visits the front page' do # action		
		it{should visit root_path} # the test itself
		it "displays content on page" do
			visit root_path
			page.should have_selector('table')
		end
	end
end
require 'spec_helper'
include ApplicationHelper

describe "Home pages" do 
	subject { page }

	shared_examples_for "all home pages" do
		it { should have_seletor('h1',	text: heading) }
		it { should have_seletor('title', text: full_title(page_title)) }
	end

	describe "Home page" do
		before { visit root_path }
		let(:heading)	{'NC Vocals'}
		let(:page_title)	{''}
	end

	describe "Help page" do
		before { visit help_path }
		let(:heading)	{'Help'}
		let(:page_title)	{'Help'}
	end
	
	describe "About page" do
		before { visit about_path }
		let(:heading)	{'About'}
		let(:page_title)	{'About'}
	end

	describe "Help page" do
		before { visit contact_path }
		let(:heading)	{'Contact Us'}
		let(:page_title)	{'Contact'}
	end

	it "should have the right links on the layout" do
		visit root_path
		click_link "About"
		page.should have_selector 'title', text: full_title('About')
		click_link "Contact"
		page.should have_selector 'title', text: full_title('Contact')
		click_link "Help"
		page.should have_selector 'title', text: full_title('Help')
	end
end
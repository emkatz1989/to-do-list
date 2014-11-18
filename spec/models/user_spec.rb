require "rails_helper"

require 'shoulda/matchers'

describe User do
	it { should validate_uniqueness_of(:email) }

	it do 
		should allow_value('a@a.com').
		            for(:email)
    end

    it do
    	should !allow_value('bob').
    				for(:email)
    end

    it { should ensure_length_of(:email).is_at_most(255)}

    it { should ensure_length_of(:password).is_at_least(6) }

    it { should ensure_length_of(:password).is_at_most(20)}

    
    #add test for have_many assocaiton
	it { should have_many(:lists) }

end

	# it "has an email" do
	# 	user = FactoryGirl.create(:a_user)
	# 	expect(user.email).to_not be_nil
	# end

	# it "has a password" do
	# 	user = FactoryGirl.create(:a_user)
	# 	expect(user.password).to_not be_nil
	# end
	
	# it { should validate_presence_of(:email) }

	# it { should validate_presence_of (:password) }
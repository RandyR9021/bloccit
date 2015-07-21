# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  name                   :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  role                   :string
#  avatar                 :string
#  email_favorites        :boolean          default(TRUE)
#

require 'rails_helper'

	describe User do

		include TestFactories 

  describe "#favorited(post)" do
	
		before do 
			@user = authenticated_user
			@post = associated_post
		end 

		it "returns 'nil' if the user has not favorited the post" do
			expect(@user.favorited(@post)).to be_nil
		end 

		it "returns the appropriate favorite if it exists" do
			favorite = @user.favorites.where(post: @post ).create
			expect(@user.favorited(@post)).to eq(favorite)
		end 
	end 
end 

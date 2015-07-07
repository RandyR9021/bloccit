require 'rails_helper'

describe Vote do 
	describe "validations" do
		describe "value validations" do
			it "only allows -1 or 1 as values" do
				expect(up_vote.valid?).to eq(1)
				expect(down_vote.valid?).to eq(-1)
			end 
		end 
	end 
end

require 'spec_helper'

describe Assignment do

  let(:user) { FactoryGirl.create(:user) }
  before do
    # This code is not idiomatically correct.
    @assignment = Assignment.new(title: "Testing title", description: "description", user_id: user.id)
  end

  subject { @assignment }

  it { should respond_to(:title) }
  it { should respond_to(:description) }
  it { should respond_to(:user_id) }
  its(:user) { should eq user }
  
  it { should be_valid }

  describe "when user_id is not present" do
    before { @assignment.user_id = nil }
    it { should_not be_valid }
  end
end
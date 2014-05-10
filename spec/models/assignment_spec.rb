require 'spec_helper'

describe Assignment do

  let(:user) { FactoryGirl.create(:user) }
  before do
    # This code is not idiomatically correct.
    @assignment = Assignment.new(title: "Testing title", description: "description")
  end

  subject { @assignment }

  it { should respond_to(:title) }
  it { should respond_to(:description) }

  it { should be_valid }

end
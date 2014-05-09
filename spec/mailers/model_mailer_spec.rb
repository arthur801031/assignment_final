require "spec_helper"

describe ModelMailer do
  describe "new_record_notification" do
    let(:mail) { ModelMailer.new_record_notification('hi') }

    it "renders the headers" do
      mail.subject.should eq("Welcome to Assignment Tracker")
      mail.to.should eq(["yuanzhelee@gmail.com"])
      mail.from.should eq(["iliu3@wisc.edu"])
    end
  end

end

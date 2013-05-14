require 'spec_helper'

describe Bellow do
  describe ".notify" do
    it "will accept the example inputs without error" do
      lambda {
        Bellow.notify(PEOPLE, "McDonalds", "Hey guys I just ordered a Big Mac LOL")
      }.should_not raise_error
    end
  end
end
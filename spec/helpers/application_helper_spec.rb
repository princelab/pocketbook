require 'spec_helper'
describe ApplicationHelper do
  describe "shell_escape" do
    it "should allow valid whitelist characters in escaped strings" do
      test = "abciehthkdfoie_///*"
      test.shell_escape.should == test
    end

    it "should remove backticks and semicolons" do
      test = ";`rm -rf`"
      test.shell_escape.should == "rmrf"
    end

    it "should allow shell wildcard characters" do
      test = "foobar/*"
      test.shell_escape.should == test
    end

    it "should allow valid tranche hash characters" do
      test = "tQ/jD7djpa1NPhDkeDo5o3LttmlZV442+uI0fne4bp5YxaOjpAaVsDVoU7wurvv5C59UV8HLdBshyUxwXlae15JyoRQAAAAAAAAC4w=="
      test.shell_escape.should == test
    end

  end
end

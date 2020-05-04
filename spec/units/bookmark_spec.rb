require "./lib/bookmark"

describe Bookmark do 

  describe '#all' do
    it "returns @bookmarks array" do
      expect(subject.all).to include("https://www.facebook.com/") 
    end 
  end 
end 

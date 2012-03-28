# == Schema Information
#
# Table name: bookmarks
#
#  id         :integer         not null, primary key
#  url        :string(255)
#  name       :string(255)
#  date       :date
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Bookmarks do

  before(:each) do
    @attr = { :name => "Example User", :url => "www.sample.com" }
  end

  it "should create a new instance given valid attributes" do
    Bookmarks.create!(@attr)
  end

  it "should require a name" do
    no_name_bookmarks = Bookmarks.new(@attr.merge(:name => ""))
    no_name_bookmarks.should_not be_valid
  end
  
  it "should require a url" do
    blank_url = Bookmarks.new(@attr.merge(:url => ""))
    blank_url.should_not be_valid
  end
  
end

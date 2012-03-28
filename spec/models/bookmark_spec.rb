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

describe Bookmark do
  before(:each) do
    @attr = { :name => "Example User", :url => "www.sample.com" }
  end

  it "should create a new instance given valid attributes" do
    Bookmark.create!(@attr)
  end

  it "should require a name" do
    no_name_bookmarks = Bookmark.new(@attr.merge(:name => ""))
    no_name_bookmarks.should_not be_valid
  end
  
  it "should reject names that are too long" do
    long_name = "a" * 111
    long_name_bookmarks = Bookmark.new(@attr.merge(:name => long_name))
    long_name_bookmarks.should_not be_valid
  end
  
  it "should require a url" do
    blank_url = Bookmark.new(@attr.merge(:url => ""))
    blank_url.should_not be_valid
  end
  
    it "should reject urls that are too short" do
    short_url = "aaa"
    short_url_bookmarks = Bookmark.new(@attr.merge(:url => short_url))
    short_url_bookmarks.should_not be_valid
  end
  
end

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

class Bookmarks < ActiveRecord::Base
  attr_accessible :name, :url, :date
  
  	validates :url, 		:presence => true,
										:length   => { :minimum => 10 } 
										
	  validates :name,  	:presence => true,
	                  :length   => { :maximum => 100 }
end

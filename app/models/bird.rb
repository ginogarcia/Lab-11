class Bird < ActiveRecord::Base
  belongs_to :user
  
  attr_accessible :name
  
  validates :name, :presence => true
end


# == Schema Information
#
# Table name: birds
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#


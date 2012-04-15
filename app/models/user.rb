class User < ActiveRecord::Base
  has_many :birds
  
   attr_accessible :name, :email
  
  
  validates :name, :presence => true,
            :uniqueness => { :case_sensitive => false }
end

# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#


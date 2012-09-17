# == Schema Information
#
# Table name: links
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  url        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string(255)
#

class Link < ActiveRecord::Base
  attr_accessible :url, :title
  
  belongs_to :user
  has_many :comments
  has_many :votes
  has_many :stars
  
end

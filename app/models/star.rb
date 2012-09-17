# == Schema Information
#
# Table name: stars
#
#  id         :integer          not null, primary key
#  starred    :boolean
#  user_id    :integer
#  link_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Star < ActiveRecord::Base
  attr_accessible :starred, :user_id, :link_id
  
  belongs_to :user
  belongs_to :link
  
  validates :user_id, :uniqueness => { :scope => :link_id }

end

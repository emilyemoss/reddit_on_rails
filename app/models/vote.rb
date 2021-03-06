# == Schema Information
#
# Table name: votes
#
#  id         :integer          not null, primary key
#  up         :boolean
#  user_id    :integer
#  link_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Vote < ActiveRecord::Base
  attr_accessible :up, :user_id, :link_id
  
  belongs_to :user
  belongs_to :link
  
  validates :user_id, :uniqueness => { :scope => :link_id }

end

class Tag < ActiveRecord::Base
  has_many :problem_tags
  has_many :problems, :through => :problem_tags
end

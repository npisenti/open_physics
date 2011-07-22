class ProblemTag < ActiveRecord::Base
  belongs_to :tag
  belongs_to :problem
end

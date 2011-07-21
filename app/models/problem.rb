class Problem < ActiveRecord::Base
  versioned
  has_many :solutions
end

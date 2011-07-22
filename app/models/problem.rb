class Problem < ActiveRecord::Base
  versioned
  has_many :solutions
  has_many :problem_tags
  has_many :tags, :through => :problem_tags

  before_save :parse_tags



  private

  def parse_tags
    tags = []
    /!#\/([\w\/]*)/.match(self.statement)[1].split("/").each do |t|
      tags += [Tag.find_or_create_by_name(:name => t)]
    end
    self.tags = tags
  end
  
end

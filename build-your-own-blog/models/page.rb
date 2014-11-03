class Page < ActiveRecord::Base
  belongs_to :users
  
  # def tags
  #   self.article.scan(/#(\w+)/).flatten
  # end

end


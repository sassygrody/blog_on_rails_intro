class Article < ActiveRecord::Base
  validates :title, presence: true,
  					length: { minimum: 5 } #at least 5 chars

end

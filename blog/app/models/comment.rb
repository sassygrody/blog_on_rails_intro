class Comment < ActiveRecord::Base
  belongs_to :article   # created within the generate model... DAMN
end

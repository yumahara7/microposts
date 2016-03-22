class Favrelationship < ActiveRecord::Base
  belongs_to :user
  belongs_to :post, class_name: "Micropost"
end

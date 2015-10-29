class Member < ActiveRecord::Base
  belongs_to :document
  mount_uploader :member_id, ImageUploader
end

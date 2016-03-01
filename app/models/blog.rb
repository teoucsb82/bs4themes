class Blog < ActiveRecord::Base
  extend FriendlyId
  validates_presence_of :title, :body
  friendly_id :title, use: [:slugged, :finders]

  has_many :taggings
  has_many :tags, through: :taggings

  mount_uploader :picture, PictureUploader
end

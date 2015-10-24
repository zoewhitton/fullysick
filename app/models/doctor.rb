class Doctor < ActiveRecord::Base
  belongs_to :user

  mount_uploader :photo, DoctorPhotoUploader

  extend FriendlyId
  friendly_id :full_name, use: :slugged

  acts_as_taggable

  acts_as_votable

  def full_name
    [title, first_name, last_name, post_nominals].compact.join('')
  end
end

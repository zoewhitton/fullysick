class Patient < ActiveRecord::Base
  belongs_to :user

  validates :first_name, :last_name, :street_address, :phone, :suburb, :postcode, :state, presence: :true

  geocoded_by :full_street_address
  after_validation :geocode

  def full_name
    [first_name, last_name].compact.join('')
  end

  def full_street_address
    [street_address, suburb, state, postcode].compact.join(', ')
  end
end

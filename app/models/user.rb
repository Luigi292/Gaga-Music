class User < ApplicationRecord
  # Include default devise modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Validations
  validates :full_name, presence: true
  validates :phone_number, presence: true
  validates :user_type, presence: true  # Ensure user_type is either musician or band
  validates :instruments_played, presence: true, if: -> { user_type == 'musician' }
  validates :instrument_needed, presence: true, if: -> { user_type == 'band' }

  # Enum for user types if needed
  enum user_type: { musician: 'musician', band: 'band' }
end

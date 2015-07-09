class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :status

  before_create :create_reference

  extend FriendlyId
  friendly_id :reference

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+[^\.]\.{1}[^\.][a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :name, :subject, presence: true, length: {minimum: 3, maximum: 80}
  validates :body, presence: true


  private

  def create_reference
    self.reference = "#{letters}-#{hex}-#{letters}-#{hex}-#{letters}"
    # self.status.status = 'Waiting for Staff Response'
  end

  def letters
    ('a'..'z').to_a.shuffle[0,3].join
  end

  def hex
    SecureRandom.hex(1)
  end

end

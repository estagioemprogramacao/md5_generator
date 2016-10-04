class KeyPair < ApplicationRecord
  #
  # Validations
  #
  validates_presence_of :key

  #
  # Callbacks
  #
  before_create :set_secret_key

  def self.get_active
    KeyPair.where(active: true).first
  end

  def self.inactivate_all
    KeyPair.update_all(active: false)
  end

  #
  # Private methods
  #
  private

  def set_secret_key
    self.secret_key = Digest::MD5.hexdigest(self.key)
  end
end

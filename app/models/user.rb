require "digest/sha2"

class User < ActiveRecord::Base
  validates :name, :uniqueness => true

  validates :password, :confirmation => true
  attr_reader :password
  attr_accessor :password_confirmation

  validate :password_must_be_present
  after_destroy :ensure_an_admin_remains

  def User.encrypt_password(password, salt)
    Digest::SHA2.hexdigest(password + "wibble" + salt)
  end

  def User.authenticate(name, password)
    if user = User.find_by_name(name)
      if user.hashed_password == encrypt_password(password, user.salt)
        user
      end
    end
  end

  def password=(password)
    @password = password
    if password.present?
      generate_salt
      self.hashed_password= self.class.encrypt_password(password, self.salt)
    end
  end

  private
    def generate_salt
      self.salt = self.object_id.to_s + rand.to_s
    end

    def password_must_be_present
      errors.add(:password, "Missing password") unless :hashed_password.present?
    end

    def ensure_an_admin_remains
      if User.count.zero?
        raise "Can't delete the last user."
      end
    end
end

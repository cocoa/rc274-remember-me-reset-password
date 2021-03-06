class User < ActiveRecord::Base

  has_secure_password

  attr_accessible :email, :password, :password_confirmation

  validates :email, :presence => true, :uniqueness => {:case_sensitive => false}
  validates :password, :presence => true, :on => :create

  before_create { generate_token(:auth_token) }

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end

  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.now
    save!
    UserMailer.password_reset(self).deliver
  end


end

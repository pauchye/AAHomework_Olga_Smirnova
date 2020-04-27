class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates :password_digest, presence: { message: 'Password cannot be blank'}
    validates :session_token, presence: true, uniqueness: true 
    validates :password, length: {minimum: 6, allow_nil: true}

    attr_reader :password

    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)
        return user if user && BCrypt::Password.new(user.password_digest).is_password?(password)
    end

    def self.generate_session_token
        SecureRandom::urlsafe_base64
    end

    def reset_session_token!
        self.session_token = self.class.generate_session_token
        self.save
        self.session_token
    end

    def ensure_session_token
        self.session_token ||= User.generate_session_token
    end

    def password=(arg)
        @password = arg
        self.password_digest = BCrypt::Password.create(arg)
    end

end

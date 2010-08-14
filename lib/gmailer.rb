require 'mail'

class Gmailer
  def initialize(username, password)
    @username = username
    @password = password
  end

  def deliver(email)
    mail = Mail.new
    mail.from = "#{@username}@gmail.com"
    mail.to = email[:to]
    mail.subject = email[:subject]
    mail.body = email[:body]

    mail.delivery_method :smtp, {
      :address              => "smtp.gmail.com",
      :port                 => 587,
      :domain               => 'gmail.com',
      :user_name            => "#{@username}@gmail.com",
      :password             => @password,
      :authentication       => 'plain',
      :enable_starttls_auto => true
    }

    mail.deliver!
  end
end

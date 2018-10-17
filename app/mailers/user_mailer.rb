class UserMailer < ApplicationMailer
	default from: 'havingcows@gmail.com'

  def contact_form(name, email, message)
  	@message = message
    mail(from: email,
         to: 'your-email@example.com',
         subject: "A new message from #{name}")
  end

end

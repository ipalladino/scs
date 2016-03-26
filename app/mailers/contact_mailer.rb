class ContactMailer < ActionMailer::Base
  default from: "info@simplecustomsolutions.com"

  def contact_email(message)
    @message = message

    mail(
      to: ["ipalladino@gmail.com","clee.christine@gmail.com"],
      subject: 'Contact from Simple Custom Solutions'
    )
  end
end

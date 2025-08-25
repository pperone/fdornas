class ContactForm < MailForm::Base
  attribute :name, validate: true
  attribute :message, validate: true
  attribute :email
  attribute :nickname, captcha: true

  validate :email_address?

  def headers
    {
      subject: 'Contato - Formulário',
      to: 'fdornas@gmail.com',
      from: %("#{name}" <#{email}>)
    }
  end

  def email_address?
    email =~ URI::MailTo::EMAIL_REGEXP
  end
end

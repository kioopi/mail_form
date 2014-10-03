module MailForm
  class Railtie < Rails::Railtie
    initializer 'mail_form.raise_on_spam' do
      MailForm.raise_on_spam = Rails.env.development?
    end
  end
end

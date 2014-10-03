module MailForm
  autoload :Base,      'mail_form/base'
  autoload :Delivery,  'mail_form/delivery'
  autoload :Notifier,  'mail_form/notifier'
  autoload :Shim,      'mail_form/shim'

  def self.raise_on_spam?
    @@raise_on_spam ||= false
  end

  def self.raise_on_spam=(value)
    @@raise_on_spam = value
  end
end

require 'mail_form/railtie' if defined?(Rails)

require "mailfactory"

mail_builder = MailFactory.new.tap do |m|
  m.to = 'yunlei@cs'
  m.from = 'yunlei@appfolio'
  m.subject = 'hello'
  m.text = 'hello world'
end

puts mail_builder.to_s

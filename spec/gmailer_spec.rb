require 'gmailer'

describe Gmailer do

  it 'should send email' do
    gmailer = Gmailer.new('username', 'password')
    gmailer.deliver(
      :to => ['gmailer@mailinator.com'],
      :subject => 'Works fine!',
      :body => "Gmailer test\n\n--[]s"
    ).should be_true
  end

end

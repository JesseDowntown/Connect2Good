class Notifier < ActionMailer::Base
  default from: "connect2good.mailer@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.offer_received.subject
  #
  def offer_received(offer)

    @offer = offer

    mail( to: "connect2good.mailer@gmail.com",
          subject: "Connect2Good Offer!")
  end

  def offer_sent(offer)

    @offer = offer

    mail( to: "connect2good.mailer@gmail.com",
          subject: "Connect2Good Offer!")
  end
end
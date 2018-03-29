Spree::OrderMailer.class_eval do
  def confirm_email(order, resend = false)
    @order = order.respond_to?(:id) ? order : Spree::Order.find(order)
    subject = (resend ? "[#{Spree.t(:resend).upcase}] " : '')
    subject += "BRUTAL x PUSSY - zamówienie ##{@order.number}"
    mail(to: "#{@order.email}, brutalxpuss@gmail.com", from: from_address, subject: subject)
  end
end

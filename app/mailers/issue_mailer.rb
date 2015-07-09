class IssueMailer < ApplicationMailer
  default from: 'support@issusor.com'

  def information_email(ticket)
    @ticket = ticket
    mail(to: @ticket.email, subject: "#{@ticket.subject} - your issue waiting for staff response")
  end
end

class TicketsController < ApplicationController
  def new
    @ticket = Ticket.new
    pp @ticket.new_record?
    @department = %w(tech financial domain client managers)
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.status_id = 1
    if @ticket.save
      IssueMailer.information_email(@ticket).deliver_now
      redirect_to(@ticket)
    else
      render(new_ticket_path)
    end
  end

  def show
    @ticket = Ticket.friendly.find(params[:id])
    @status = @ticket.status
  end





  private

  def ticket_params
    params.require(:ticket).permit(:name, :email, :department, :subject, :body)
  end

end

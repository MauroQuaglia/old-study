require 'date'
require_relative 'ticket_shop'

ticket_type = ARGV[0]
ticket = TicketShop.new.get(ticket_type)
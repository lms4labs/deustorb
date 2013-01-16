require 'deustorb/reservations/waiting'
require 'deustorb/reservations/confirmed'
require 'deustorb/reservations/waiting_instances'
require 'deustorb/reservations/waiting_confirmation'

module Deustorb
  module Reservation
    WAITING = 'waiting'
    CONFIRMED = 'confirmed'
    WAITING_INSTANCES = 'waiting_instances'
    WAITING_CONFIRMATION = 'waiting_confirmation'
  end
end
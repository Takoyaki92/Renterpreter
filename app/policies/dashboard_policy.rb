class DashboardPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      raise
      scope.all
      # this returns Booking.all
    end

  end
end

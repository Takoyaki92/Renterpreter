class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # raise
      scope.all
    end
  end
end

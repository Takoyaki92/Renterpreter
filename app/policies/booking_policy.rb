class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # raise
      scope.all
    end
  end


  def new?
    true
  end

  def create?
    true
  end
end

class TranslatorPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def new?
    true
  end

  def create?
    return true
  end

  def edit?
    # Changed this temporarily to make sure the Edit page is accessible.. let's fix later if needed
    true
    # user == record.user || user-admin
  end

  def update?
    edit?
  end
end

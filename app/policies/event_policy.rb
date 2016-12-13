class EventPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end
  def create?
    return true
  end
  def show?
    return true
  end

  def edit?
    record.organization.user == user
    raise
  end
end

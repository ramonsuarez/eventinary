class EventPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    return create?
  end

  def create?
    return true
  end
  def show?
    return true
  end

  def edit?
    return update?
  end

  def update?
    record.organization.user == user
  end

  def destroy?
    record.organization.user == user
  end

end

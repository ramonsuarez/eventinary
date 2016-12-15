class Admin::EventPolicy < ApplicationPolicy
  def show?
    record[1].organization.user == user
  end
end

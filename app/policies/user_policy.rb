class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def dashboard_home?
    true
  end


  def create?
  record.user == user
  end

  def show?
    true
  end

  def new?
  return true
  end

  def update?
  record.user == user
  end

  def edit?
  record.user == user
  end
end

class PhonePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all # If users can see all restaurants
      # scope.where(user: user) # If users can only see their restaurants
      # scope.where("name LIKE 't%'") # If users can only see restaurants starting with `t`
      # ...
    end
  end

  def show?
    true
  end

  def new?
    create?
  end

  def create?
    user.admin
  end

  def edit?
    update?
  end

  def update?
    user.admin
  end

  def destroy?
    user.admin
  end

end

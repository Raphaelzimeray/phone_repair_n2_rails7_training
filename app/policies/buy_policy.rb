class BuyPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user.admin? ? scope.all : scope.where(user: user) # si c'est admin il a accès a tout, sinon il n'a accès que au sien
    end
  end

  def show?
    record.user == user || user.admin #soit c'est l'utilisateur connecté, soit l'admin
  end

  def create?
    true
  end

end

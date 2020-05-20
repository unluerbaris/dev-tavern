class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

      # def update?
      #   ecord.user == user
      #   # - record: the ptoject passed to the `authorize` method in controller
      #   # - user:   the `current_user` signed in with Devise.
      # end

      # def destroy?
      #   record.user == user
      # end
end

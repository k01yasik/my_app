class Ability
  include CanCan::Ability

  def initialize(admin)
    admin ||= Admin.new # guest user (not logged in)
       if admin.admin?
         can [:create, :edit, :update], :all
         cannot :destroy, :all

      else
         can :manage, :all
    end

  end
end

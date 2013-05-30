class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= Admin.new # guest user (not logged in)
       if user.admin?
         can :manage, :all

       else
         can [:create, :edit, :update], :all
         cannot :destroy, :all
    end

  end
end

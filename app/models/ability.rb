class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role == "admin"
      can :create, :manage, :all
    elsif user.role == "user"
      can :create, [Order, Client], user_id: user.id
      can :show, [Order, Client], user_id: user.id
    else
      cannot :read, :all
    end
  end
end

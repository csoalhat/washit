class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role == "admin"
      can :manage, :all
    elsif user.role == "customer"
      can :show, Order, user_id: user.id
      can :create, Order, user_id: user.id
      can :show, Client, user_id: user.id
      can :update, Client, user_id: user.id
    elsif user.role == "provider"
      can :show, Order, user_id: user.id
      can :update, Order, user_id: user.id
      can :show, Client, user_id: user.id
    else
      cannot :read, :all
    end
  end
end

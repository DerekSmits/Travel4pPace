# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.has_role? :admin
      can :manage, :all
    elseif user.has_role? :moderator
      can :manage, Post
      can :manage, User
    elseif user.has_role? :user
      can :manage, Post
    elseif user.has_role? :reader
      can :read, Post
    end
  end
end

# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.has_role? :admin
      can :manage, :all
    elsif user.has_role? :moderator
      can :manage, Post
      can :manage, User
    elsif user.has_role? :user
      can :manage, Post
    elsif user.has_role? :reader
      can :read, Post
    end
  end
end

# /app/models/ability.rb
 
class Ability
  include CanCan::Ability
 
  def initialize(user)
    if user
      if user.kind == 'collaborator'
        can :access, :rails_admin
        can :dashboard
        can :read, Client #, user_id: user.id
        can :read, Department
        can :read, Member
        can :read, Project
        can :read, Address#, user_id: user.id
        can :read, User, id: user.id
      elsif user.kind == 'manager'
        can :manage, :all
      end
    end
  end
end
class Ability
  include CanCan::Ability

  def initialize(user)


    can :access, :rails_admin
    can :dashboard
      if user.kind == :CST
        can :manage, :all

      elsif user.kind  == :President

        can :manage, Project
        can :manage, ProjectPhase
        can :manage, EntryCourier
        can :manage, ReleaseCourier
        can :manage, Event
      elsif user.kind == :ET1

        can :manage, Project
        can :manage, ProjectPhase
        can :manage, ArchiveProject
        can :manage, Event
      elsif user.kind  == :EJ1

          can :manage, Project
          can :manage, ProjectPhase
          can :manage, ArchiveProject
          can :manage, Event
      elsif user.kind  == :ET2

          can :manage, Project
          can :manage, ProjectPhase
          can :manage, ArchiveProject
          can :manage, Event
      elsif user.kind  == :EJ2

         can :manage, Project
         can :manage, ProjectPhase
         can :manage, ArchiveProject
         can :manage, Event
      elsif user.kind  == :Assistante_PR

         can :manage, EntryCourier
         can :manage, ReleaseCourier
         can :manage, ArchiveEntryCourier
         can :manage, ArchiveReleaseCourier
         can :manage, Event
      elsif user.kind  == :Assistante_CST

         can :manage, EntryCourier
         can :manage, ReleaseCourier
         can :manage, ArchiveEntryCourier
         can :manage, ArchiveReleaseCourier
         can :manage, Event
      end


  end
end



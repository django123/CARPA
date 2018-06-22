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

      elsif user.kind == :ET1

        can :manage, Project
        can :manage, ProjectPhase
        can :manage, ArchiveProject

      elsif user.kind  == :EJ1

          can :manage, Project
          can :manage, ProjectPhase
          can :manage, ArchiveProject

      elsif user.kind  == :ET2

          can :manage, Project
          can :manage, ProjectPhase
          can :manage, ArchiveProject

      elsif user.kind  == :EJ2

         can :manage, Project
         can :manage, ProjectPhase
         can :manage, ArchiveProject

      elsif user.kind  == :Assistante_PR

         can :manage, EntryCourier
         can :manage, ReleaseCourier
         can :manage, ArchiveEntryCourier
         can :manage, ArchiveReleaseCourier

      elsif user.kind  == :Assistante_CST

         can :manage, EntryCourier
         can :manage, ReleaseCourier
         can :manage, ArchiveEntryCourier
         can :manage, ArchiveReleaseCourier
      end


  end
end



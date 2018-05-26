class Ability
  include CanCan::Ability

  def initialize(user)

    if user
      if user.kind == :CST
        can :access, :rails_admin
        can :dashboard
        can :manage, :all

      elsif user.kind  == :President
        can :access, :rails_admin
        can :dashboard
        can :manage, Project
        can :manage, ProjectPhase
        can :manage, EntryCourier
        can :manage, ReleaseCourier

      elsif user.kind == :ET1
        can :access, :rails_admin
        can :dashboard
        can :manage, Project
        can :manage, ProjectPhase
        can :manage, ArchiveProject

      elsif user.kind  == :EJ1
          can :access, :rails_admin
          can :dashboard
          can :manage, Project
          can :manage, ProjectPhase
          can :manage, ArchiveProject

      elsif user.kind  == :ET2
          can :access, :rails_admin
          can :dashboard
          can :manage, Project
          can :manage, ProjectPhase
          can :manage, ArchiveProject

      elsif user.kind  == :EJ2
         can :access, :rails_admin
         can :dashboard
         can :manage, Project
         can :manage, ProjectPhase
         can :manage, ArchiveProject

      elsif user.kind  == :Assistante_PR
         can :access, :rails_admin
         can :dashboard
         can :manage, EntryCourier
         can :manage, ReleaseCourier
         can :manage, ArchiveEntryCourier
         can :manage, ArchiveReleaseCourier

      elsif user.kind  == :Assistante_CST
         can :access, :rails_admin
         can :dashboard
         can :manage, EntryCourier
         can :manage, ReleaseCourier
         can :manage, ArchiveEntryCourier
         can :manage, ArchiveReleaseCourier
      end

    end


  end
end


=begin
    user ||= User.new

    alias_action :create, :read, :update, :destroy, to: :crud

    can :read, [Project, ReleaseCourier,Courier, ArchiveProject, ArchiveCouriersDatatable, ArchiveReleaseCourier]


    #pour le président
    if user.skin == :President
      can [:crud], Project
      can [:crud], ArchiveCouriersDatatable
      can [:crud],ArchiveProject
      can [:crud], ArchiveReleaseCourier
    end
    #pour le CST
    if user.skin == :CST
      #can :access, :rails_admin
      #can :dashboard
      #can :manage, :all
      can [:crud], Project
      can [:crud], ArchiveCouriersDatatable
      can [:crud],ArchiveProject
      can [:crud], ArchiveReleaseCourier
    end
    #pour l'ET1
    if user.skin == :ET1
      can [:crud], Project
      can [:crud], ArchiveCouriersDatatable
      can [:crud],ArchiveProject
      can [:crud], ArchiveReleaseCourier
    end
    #pour l'ET2
    if user.skin == :ET2
      can [:crud], Project
      can [:crud], ArchiveCouriersDatatable
      can [:crud],ArchiveProject
      can [:crud], ArchiveReleaseCourier
    end
    #pour l'EJ1
    if user.skin == :EJ1
      can [:crud], Project
      can [:crud], ArchiveCouriersDatatable
      can [:crud],ArchiveProject
      can [:crud], ArchiveReleaseCourier
    end
    #pour l'EJ2
    if user.skin == :EJ2
      can [:crud], Project
      can [:crud], ArchiveCouriersDatatable
      can [:crud],ArchiveProject
      can [:crud], ArchiveReleaseCourier
    end
    #pour l'assistante du présidente
    if user.skin == :Assistante_PR
      can [:crud], Courier
      can [:crud], ReleaseCourier
      can [:crud], ArchiveCouriersDatatable
      can [:crud],ArchiveProject
      can [:crud], ArchiveReleaseCourier
    end

    #pour l'assistante du CST
    if user.skin == :Assistante_CST
      can [:crud], Courier
      can [:crud], ReleaseCourier
      can [:crud], ArchiveCouriersDatatable
      can [:crud],ArchiveProject
      can [:crud], ArchiveReleaseCourier
    end

=end

class ProjectsDatatable < ApplicationDatatable
  delegate :edit_project_path, to: :@view

  private

  # Loop through memoized collection and build the columns.
  # If extracting from a view, be sure to add delegates
  # and to also clean up and inject each column into the column var.
  # Also, if you have multiple items (links) in a single column, you
  # will need to create a separate variable and join them accordingly
  # when pushing to the column array
  def data
    projects.map do |project|
      [].tap do |column|
        column << project.reference
        column << project.object_project
        column << project.projectName
        column << project.projectDescription
        column << project.focal_point
        column << project.project_situation
        column << project.public_partenership
        column << project.private_partenership
        column << project.amount
        column << project.contratDuration
      end
    end
  end

  # Returns the count of records.
  def count
    Project.count
  end

  def total_entries
    projects.total_count
    # will_paginate
    # projects.total_entries
  end

  def projects
    @projects ||= fetch_projects
  end

  def fetch_projects
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # projects = Project.page(page).per_page(per_page)
    projects = Project.order("#{sort_column} #{sort_direction}")
    projects = projects.page(page).per(per_page)
    projects = projects.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  # The columns needs to be the same list of searchable items and IN ORDER that they will appear in Data.
  def columns
    %w(reference duration amount public_partenership private_partenership project_situation
                                      focal_point object_project procedure
                                      contratDuration projectName secteurActivite
                                      projectDescription user_id)
  end
end
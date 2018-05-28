class PhaseProjectsDatatable

  delegate :params, :h, :link_to, to: :@view

  def initialize(view)
      @view = view
  end

  def as_json(options = {})
    {    sEcho: params[:sEcho].to_i,
         iToatalRecords: ProjectPhase.count,
         iToatalDisplayRecords: project_phases.total_entries,
         aaData: data
    }

  end

  private

  def data
    project_phases.map do |project_phase|
      [
          link_to(project_phase.phase, project_phase),
          h(project_phase.description),
          h(project_phase.document)
      ]
    end
  end

  def project_phases
      @project_phases ||= fetch_project_phases
  end

  def fetch_project_phases
      project_phases = ProjectPhase.order("{#sort_column} {#sort_direction}" )
      project_phases = ProjectPhase.page(page).per_page(per_page)
      if params[:sSearch].present?
        project_phases =  project_phases.where(" phase like :search or description like :search", search:
                                               "%#{params[:sSearch]}")
      end
      project_phases
  end

  def page
      params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
      params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i :10
  end

  def sort_column
      columns = %w[ phase description document]
      columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
      params[:sSortDir_0] == "desc" ?  "desc" : "asc"
  end
end
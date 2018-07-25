class ProjectPhase < ApplicationRecord
   validates_presence_of :phase
   include RailsAdminCharts
  extend Enumerize
  enumerize :phase, in:[:APMI,:AOR,:DPRE,:OF,:ADJ,:NTC,:SUIVI]
  belongs_to :project
   rails_admin do
     label " Phase des projets"
     edit do
       exclude_fields :document_updated_at
        field :phase do
          label "Phase du projet"
        end
       field :project do
         label " Projet"
       end
     end
     show do
       field :phase do
         label "Phase du projet"
       end
       field :description do
         label " Description"
       end
       field :project do
         label "Projet"
       end
       field :document do
         label "Fichier"
       end
     end
   end
  
mount_uploader :document, DocumentUploader
=begin
  has_attached_file :document, style: { medium: "300x300>", thumb: "100x100"}
  validates_attachment :document,
                        content_type: { content_type: [
                          "image/jpeg", "image/gif", "image/png", "application/pdf"
                          ]}
=end

end

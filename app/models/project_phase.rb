class ProjectPhase < ApplicationRecord

   include RailsAdminCharts
  extend Enumerize
  enumerize :phase, in:[:APMI,:AOR,:DPRE,:OF,:ADJ,:NTC,:SUIVI]
  belongs_to :project
  
mount_uploader :document, DocumentUploader
=begin
  has_attached_file :document, style: { medium: "300x300>", thumb: "100x100"}
  validates_attachment :document,
                        content_type: { content_type: [
                          "image/jpeg", "image/gif", "image/png", "application/pdf"
                          ]}
=end

end

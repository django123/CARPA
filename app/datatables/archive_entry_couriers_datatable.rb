class ArchiveEntryCouriersDatatable < ApplicationDatatable
=begin
  def data
    archive_entry_couriers.map do |archive_entry_courier|
     [].tap do |column|
       column << archive_entry_courier.name
       column << archive_entry_courier.description
       column << archive_entry_courier.reference
       column << archive_entry_courier.file
       column << archive_entry_courier.user_id
       column << archive_entry_courier.entry_courier_id
     end
    end
  end

  def count
    ArchiveEntryCourier.count
  end

  def total_entries
    archive_entry_couriers.total_count
  end
  def archive_entry_couriers
    @archive_entry_couriers ||= fetch_archive_entry_courier
  end

  def fetch_archive_entry_courier
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end
    archive_entry_couriers = ArchiveEntryCourier.page(page).per_page(per_page)
    archive_entry_couriers = archive_entry_couriers.where(search_string)
  end

  def columns
    %w(user_id  entry_courier_id  description  name  reference  file)
  end
=end
end
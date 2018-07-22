module EntryCouriersHelper
=begin
  def selected(area)
    @entry_courier.statut.nil? ? false : @entry_courier.statut.match(area)
  end
=end
end

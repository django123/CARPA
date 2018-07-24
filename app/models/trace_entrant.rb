class TraceEntrant < ApplicationRecord
  extend Enumerize
  enumerize  :division, in:[:Sécrétariat_CST, :Sécrétariat_Président, :RAF, :AC, :CM]
  belongs_to :entry_courier
  validates_presence_of  :division, :origine
end

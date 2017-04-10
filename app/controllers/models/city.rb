class City
  require File.expand_path('../concerns/document', __FILE__)
  include Document
  
#  seqid :id
  field :name, type: String
end
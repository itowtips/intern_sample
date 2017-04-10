module Document
  require File.expand_path('../fields/sequencer', __FILE__)
  extend ActiveSupport::Concern
  include Mongoid::Document
#  include Fields::Sequencer
  include Sequencer

  module ClassMethods
    def seqid(name = :id)
      sequence_field name

      if name == :id
        replace_field "_id", Integer
      else
        field name, type: Integer
      end
    end
  end
end

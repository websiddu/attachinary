module Attachinary
  class File
    include ::Mongoid::Document
    include ::Mongoid::Timestamps
    include FileMixin

    field :public_id, type: String
    field :format, type: String
    field :version, type: String
    field :resource_type, type: String
    field :bytes, type: Integer

    field :width, type: Integer
    field :height, type: Integer
    field :url, type: String
    field :secure_url, type: String
    field :next_cursor, type: String

    field :resource_type, type: String
    field :colors, type: Array

    embedded_in :attachinariable, polymorphic: true
  end
end




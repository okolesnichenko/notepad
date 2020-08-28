module Serializers
  module Articles
    class One
      include FastJsonapi::ObjectSerializer

      set_type :article

      attributes :name, :created_at, :updated_at
    end
  end
end
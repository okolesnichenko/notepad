module Serializers
  module Articles
    class One
      include FastJsonapi::ObjectSerializer

      set_type :article

      attributes :name
    end
  end
end
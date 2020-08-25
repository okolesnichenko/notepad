module Serializers
  module Articles
    class Many
      include FastJsonapi::ObjectSerializer

      set_type :article

      attributes :name
    end
  end
end
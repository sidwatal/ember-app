class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :dob, :deleted_at
end

class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :dob, :is_deleted
end

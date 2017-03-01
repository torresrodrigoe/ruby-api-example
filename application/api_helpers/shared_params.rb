class Api
  module SharedParams
    extend Grape::API::Helpers

    params :basic_search do
      optional :query, type: String
      optional :id, types: [Integer, Array[Integer]]
      optional :page, type: Integer, default: 1
      optional :per_page, type: Integer, default: 20
      optional :order, type: String
    end

    params :user_post do
      requires :first_name, type: String
      requires :last_name, type: String
      requires :email, type: String
      requires :password, type: String
      optional :born_on, type: String
    end

    params :user_put do
      requires :id, type: Integer
      requires :first_name, type: String
      requires :last_name, type: String
      requires :email, type: String
      requires :password, type: String
      optional :born_on, type: String
    end
  end
end

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
      optional :date_of_birth, type: String
    end


  end
end

class Api
  resource :users do

    desc 'User list.'
    params do
      includes :basic_search
    end
    get do
      users = SEQUEL_DB[:users].all
      {
        data: users
      }
    end

    desc 'Create a user.'
    params do
      includes :user_post
    end
    post do
      SEQUEL_DB[:users].insert(:first_name => params[:first_name], :last_name => params[:last_name], :email => params[:email], :password => params[:password], :born_on => params[:born_on], :created_at => DateTime.now)
    end

    desc 'Update a user.'
    params do
      includes :user_put
    end
    put do
      SEQUEL_DB[:users].where(:id=>params[:id]).update(:first_name => params[:first_name], :last_name => params[:last_name], :email => params[:email], :password => params[:password], :born_on => params[:born_on], :updated_at => DateTime.now)
    end
  end
end

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
        SEQUEL_DB[:users].insert(:first_name => 1, :last_name => 2, :email => 'torresrodr', :password => 'asdasd')
      end

  end
end

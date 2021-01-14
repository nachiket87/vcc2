# Mock eCommerce Page

### Deployed Version: https://vss2.herokuapp.com/

#### Required to run development mode:

- Ruby 2.7.2
- Rails 6.1.1
- Redis-server
- Dev caching enabled ( run rails dev:cache)
- Cloudinary Api key for image uploads

#### To Start Development Server

1. rails db:create
2. rails db:migrate
3. rails db:seed
4. rails dev:cache
5. redis-server
6. Open new Tab -> rails s

Open on [localhost:3000](localhost:3000)

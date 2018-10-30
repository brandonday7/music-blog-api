# MUSIC BLOG RAILS BACKEND

### Welcome to the Music Blog Backend! This application runs alongside the [MUSIC BLOG REACT FRONTEND](https://github.com/brandonday7/music-blog) to provide you with your very own music blog.

[Heroku example](http://brandonday-music-blog.herokuapp.com/) (Free dyno server may take a few minutes to boot up. Be patient!)

#### The backend is written in Ruby on Rails using Graphql-Ruby and Postgres.

#### In this application, a relational database is used to connect TRACKS and ARTISTS, and display them on the front end as components of individual POSTS!

#### Here's how to get set up:

1. Clone repo:

```
git clone git@github.com:brandonday7/music-blog-api.git
```

2. Install dependencies:

```
bundle install
```

3. Create environment variables:

```
In blog-api/config, create a file called application.yml
Copy and paste the following into it:

POSTGRES_HOST: "localhost"
POSTGRES_DB: "database_name_here"
POSTGRES_USER: "postgres_user_name_here"
POSTGRES_PASSWORD: "postgres_password_here"
POSTGRES_PORT: "5433"
```

4. Set up database (create, migrate, seed):

```
rails db:setup
```

5. Start server

```
rails s -p 3001
```

### Now it's time to set up your [front end](https://github.com/brandonday7/music-blog)!

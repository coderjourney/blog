require 'bundler/setup'
require 'hanami/setup'
require 'hanami/model'
require_relative '../lib/blog'
require_relative '../apps/web/application'

if ENV["HANAMI_ENV"] == "test"
  db_server = ENV["DATABASE_URL"].split("/")[0...-1].join("/")
  ENV["DATABASE_URL"] = "#{db_server}/blog_#{ENV["HANAMI_ENV"]}"
end

Hanami.configure do
  mount Web::Application, at: '/'

  model do
    ##
    # Database adapter
    #
    # Available options:
    #
    #  * SQL adapter
    #    adapter :sql, 'sqlite://db/blog_development.sqlite3'
    #    adapter :sql, 'postgres://localhost/blog_development'
    #    adapter :sql, 'mysql://localhost/blog_development'
    #
    adapter :sql, ENV["DATABASE_URL"]

    ##
    # Migrations
    #
    migrations 'db/migrations'
    schema     'db/schema.sql'
  end

  mailer do
    root 'lib/blog/mailers'

    # See http://hanamirb.org/guides/mailers/delivery
    delivery do
      development :test
      test        :test
      # production :smtp, address: ENV['SMTP_PORT'], port: 1025
    end
  end
end

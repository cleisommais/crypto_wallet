namespace :dev do
    desc 'Setup dev environment'
    task setup: :environment do
        puts `rails db:drop db:create db:migrate db:seed`
    end
end

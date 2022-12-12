require 'tty-spinner'

namespace :dev do
    desc 'Setup dev environment'
    task setup: :environment do
        if Rails.env.development?
            spinner = TTY::Spinner.new('[:spinner] Setup Loading ...')
            spinner.auto_spin
            `rails db:drop db:create db:migrate db:seed`
            spinner.success('(successful)')
        end
    end
end

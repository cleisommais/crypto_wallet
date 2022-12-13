# README

This README would normally document whatever steps are necessary to get the
application up and running.

## System dependencies

- Ruby 2.7
- Rails 5.2
- Bundler 2.1.2
- Rubocop 1.40.0

## Database creation

    rails db:create
    rails db:migrate

## How to run the test suite

    rails dev:setup
    rails server

## Development instructions

    rubocop -a
    RUBYOPT='-W:no-deprecated' rails g migration AddMiningTypesToCoins mining_type:references

## Deployment instructions

- Todo

## Prototype

- https://www.mockflow.com/

![Alt text](proto_img.png 'Prototype')

## Data-Model

- Model Coin (description:string acronym:string img_url:string mining_type:references)
- Model MiningType (description:string acronym:string)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MiningType.create!([
                     {
                       description: 'Proof of Work',
                       acronym: 'PoW'
                     },
                     {
                       description: 'Proof of Stake',
                       acronym: 'PoS'
                     },
                     {
                       description: 'Proof of Capacity',
                       acronym: 'PoC'
                     }
                   ])

Coin.create!([
               {
                 description: 'Bitcoin',
                 acronym: 'BTN',
                 img_url: 'https://png.pngtree.com/element_our/20190601/ourmid/pngtree-yellow-bitcoin-free-map-image_1369249.jpg',
                 mining_type: MiningType.find_by(acronym: 'PoW')
               },
               {
                 description: 'Ethereum',
                 acronym: 'ETH',
                 img_url: 'https://banner2.cleanpng.com/20190418/rgf/kisspng-ethereum-portable-network-graphics-computer-icons-developers-icon-request-icon-ethereum-5cb941c1cb12b1.1213852915556448658318.jpg',
                 mining_type: MiningType.all.sample
               },
               {
                 description: 'XRP',
                 acronym: 'XRP',
                 img_url: 'https://w7.pngwing.com/pngs/35/349/png-transparent-xrp-cryptocurrency-logo-icon.png',
                 mining_type: MiningType.all.sample
               },
               {
                 description: 'Cardano',
                 acronym: 'ADA',
                 img_url: 'https://cdn4.iconfinder.com/data/icons/crypto-currency-and-coin-2/256/cardano_ada-512.png',
                 mining_type: MiningType.all.sample
               }
             ])

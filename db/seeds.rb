# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'benchmark'

realtime = Benchmark.realtime do

  # Social
  Company::Social.destroy_all
  Company::Social.create(
    [
      {
        icon: 'fa-brands fa-youtube',
        name: 'Youtube',
        link: 'https://youtube.com/'
      },
      {
        icon: 'fa-brands fa-instagram',
        name: 'Instagram',
        link: 'https://instagram.com/'
      },
      {
        icon: 'fa-brands fa-tiktok',
        name: 'Tiktok',
        link: 'https://tiktok.com/'
      },
      {
        icon: 'fa-brands fa-twitch',
        name: 'Twitch',
        link: 'https://twitch.com/'
      },
      {
        icon: 'fa-brands fa-twitter',
        name: 'Twitter',
        link: 'https://twitter.com/'
      },
      {
        icon: 'fa-brands fa-facebook',
        name: 'Facebook',
        link: 'https://facebook.com/',
      },
      {
        icon: 'fa-brands fa-linkedin',
        name: 'Linkedin',
        link: 'https://linkedin.com/'
      },
      {
        icon: 'fa-brands fa-github',
        name: 'Github',
        link: 'https://github.com/'
      }
    ]
  )
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Doorkeeper::Application.create(name: "patogenapp", uid: "542ec9b0fc71ee7ed2dd0efd513358c64f4c0fb419a49112ed78b0cc838dc096", secret: "17c9f5e7ad7481c7d1fed79407d9783f7cd58b6ae14af50e5cce04882bdb11ba", redirect_uri: "urn:ietf:wg:oauth:2.0:oob")

Role.create([{ name: 'Admin' }, { name: 'MasterAdmin' }, { name: 'RegularUser' }, { name: 'IngAgronomo' }, { name: 'Agricultor' }])

masterAdmin = User.create([{
              name: 'van',
              phone: '555',
              email: 'vansteradmin@mail.com',
              password: '1234321',
              roles: [Role.find_by_name('MasterAdmin')]
              },
              {
              name: 'Agustin',
              phone: '555',
              email: 'aguscalderonq@gmail.com',
              password: 'patogenapp',
              roles: [Role.find_by_name('Admin')]
              },
              {
              name: 'Daniel',
              phone: '555',
              email: 'lopezdaniel1392@gmail.com',
              password: 'patogenapp',
              roles: [Role.find_by_name('Admin')]
              }]
              )
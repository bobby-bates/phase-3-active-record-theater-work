puts '🌱 Seeding database...'

Role.delete_all
Audition.delete_all

donnie = Role.create character_name: 'Donnie Darko'

Audition.create actor: 'Vince Vaughn', location: 'Chicago, IL', phone: 555_555_5555, hired: false, role: donnie
Audition.create actor: 'Mark Wahlberg', location: 'Boston, MA', phone: 555_555_5556, hired: false, role: donnie
Audition.create actor: 'Jason Schwartzman', location: 'Los Angeles, CA', phone: 555_555_5557, hired: false, role: donnie
Audition.create actor: 'Patrick Fugit', location: 'Salt Lake City, UT', phone: 555_555_5558, hired: false, role: donnie
Audition.create actor: 'Lucas Black', location: 'Speake, AL', phone: 555_555_5559, hired: false, role: donnie
Audition.create actor: 'Jake Gyllenhaal', location: 'Los Angeles, CA', phone: 555_555_5550, hired: true, role: donnie

puts '🌱 Seeding complete!'

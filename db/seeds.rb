# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



notes = Note.create([
		{ id: 0, 	name: 'A', 	description: 'A'  },
		{ id: 1, 	name: 'A#', description: 'A#/Bb' },
		{ id: 2, 	name: 'B', 	description: 'B'  },
		{ id: 3, 	name: 'C', 	description: 'C'  },
		{ id: 4, 	name: 'C#', description: 'C#/Db' },
		{ id: 5, 	name: 'D', 	description: 'D'  },
		{ id: 6, 	name: 'D#', description: 'D#/Eb' },
		{ id: 7, 	name: 'E', 	description: 'E'  },
		{ id: 8, 	name: 'F', 	description: 'F'  },
		{ id: 9, 	name: 'F#', description: 'F#/Gb' },
		{ id: 10, name: 'G', 	description: 'G'  },
		{ id: 11, name: 'G#', description: 'G#/Ab' }
	])
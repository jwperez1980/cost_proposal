# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Project.delete_all
Client.delete_all
State.delete_all
Part.delete_all
PartsForProposal.delete_all


State.create!(name: "Arkansas", short: 'AR')
State.create!(name: "Tennesee", short: "TN")

Client.create!(
    account_number: 1100990, 
    site: "Main campus", 
    institution: "St Vincent", 
    post_office_box: 9999, 
    street_address: "103 St Vincent Way", 
    city: "Little Rock", 
    zip: 72222, 
    zip_four: 1111, 
    phone: 5012223344, 
    email: "jdoc@stvincent.com", 
    state_id: 1)
    
Project.create!(project_name: "Build new system for St Vincent", client_id: 1)
    
Part.create!(part_number: "HSDICARB1.2", description: "SDI exchange carbon 1.2 ft3")		
Part.create!(part_number: "SDIMIXBED1.2", description: "SDI exchange mixbed 1.2 ft3")		
Part.create!(part_number: "T182120", description: "Minncare Quart")		
Part.create!(part_number: "T177036", description: ".2 Micron filter")		
Part.create!(part_number: "T170260", description: "10 inch 1UM Pretreatment filter")		
Part.create!(part_number: "LoopSani07", description: "Loop sanitization")		
Part.create!(part_number: "RecData01", description: "Record data - Water quality")		
Part.create!(part_number: "T131644", description: "Minncare Residual Test Strips")		
Part.create!(part_number: "T148387", description: ".2 Micron POU Filter (located at faucet)")

PartsForProposal.create!(
	quantity: 1, 
	frequency: 180, 
	quantity_per_visit: 1, 
	proposal_id: 1, 
	part_id: 1
)

PartsForProposal.create!(
	quantity: 4, 
	frequency: 180, 
	quantity_per_visit: 2, 
	proposal_id: 1, 
	part_id: 2
)

PartsForProposal.create!(
	quantity: 1, 
	frequency: 360, 
	quantity_per_visit: 1, 
	proposal_id: 1, 
	part_id: 3
)

PartsForProposal.create!(
	quantity: 2, 
	frequency: 180, 
	quantity_per_visit: 1, 
	proposal_id: 1, 
	part_id: 4
)

PartsForProposal.create!(
	quantity: 4, 
	frequency: 180, 
	quantity_per_visit: 2, 
	proposal_id: 1, 
	part_id: 5
)

PartsForProposal.create!(
	quantity: 2, 
	frequency: 180, 
	quantity_per_visit: 1, 
	proposal_id: 1, 
	part_id: 6
)

PartsForProposal.create!(
	quantity: 2, 
	frequency: 180, 
	quantity_per_visit: 1, 
	proposal_id: 1, 
	part_id: 7
)

PartsForProposal.create!(
	quantity: 1, 
	frequency: 360, 
	quantity_per_visit: 1, 
	proposal_id: 1, 
	part_id: 8
)

PartsForProposal.create!(
	quantity: 40, 
	frequency: 90, 
	quantity_per_visit: 8, 
	proposal_id: 1, 
	part_id: 9
)

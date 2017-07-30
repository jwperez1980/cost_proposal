# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Employee.delete_all
Project.delete_all
Client.delete_all
State.delete_all
Part.delete_all
PartsForProposal.delete_all
Proposal.delete_all

Employee.create!(
	last_name: "Limmer",
	first_name: "Edward", 
	nickname: "Ted",
	email: "ted@thewaterguys.com"
)

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
Project.create!(project_name: "Build new system for St Vincent Cardiology", client_id: 1)

Proposal.create!(
	po_number: "43546", 
	quote_number: 9999, 
	date_quoted: "July 7, 2017", 
	date_needed: "August 31, 2017", 
	ship_via: "X", 
	project_id: 1
)
 
Proposal.create!(
	po_number: "453111", 
	quote_number: 8888, 
	date_quoted: "July 27, 2017", 
	date_needed: "September 30, 2017", 
	ship_via: "X", 
	project_id: 2
)
    
Part.create!(part_number: "HSDICARB1.2", description: "SDI exchange carbon 1.2 ft3", cost: 220.00)		
Part.create!(part_number: "SDIMIXBED1.2", description: "SDI exchange mixbed 1.2 ft3", cost: 220.00)		
Part.create!(part_number: "T182120", description: "Minncare Quart", cost: 55.00)		
Part.create!(part_number: "T177036", description: ".2 Micron filter", cost: 64.00)		
Part.create!(part_number: "T170260", description: "10 inch 1UM Pretreatment filter", cost: 8.00)		
Part.create!(part_number: "LoopSani07", description: "Loop sanitization", cost: 700.00)		
Part.create!(part_number: "RecData01", description: "Record data - Water quality")		
Part.create!(part_number: "T131644", description: "Minncare Residual Test Strips", cost: 48.00)		
Part.create!(part_number: "T148387", description: ".2 Micron POU Filter (located at faucet)", cost: 80.00)
Part.create!(part_number: "ABC111", description: "Demo part ABC", cost: 20.00)		
Part.create!(part_number: "DEF123", description: "Demo part DEF", cost: 120.00)		
Part.create!(part_number: "GHI123", description: "Demo part GHI", cost: 220.00)		
Part.create!(part_number: "JKL123", description: "Demo part JKL", cost: 320.00)		

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


PartsForProposal.create!(
	quantity: 1, 
	frequency: 180, 
	quantity_per_visit: 1, 
	proposal_id: 2, 
	part_id: 10
)

PartsForProposal.create!(
	quantity: 4, 
	frequency: 180, 
	quantity_per_visit: 2, 
	proposal_id: 2, 
	part_id: 11
)

PartsForProposal.create!(
	quantity: 1, 
	frequency: 360, 
	quantity_per_visit: 1, 
	proposal_id: 2, 
	part_id: 12
)

PartsForProposal.create!(
	quantity: 2, 
	frequency: 180, 
	quantity_per_visit: 1, 
	proposal_id: 2, 
	part_id: 13
)
Letter.destroy_all
CategoryCompany.destroy_all
Category.destroy_all
Purpose.destroy_all
Company.destroy_all


reclamation = Purpose.create!(name: "Reclamation")
Purpose.create!(name: "Resiliation")
Purpose.create!(name: "Litige")
Purpose.create!(name: "Lettre de motivation")
Purpose.create!(name: "Contrat")

operateur = Category.create!(name: "Telephonie", purpose: reclamation)
Category.create!(name: "Fournisseur energie", purpose: reclamation)
Category.create!(name: "Colis", purpose: reclamation)
Category.create!(name: "Transport aerien", purpose: reclamation)
assurance = Category.create!(name: "Assurance", purpose: reclamation)
Category.create!(name: "Habitation", parent: assurance)
auto = Category.create!(name: "Auto", parent: assurance)
Category.create!(name: "Deces", parent: assurance)
Category.create!(name: "Animaux", parent: assurance)
bris_de_glace = Category.create!(name: "Bris de glace", parent: auto)

axa = Company.create!(name: "Axa")
mma = Company.create!(name: "Mma")
sfr = Company.create!(name: "Sfr")
Company.create!(name: "Orange")
Company.create!(name: "Air France")
Company.create!(name: "Easy jet")
Company.create!(name: "Edf")
Company.create!(name: "Direct energie")
Company.create!(name: "La poste")
Company.create!(name: "Chronopost")

assurance_axa = CategoryCompany.create!(category: bris_de_glace, company: axa)

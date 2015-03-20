
sealions = {lion_1: {name: "Harrylion", age:47, quirk: "Afraid of helicopters"},
            lion_2: {name: "Brendalion", age: 38, quirk:"Wears sunglasses in the shower"},
            lion_3: {name: "Charlottelion", age: 18, quirk: "Only dates sealions that have had run-ins with sharks"}}

sealions.each do |key, value|
  Sealion.create!(value)
end


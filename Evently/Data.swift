import Foundation

enum EventCategory: String, CaseIterable {
    case music = "Muzika"
    case artsAndTheater = "Menas ir Teatras"
    case sportsAndFitness = "Sportas ir Fitnesas"
    case foodAndDrink = "Maistas ir Gėrimai"
    case familyAndKids = "Šeima ir Vaikai"
    case educationAndLearning = "Švietimas ir Mokymas"
    case nightlife = "Naktinis Gyvenimas"
    case outdoorAndAdventure = "Gamta ir Nuotykiai"
    case communityAndCharity = "Bendruomenė ir Labdara"
    case techAndInnovation = "Technologijos ir Inovacijos"

    var systemImageName: String {
        switch self {
        case .music:
            return "music.note"
        case .artsAndTheater:
            return "paintbrush.fill"
        case .sportsAndFitness:
            return "sportscourt.fill"
        case .foodAndDrink:
            return "fork.knife"
        case .familyAndKids:
            return "person.2.fill"
        case .educationAndLearning:
            return "graduationcap.fill"
        case .nightlife:
            return "moon.stars.fill"
        case .outdoorAndAdventure:
            return "leaf.fill"
        case .communityAndCharity:
            return "heart.fill"
        case .techAndInnovation:
            return "lightbulb.fill"
        }
    }
}


class Event: Identifiable {
    let id: UUID
    var title: String
    var description: String
    var city: String
    var price: Double
    var images: [String]
    var date: Date
    var category: EventCategory
    
    var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "lt_LT")
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.string(from: date)
    }
    
    init(id: UUID = UUID(), title: String, description: String = "Nėra aprašymo", city: String, price: Double, images: [String], date: Date, category: EventCategory) {
        self.id = id
        self.title = title
        self.city = city
        self.price = price
        self.images = images
        self.date = date
        self.description = description
        self.category = category
    }
}

extension Event {
    static var defaultEvent: Event {
        Event(title: "Opium Pieva", city: "Vilnius", price: 2, images: ["opiumpieva"], date: Date(), category: .music)
    }
    
    static let sampleEvents: [Event] =
    [
        Event(title: "Opium Pieva", description: "Prisijunkite prie musų vieną dieną užkariaujančio muzikos festivalio Opium Pieva! Šiame nuostabiame gamtos parke vasaros diena taps muzikos magija su gyvų atlikėjų pasirodymais, kvapniais maisto stalais ir draugais, susibūrusiais prie malonios muzikos atšvaitų. Pasinerkite į ritmų ir grožio harmoniją su Opium Pieva!", city: "Vilnius", price: 0, images: ["opiumpieva", "rumsiskiudvaras", "stintapukis"], date: Date(), category: .music),
        
        Event(title: "Stintapūkis", description: "Prisijunkite prie mūsų, kai Nida švenčia vasaros pradžią su tradiciniu Stintapūkiu! Tai įsimintinas vakaras, pripildytas skonio, muzikos ir šokių ant Baltijos jūros pakrantės. Mėgaukitės skaniu kepiniu suveikę išradingus patiekalus, dalyvaukite šokiuose ir pramogose arba tiesiog atsipalaiduokite su draugais ir šeima, žvelgdami į nuostabų saulėlydį. Nidos Stintapūkis – tai daugiau nei tik šventė, tai ypatinga proga sujungti bendruomenę ir pasimėgauti vasaros džiaugsmu.", city: "Nida", price: 0, images: ["stintapukis"], date: Date(), category: .outdoorAndAdventure),
        
        Event(title: "Baidarių sezono atidarymas", description: "Vasaros pradžios šventė baidarių mėgėjams! Prisijunkite prie mus žavėsiančio baidarių atidarymo renginio, kuriame laukia nuotykių ir linksmybių ant vandens!", city: "Vilnius", price: 15.6, images: ["baidares"], date: Date(), category: .sportsAndFitness),
        
        Event(title: "Natalija Bunke: Turas", description: "Natalija Bunkė kviečia į grandiozines gastroles „Kosmosas\": koncertuos didžiosiose šalies arenose Viena ryškiausių Lietuvos popmuzikos žvaigždžių Natalija Bunkė paskelbė savo grandiozinių koncertinių gastrolių „Kosmosas“ datas.", city: "Kaunas", price: 39.99, images: ["natalijabunke"], date: Date(), category: .music),
        
        Event(title: "Rumšiškių dvaras", description: "Pasinerkite į istorijos ir grožio pasaulį, lankantis Rumšiškių dvare! Šiame įspūdingame istoriniame komplekse jūsų laukia įvairūs pramogų ir kultūros renginiai, suteikiantys galimybę pažinti Lietuvos praeitį ir mėgautis moderniomis kultūros išraiškomis. Leiskite sau pasinerti į dvaro istoriją, muzikos koncertus, meninius pasirodymus arba tiesiog pasimėgauti ramybe ir grožiu, kuriuos suteikia šis unikalus kultūrinis paveldas.", city: "Rumšiškės", price: 8.5, images: ["rumsiskiudvaras"], date: Date(), category: .outdoorAndAdventure)
    ]
}

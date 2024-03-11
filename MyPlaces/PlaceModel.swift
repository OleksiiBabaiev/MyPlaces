//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Oleksii on 3/7/24.
//
struct Place {
    
    var name: String
    var location: String
    var type: String
    var image: String
    
    static let restaurantNames = [
        "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
        "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
        "Speak Easy", "Morris Pub", "Вкусные истории",
        "Классик", "Love&Life", "Шок", "Бочка"
    ]
    
    static func getPlaces() -> [Place] {
        var places = [Place]()
        
        for placeName in restaurantNames {
            places.append(Place(name: placeName, location: "vinnitsya", type: "restaurant", image: placeName))
        }
        
        return places
    }
}

// Функция для использования кода
func main() {
    let places = Place.getPlaces()
    print(places)
}



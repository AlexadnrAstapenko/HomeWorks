//
//  Person.swift
//  TabBar
//
//  Created by Александр Астапенко on 11.03.22.
//

import UIKit

// MARK: - Person

struct Person {
    let firstNames: String
    let lastNames: String
    let emails: String
    let phoneNumbers: String
}

// MARK: - Persons

struct Persons {
    static var persons: [Person] = []

    static var firstNames = [
        "Alex",
        "Dmitriy",
        "Ylla",
        "Alexander",
        "Ivan",
        "Yriu",
    ].shuffled()

    static var lastNames = [
        "Ivanov",
        "Sidarov",
        "Petrov",
        "Kozlov",
        "Romanod",
        "Freid",
    ].shuffled()

    static var emails = [
        "Simple1@test.by",
        "Simple2@test.by",
        "Simple3@test.by",
        "Simple4@test.by",
        "Simple5@test.by",
        "Simple6@test.by",
    ]

    static var phoneNumbers = [
        "+375291234567",
        "+375291232211",
        "+375291233322",
        "+375291234455",
        "+375291231133",
        "+375291234567",
    ]

    static func createPersons() -> [Person] {
        // перемешиваем и записываем
        let firstNames = Persons.firstNames
        let lastNames = Persons.lastNames
        let emails = Persons.emails
        let phones = Persons.phoneNumbers

        for index in 0 ..< firstNames.count {
            let person = Person(firstNames: firstNames[index],
                                lastNames: lastNames[index],
                                emails: emails[index],
                                phoneNumbers: phones[index])
            persons.append(person)
        }
        return persons
    }
}

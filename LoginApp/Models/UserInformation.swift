//
//  Information.swift
//  AboutMeApp
//
//  Created by Владислав Якунин on 25.12.2024.
//

struct User {
    let login: String
    let password: String
    let person: Person

    static func getUser() -> User {
        User(
            login: "Владислав",
            password: "123456",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let bio: String
    let job: Company
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Владислав",
            surname: "Якунин",
            bio: """
            Родился 17 октября 1995 года в г. Пензе. 
            
            С 2002 года проживает в г. Саранске Республики Мордовия. Окончил Мордовский государственный университет имени Н.П.Огарева по направлению подготовки Государственное и муниципальное управление (бакалаврат, магистратура). 
            
            С 2017 года работает в органах государственной власти Республики Мордовия. 
            
            Женат, детей нет.
            """,
            job: Company.getCompany()
        )
    }
}

struct Company {
    let title: String
    let department: String
    let jobTitle: String
    
    static func getCompany() -> Company {
        Company(
            title: "АГРМ",
            department: "Секретариат ПРМ",
            jobTitle: "Помощник Председателя"
        )
    }
}

//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Ever been to a waterfall?",
                 description: "Coolest place you visited with a waterfall."),
            Task(title: "Something mystical...",
                 description: "Something that looks out of this world."),
            Task(title: "A change of scenery",
                 description: "Something different from your everyday life, something you've seen once"),
            Task(title: "Cityscape", description: "A nice picture from the city")
        ]
    }
}

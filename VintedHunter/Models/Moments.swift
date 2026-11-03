//
//  Moments.swift
//  MyApp
//
//  Created by Shiyuan Liang on 03/11/2026.
//

import Foundation
import SwiftData
import UIKit

@Model
class Moment {
    var title: String
    var note: String
    var imageData: Data?
    var timestamp: Date
    
    init(title: String, note: String, imageData: Data? = nil, timestamp: Date = .now) {
        self.title = title
        self.note = note
        self.imageData = imageData
        self.timestamp = timestamp
    }
    
    var image: UIImage? {
        imageData.flatMap {
            UIImage(data: $0)
        }
    }
}

extension Moment {
    static let sample = sampleData[0]
    static let longTextSample = sampleData[1]
    static let imageSample = sampleData[4]
    
    
    static let sampleData = [
        Moment(
            title: "🏺✌️",
            note: "Find a really beautiful vase!"
        ),
        Moment(
            title: "💙a blue vase!",
            note: "Find a Dutch 🇳🇱 vintage blue glass vase, it's sooo beautiful!",
            imageData: UIImage(contentsOfFile: "netherland_blue")?.pngData()
        ),
        Moment(
            title: "💚a green vase",
            note: "This vintage green vase is from Germany. The decoration is special!",
            imageData: UIImage(contentsOfFile: "german_green")?.pngData()
        ),
        Moment(
            title: "next shop?",
            note: ""
        ),
        Moment(
            title: "❤️ my collections!",
            note: "My glass collection is colorful 🌈 It took me for a while to wandering in different stores and shops to collect these glasses, and now I am soooo happy to take a picture for them all. They look very beautiful in the sunlight.🌞",
            imageData: UIImage(contentsOfFile: "german_group")?.pngData()
        ),
    ]
}

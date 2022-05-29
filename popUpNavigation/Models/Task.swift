//
//  Task.swift
//  popUpNavigation
//
//  Created by Hamideh Sheikh on 5/28/22.
//

import Foundation


// MARK: Task Model
struct Task: Identifiable, Codable {
    var id = UUID().uuidString
    var TaskTitle: String
    var TaskDescription: String
}

// MARK: Sample Tasks
var tasks: [Task] = [
    Task(TaskTitle: "Go shopping", TaskDescription: "You should go shopping in the morning"),
    Task(TaskTitle: "Write a letter", TaskDescription: "Write a letter to your sister"),
    Task(TaskTitle: "Do housechores", TaskDescription: "clearn the kitchen and wash the dishes"),
    Task(TaskTitle: "sleep", TaskDescription: "Sleep soon this night"),
    Task(TaskTitle: "Call your teacher", TaskDescription: "You have to call Mr.White to check his time")
]

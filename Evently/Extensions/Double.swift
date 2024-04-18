//
//  Double.swift
//  Evently
//
//  Created by Martynas Baranskas on 16/04/2024.
//
import Foundation

extension Double {
    func truncate(places : Int)-> Double {
        return Double(floor(pow(10.0, Double(places)) * self)/pow(10.0, Double(places)))
    }
}

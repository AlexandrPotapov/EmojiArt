//
//  SetFunc.swift
//  EmojiArt
//
//  Created by Александр on 05.08.2022.
//

import Foundation

extension Set where Element: Identifiable {
    mutating func toggleMatching(_ element: Element){
        if let matchingIndex = firstIndex(where: { $0.id == element.id }) {
            remove(at: matchingIndex)
        } else {
           insert(element)
        }
    }
    func containMatching(_ element: Element) -> Bool {
        contains(where: { $0.id == element.id })
    }
}

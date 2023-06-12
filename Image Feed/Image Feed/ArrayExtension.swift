//
//  ArrayExtension.swift
//  Image Feed
//
//  Created by Maxim Rustamov on 14.06.2023.
//

import Foundation

extension Array {
    func withReplaced(itemAt: Int, newValue: Photo) -> [Photo] {
        var photos = ImagesListService.shared.photos
        photos.replaceSubrange(itemAt...itemAt, with: [newValue])
        return photos
    }
}

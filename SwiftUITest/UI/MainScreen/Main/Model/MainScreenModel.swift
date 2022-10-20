//
//  MainScreenModel.swift
//  SwiftUITest
//
//  Created by Kirill Khristenko on 20.10.2022.
//

import Foundation

// MARK: - MainScreen
struct MainScreenData: Codable {
    let homeStore: [HomeStoreModel]
    let bestSeller: [BestSellerModel]

    enum CodingKeys: String, CodingKey {
        case homeStore = "home_store"
        case bestSeller = "best_seller"
    }
}

// MARK: - BestSeller
struct BestSellerModel: Equatable, Hashable, Codable {
    let id: Int?
    let isFavorites: Bool?
    let title: String?
    let priceWithoutDiscount, discountPrice: Int?
    let picture: String?

    enum CodingKeys: String, CodingKey {
        case id
        case isFavorites = "is_favorites"
        case title
        case priceWithoutDiscount = "price_without_discount"
        case discountPrice = "discount_price"
        case picture
    }
}

// MARK: - HomeStore
struct HomeStoreModel: Equatable, Hashable, Codable {
    let id: Int?
    let isNew: Bool?
    let title, subtitle: String?
    let picture: String
    let isBuy: Bool?

    enum CodingKeys: String, CodingKey {
        case id
        case isNew = "is_new"
        case title, subtitle, picture
        case isBuy = "is_buy"
    }
}

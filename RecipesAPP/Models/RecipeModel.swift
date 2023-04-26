//
//  RecipeModel.swift
//  RecipesAPP
//
//  Created by MX PROD on 4/26/23.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Spam Musubi",
            image: "https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F13d00a7a-fccf-41a5-8b1b-b4228f1dcc11%2FIMG_0389_(1).jpg?id=19bf381a-bfef-45f5-a276-1baddde7e1db&table=block",
            description: "If you love Hawaii and all things delicious, you’re in luck! A delicious and easy homemade Hawaiian Spam Musubi is just one of the great things you can make at home with this recipe.",
            ingredients: "12 oz spam\n1/4 cup oyster sauce\n1/4 cup soy sauce\n1/2 cup sugar\nNori (roasted seaweed)\n6 cups cooked rice",
            directions: "Slice the SPAM into about 8-10 slices (depending on how thick you like it) and put in a Ziplock bag. Mix oyster sauce, soy sauce, and sugar until sugar is dissolved and add to the bag with the SPAM. Marinate for about 15 minutes.\nDrain off marinade and fry SPAM on each side over medium heat until slightly crispy or until desired doneness.\nPlace a strip of nori on a cutting board or clean surface (shiny side down). Place your Musubi mold across the middle of the nori. Add Sushi Rice to the mold, pressing down firmly and evenly so there is about 1-1 ½ inches of rice.\nNow you will have a nice little block of rice right on the nori. Add some of the cooked SPAM to the top. Wrap up one side of the nori and stick it to the top of the SPAM, then wrap up the other side.",
            category: "Main",
            datePublished: "2023-02-06",
            url: "https://www.favfamilyrecipes.com/musubi/"
        ),
        Recipe(
            name: "Omurice",
            image: "https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F7e4086fe-25c2-4951-aff6-c95352edcdc4%2Fomurice_thumbnail.jpg?id=704e544b-28c4-41d6-84f4-fa4f97c87102&table=block",
            description: "If you love Hawaii and all things delicious, you’re in luck! A delicious and easy homemade Hawaiian Spam Musubi is just one of the great things you can make at home with this recipe.",
            ingredients: "12 oz spam\n1/4 cup oyster sauce\n1/4 cup soy sauce\n1/2 cup sugar\nNori (roasted seaweed)\n6 cups cooked rice",
            directions: "Slice the SPAM into about 8-10 slices (depending on how thick you like it) and put in a Ziplock bag. Mix oyster sauce, soy sauce, and sugar until sugar is dissolved and add to the bag with the SPAM. Marinate for about 15 minutes.\nDrain off marinade and fry SPAM on each side over medium heat until slightly crispy or until desired doneness.\nPlace a strip of nori on a cutting board or clean surface (shiny side down). Place your Musubi mold across the middle of the nori. Add Sushi Rice to the mold, pressing down firmly and evenly so there is about 1-1 ½ inches of rice.\nNow you will have a nice little block of rice right on the nori. Add some of the cooked SPAM to the top. Wrap up one side of the nori and stick it to the top of the SPAM, then wrap up the other side.",
            category: "Soup",
            datePublished: "2023-02-06",
            url: "https://www.cookerru.com/omurice/"
        ),
        Recipe(
            name: "Aglio e Olio",
            image: "https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Ff9052096-b615-4e5a-8009-eea4a1301b98%2Fagliooliopeperoncino_thumbnail.jpg?id=2df87e57-cd96-4a21-90aa-c54508ff1074&table=block",
            description: "If you love Hawaii and all things delicious, you’re in luck! A delicious and easy homemade Hawaiian Spam Musubi is just one of the great things you can make at home with this recipe.",
            ingredients: "12 oz spam\n1/4 cup oyster sauce\n1/4 cup soy sauce\n1/2 cup sugar\nNori (roasted seaweed)\n6 cups cooked rice",
            directions: "Slice the SPAM into about 8-10 slices (depending on how thick you like it) and put in a Ziplock bag. Mix oyster sauce, soy sauce, and sugar until sugar is dissolved and add to the bag with the SPAM. Marinate for about 15 minutes.\nDrain off marinade and fry SPAM on each side over medium heat until slightly crispy or until desired doneness.\nPlace a strip of nori on a cutting board or clean surface (shiny side down). Place your Musubi mold across the middle of the nori. Add Sushi Rice to the mold, pressing down firmly and evenly so there is about 1-1 ½ inches of rice.\nNow you will have a nice little block of rice right on the nori. Add some of the cooked SPAM to the top. Wrap up one side of the nori and stick it to the top of the SPAM, then wrap up the other side.",
            category: "Salad",
            datePublished: "2023-02-06",
            url: "https://www.italianrecipebook.com/spaghetti-aglio-olio-e-peperoncino/"
        ),
        Recipe(
            name: "Fried Potato",
            image: "https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fa26e4044-cb05-4700-9981-295934be914d%2Fpanfriedpotatoes_thumbnail.jpg?id=7000ae60-6f30-4439-9e7f-b580aa61e653&table=block",
            description: "If you love Hawaii and all things delicious, you’re in luck! A delicious and easy homemade Hawaiian Spam Musubi is just one of the great things you can make at home with this recipe.",
            ingredients: "12 oz spam\n1/4 cup oyster sauce\n1/4 cup soy sauce\n1/2 cup sugar\nNori (roasted seaweed)\n6 cups cooked rice",
            directions: "Slice the SPAM into about 8-10 slices (depending on how thick you like it) and put in a Ziplock bag. Mix oyster sauce, soy sauce, and sugar until sugar is dissolved and add to the bag with the SPAM. Marinate for about 15 minutes.\nDrain off marinade and fry SPAM on each side over medium heat until slightly crispy or until desired doneness.\nPlace a strip of nori on a cutting board or clean surface (shiny side down). Place your Musubi mold across the middle of the nori. Add Sushi Rice to the mold, pressing down firmly and evenly so there is about 1-1 ½ inches of rice.\nNow you will have a nice little block of rice right on the nori. Add some of the cooked SPAM to the top. Wrap up one side of the nori and stick it to the top of the SPAM, then wrap up the other side.",
            category: "Snack",
            datePublished: "2023-02-06",
            url: "https://www.thekitchn.com/fried-potatoes-recipe-23085178"
        ),
        Recipe(
            name: "Teriyaki Chicken",
            image: "https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fcffbe046-6d1e-4c68-aad8-1a3cdf55d407%2Fteriyakichicken_thumbnail1.jpg?id=f4648426-3dec-456c-8f8d-5a9d619f5b8e&table=block",
            description: "If you love Hawaii and all things delicious, you’re in luck! A delicious and easy homemade Hawaiian Spam Musubi is just one of the great things you can make at home with this recipe.",
            ingredients: "12 oz spam\n1/4 cup oyster sauce\n1/4 cup soy sauce\n1/2 cup sugar\nNori (roasted seaweed)\n6 cups cooked rice",
            directions: "Slice the SPAM into about 8-10 slices (depending on how thick you like it) and put in a Ziplock bag. Mix oyster sauce, soy sauce, and sugar until sugar is dissolved and add to the bag with the SPAM. Marinate for about 15 minutes.\nDrain off marinade and fry SPAM on each side over medium heat until slightly crispy or until desired doneness.\nPlace a strip of nori on a cutting board or clean surface (shiny side down). Place your Musubi mold across the middle of the nori. Add Sushi Rice to the mold, pressing down firmly and evenly so there is about 1-1 ½ inches of rice.\nNow you will have a nice little block of rice right on the nori. Add some of the cooked SPAM to the top. Wrap up one side of the nori and stick it to the top of the SPAM, then wrap up the other side.",
            category: "Drink",
            datePublished: "2023-02-06",
            url: "https://www.italianrecipebook.com/spaghetti-aglio-olio-e-peperoncino/"
        ),
        Recipe(
            name: "Agedashi Tofu",
            image: "https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fd12d98ec-7b24-4e36-bebe-abf45f9277b4%2Fagedashitofu_thumbnail.jpg?id=3b8951ba-eaf5-4e4b-9155-61872675b6b5&table=block",
            description: "If you love Hawaii and all things delicious, you’re in luck! A delicious and easy homemade Hawaiian Spam Musubi is just one of the great things you can make at home with this recipe.",
            ingredients: "12 oz spam\n1/4 cup oyster sauce\n1/4 cup soy sauce\n1/2 cup sugar\nNori (roasted seaweed)\n6 cups cooked rice",
            directions: "Slice the SPAM into about 8-10 slices (depending on how thick you like it) and put in a Ziplock bag. Mix oyster sauce, soy sauce, and sugar until sugar is dissolved and add to the bag with the SPAM. Marinate for about 15 minutes.\nDrain off marinade and fry SPAM on each side over medium heat until slightly crispy or until desired doneness.\nPlace a strip of nori on a cutting board or clean surface (shiny side down). Place your Musubi mold across the middle of the nori. Add Sushi Rice to the mold, pressing down firmly and evenly so there is about 1-1 ½ inches of rice.\nNow you will have a nice little block of rice right on the nori. Add some of the cooked SPAM to the top. Wrap up one side of the nori and stick it to the top of the SPAM, then wrap up the other side.",
            category: "Breakfast",
            datePublished: "2023-02-06",
            url: "https://www.italianrecipebook.com/spaghetti-aglio-olio-e-peperoncino/"
        )
    ]
}

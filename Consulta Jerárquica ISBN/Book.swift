//
//  Book.swift
//  Consulta Jerárquica ISBN
//
//  Created by Carlos Mauricio Idárraga Espitia on 4/22/16.
//  Copyright © 2016 Carlos Mauricio Idárraga Espitia. All rights reserved.
//

import Foundation
import UIKit

struct Book {

   var isbnCode : String!
   var title = "Sin Título"
   var authors = ["Sin Autores"]
   var cover = UIImage()

   init (isbnCode: String) {

      self.isbnCode = isbnCode
   }

   init (isbnCode: String, title: String, authors: [String], cover: UIImage) {

      self.isbnCode = isbnCode
      self.title = title
      self.authors = authors
      self.cover = cover
   }
}
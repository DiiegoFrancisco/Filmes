//
//  Filme.swift
//  Filmes
//
//  Created by DevMakerMobile on 10/07/2019.
//  Copyright © 2019 DevMakerMobile. All rights reserved.
//

import UIKit

class Filme {
    var titulo: String!
    var descricao: String!
    var imagem: UIImage!
    
    init(titulo: String, descricao: String, imagem: UIImage) {
    
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
    }
    
}

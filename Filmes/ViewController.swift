//
//  ViewController.swift
//  Filmes
//
//  Created by DevMakerMobile on 10/07/2019.
//  Copyright © 2019 DevMakerMobile. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var filmes: [Filme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filme
        filme = Filme (titulo: "Filme 1 ", descricao: "Descricao ", imagem: UIImage(named: "filme1")!)
        filmes.append(filme)
        filme = Filme (titulo: "Filme 2 ", descricao: "Descricao ", imagem: UIImage(named: "filme2")!)
        filmes.append(filme)
        filme = Filme (titulo: "Filme 3 ", descricao: "Descricao ", imagem: UIImage(named: "filme3")!)
        filmes.append(filme)
        filme = Filme (titulo: "Filme 4", descricao: "Descricao ", imagem: UIImage(named: "filme4")!)
        filmes.append(filme)
        filme = Filme (titulo: "Filme 5", descricao: "Descricao ", imagem: UIImage(named: "filme5")!)
        filmes.append(filme)
        filme = Filme (titulo: "Filme 6", descricao: "Descricao ", imagem: UIImage(named: "filme6")!)
        filmes.append(filme)
        filme = Filme (titulo: "Filme 7", descricao: "Descricao ", imagem: UIImage(named: "filme7")!)
        filmes.append(filme)
        filme = Filme (titulo: "Filme 8", descricao: "Descricao ", imagem: UIImage(named: "filme8")!)
        filmes.append(filme)
        filme = Filme (titulo: "Filme 9", descricao: "Descricao ", imagem: UIImage(named: "filme9")!)
        filmes.append(filme)
        filme = Filme (titulo: "Filme 10", descricao: "Descricao ", imagem: UIImage(named: "filme10")!)
        filmes.append(filme)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let filme = filmes [indexPath.row]
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath) as! FilmeCelula
        celula.filmeImagem.image = filme.imagem
        celula.lbTitle.text = filme.titulo
        celula.lbDescrition.text = filme.descricao
        
        celula.filmeImagem.layer.cornerRadius = 42
        celula.filmeImagem.clipsToBounds = true
        
        
        
//        celula.textLabel?.text = filme.titulo
//        celula.imageView?.image = filme.imagem
        
        return celula
    }
    
   
    }




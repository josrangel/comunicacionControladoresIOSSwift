//
//  DetailsViewController.swift
//  ComunicacionControladores
//
//  Created by KMMX on 04/11/20.
//

import Foundation
import UIKit

class DetailsViewController: ViewController{
    
    var delegate: PokemonOutputDelegate?
    
    @IBOutlet weak var imageView: UIImageView!
   
    @IBOutlet weak var descripcion: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate?.onReady(sender: self)
    }
    
}
extension DetailsViewController : PokemonInputDelegate{
    func setPokemon(pokemon: Pokemon) {
        self.descripcion.text = pokemon.nombre
        self.imageView.image = UIImage(named: pokemon.imagen)
    }
    
    func setPokemon(nombre: String, imagen: String) {
        self.descripcion.text = nombre
        self.imageView.image = UIImage(named: imagen)
    }
    
}

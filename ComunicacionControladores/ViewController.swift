//
//  ViewController.swift
//  ComunicacionControladores
//
//  Created by KMMX on 04/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    var pokemonSeleccionado: Pokemon?

    override func viewDidLoad() {
        super.viewDidLoad()
        pokemonSeleccionado = Pokemon(nombre: "charmander", image: "charmander")
        // Do any additional setup after loading the view.
    }

    @IBAction func verDetallesAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let detailsViewController = storyboard.instantiateViewController(withIdentifier: "DetailsViewController")
        
        
        
        if let pokemonInputInstanciate = detailsViewController as? DetailsViewController{
            self.navigationController?.pushViewController(detailsViewController, animated: true)
            pokemonInputInstanciate.delegate = self
        }
        
        //detailsViewController.modalPresentationStyle = .overFullScreen
        //let navigationController = UINavigationController(rootViewController: detailsViewController)
       /* self.present(navigationController, animated: true){
            print("Detalles abiertos")
            if let pokemonInputInstanciate = detailsViewController as? PokemonInputDelegate{
                
                if let pokemon = self.pokemonSeleccionado {
                    pokemonInputInstanciate.setPokemon(pokemon: pokemon)
                }
                
            }
        }*/
        
    }
    
}

extension ViewController: PokemonOutputDelegate{
    func onReady(sender: Any) {
        if let pokemonInputInstanciate = sender as? PokemonInputDelegate{
            
            if let pokemon = self.pokemonSeleccionado {
                pokemonInputInstanciate.setPokemon(pokemon: pokemon)
            }
            
        }
    }
    
    
}


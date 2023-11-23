import UIKit

class ViewController: UIViewController {
    // Déclarez ici vos variables ou propriétés nécessaires
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Appelez ici les fonctions d'initialisation ou de configuration
        setupUI()
    }

    // Fonction pour configurer l'interface utilisateur
    func setupUI() {
        let button = UIButton(type: .system)
        button.setTitle("Appuyez-moi", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

        view.addSubview(button)
        
        // Ajoutez ici des contraintes ou configurez la mise en page de votre interface
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    // Fonction appelée lorsque le bouton est appuyé
    @objc func buttonTapped() {
        print("Bouton appuyé !")
        // Ajoutez ici le code que vous souhaitez exécuter lorsque le bouton est appuyé
    }
}

// Si vous utilisez une scène SwiftUI
import SwiftUI

@available(iOS 13.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }

    struct ContainerView: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> UIViewController {
            return ViewController()
        }

        func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
            // Mettez à jour la vue du contrôleur si nécessaire
        }
    }
}

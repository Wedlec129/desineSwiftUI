//
//  uikitInSwiftUI1.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 20.08.2023.
//

import SwiftUI

struct uikitInSwiftUI1: View {
    var body: some View {
        BasicUIViewCOntrolleRepresentable(laibleTest: "hello world")
    }
}

struct uikitInSwiftUI1_Previews: PreviewProvider {
    static var previews: some View {
        uikitInSwiftUI1()
    }
}

struct BasicUIViewCOntrolleRepresentable: UIViewControllerRepresentable{
    
    let laibleTest: String
    
    func makeUIViewController(context: Context) -> some UIViewController {
        
        let vc = UINavigationController(rootViewController: MyfirstViewController())
        //vc.laibleText = laibleTest
    
        
        return vc
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
}

class MyfirstViewController: UIViewController{
    
    var laibleText:String = "test"
    
    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        title = "First Screan"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        
        
        let lable = UILabel()
        lable.text = laibleText
        lable.textColor = .systemPink
        lable.frame = view.frame
        view.addSubview(lable)
        
        setupNextButton()
        
        
    }
    
    func setupNextButton(){
        view.addSubview(nextButton) //добавляем на эран
        nextButton.configuration = .filled()
        nextButton.configuration?.baseBackgroundColor = .systemPink
        nextButton.configuration?.title = "Next"
        
        //авто отступы
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        //отсьупы
        NSLayoutConstraint.activate([
            //отступы
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            //оганичкние относительно х/у центра экрана по х/у
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            //размеры
            nextButton.widthAnchor.constraint(equalToConstant: 200),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
            
        ])
        
        //действия на кнопку
        nextButton.addTarget(self, action: #selector(goNextScrean), for: .touchUpInside)
        
    }
    @objc func goNextScrean(){
        //view.backgroundColor = .blue
        let nextScrean = SecondScene()
        nextScrean.title = "Second sceane"
        
        navigationController?.pushViewController(nextScrean, animated: true)
        
    }
    
}




class SecondScene: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemMint
        navigationController?.navigationBar.prefersLargeTitles = true
        
        
        
        
        let yellow = UIView()
        yellow.backgroundColor = .yellow
        yellow.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(yellow)
        NSLayoutConstraint.activate([
            yellow.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            yellow.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            yellow.topAnchor.constraint(equalTo: view.topAnchor),
            yellow.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
        let redBox = UIView()
        redBox.backgroundColor = .red
        redBox.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(redBox)
        NSLayoutConstraint.activate([
            redBox.widthAnchor.constraint(equalToConstant: 100),
            redBox.heightAnchor.constraint(equalToConstant: 100),
            redBox.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            redBox.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        
    }
    
    
    
}

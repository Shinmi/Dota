//
//  MainModule.swift
//  Heroes
//
//  Created Muhksin Hilmi on 18/07/2020.
//  Copyright © 2020 Tutore. All rights reserved.
//

import UIKit

/// Main Module View
class MainModule: UIViewController {
    
    private var presenter: MainPresenterProtocol!
    
    convenience init() {
        self.init(nibName:nil, bundle:nil)
        presenter = MainPresenter(
            view: self,
            interactor: MainInteractor(),
            router: MainRouter()
        )
    }
    
    override func loadView() {
        let thisView = MainView()
        thisView.presenter = presenter
        view = thisView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.fetchData()
    }
    
}

// MARK: - extending MainView to implement it's protocol
extension MainModule: MainViewProtocol {
    func getRoles(roles: [String]) {
        print(roles)
    }
    func getDataHeroes(heroes: [HeroesEntity]?) {
       
    }
}

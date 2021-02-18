//
//  MainPresenter.swift
//  InstagramApp. UItable and Uicollection
//
//  Created by Alikhan Tuxubayev on 18.02.2021.
//

import Foundation

protocol MainViewProtocol {
    func showStory(path: String)
}

protocol MainViewPresenterProtocol {
    init(view: MainViewProtocol, user: User)
}

class MainPresenter: MainViewPresenterProtocol {
    let view: MainViewProtocol
    let user: User
    
    required init(view: MainViewProtocol, user: User) {
        self.view = view
        self.user = user
    }

}

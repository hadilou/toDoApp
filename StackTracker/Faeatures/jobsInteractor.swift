//
//  jobsInteractor.swift
//  StackTracker
//
//  Created by Kayode Hadilou ADJE on 8.09.2018.
//  Copyright (c) 2018 Kayode Hadilou ADJE. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol IjobsBusinessLogic {
    func doSomething(request: jobs.Something.Request)
}

protocol IjobsDataStore {
    //var name: String { get set }
}

class jobsInteractor: IjobsBusinessLogic, IjobsDataStore {
    var presenter: IjobsPresentationLogic?
    //var name: String = ""

    init(presenter: IjobsPresentationLogic?) {
        self.presenter = presenter
    }

    // MARK: Do something

    func doSomething(request: jobs.Something.Request) {
        let response = jobs.Something.Response()
        presenter?.presentSomething(response: response)
    }
}

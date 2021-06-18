//
//  PresentableInteractor.swift
//  
//
//  Created by dehrom on 18.06.2021.
//

import Foundation

/// Base class of an `Interactor` that actually has an associated `Presenter` and `View`.
open class PresentableInteractor<PresenterType>: Interactor {
    /// The `Presenter` associated with this `Interactor`.
    public let presenter: PresenterType

    /// Initializer.
    ///
    /// - note: This holds a strong reference to the given `Presenter`.
    ///
    /// - parameter presenter: The presenter associated with this `Interactor`.
    public init(presenter: PresenterType) {
        self.presenter = presenter
    }

    // MARK: - Private

    deinit {
        LeakDetector.instance.expectDeallocate(object: presenter as AnyObject)
    }
}


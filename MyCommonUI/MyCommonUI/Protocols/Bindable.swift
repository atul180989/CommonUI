//
//  Bindable.swift
//  MyCommonUI
//
//  Created by Atul Bhaisare on 1/31/20.
//  Copyright © 2020 Atul Bhaisare. All rights reserved.
//

import UIKit

/**
    Bindable protocl, is added to an object to provide a standard interface to all it's internal elelments to be bound to a view model
 */
public protocol Bindable {
    /// Defined type to be applied to an object that will act as a ViewModel
    associatedtype ViewModel

    /// Associated value of it's corresponding ViewModel containing the elements logic
    var viewModel: ViewModel! { get set }

    /// When executed, this will bind all defined elements between it and the corresponding ViewModel
    func bindViewModel()
}

/// Implementation extension of Bindable Protocol for UIViewController
extension Bindable where Self: UIViewController {

    /**
    Apply the ViewModel for this UIViewController

     - Parameter model: An object conforming to the ViewModel type, that will be contain the necessary logic for bound items
    */
    mutating public func setViewModel(to model: Self.ViewModel) {
        viewModel = model
        loadViewIfNeeded()
        bindViewModel()
    }
}

/// Implementation extension of Bindable Protocol for UIView
extension Bindable where Self: UIView {
    /**
    Apply the ViewModel for this UIView

     - Parameter model: An object conforming to the ViewModel type, that will be contain the necessary logic for bound items
    */
    mutating public func setViewModel(to model: Self.ViewModel) {
        viewModel = model
        bindViewModel()
        if self.window != nil {layoutIfNeeded()}
    }
}

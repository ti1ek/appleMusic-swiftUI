//
//  SearchView.swift
//  appleMusic-swiftUI
//
//  Created by ti1ek on 03.07.2023.
//

import SwiftUI
import UIKit

struct UIKitSearchView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        let navigationController = UINavigationController(rootViewController: SearchViewController())
        return navigationController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}

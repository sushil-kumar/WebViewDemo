//
//  ViewModel.swift
//  WebViewDemo
//
//  Created by MacBook on 07/09/21.
//

import Foundation
import Combine

class ViewModel: ObservableObject {
    var webViewNavigationPublisher = PassthroughSubject<WebViewNavigation, Never> ()
    var showWebTitle = PassthroughSubject<String, Never>()
    var showLoader = PassthroughSubject<Bool, Never>()
    var valuePublisher = PassthroughSubject<String, Never>()
}

enum WebViewNavigation {
    case backward, forward, reload
}

enum WebUrlType {
    case localUrl, publicUrl
}

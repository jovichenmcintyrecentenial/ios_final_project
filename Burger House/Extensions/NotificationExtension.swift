//{{update here}}
//  NotificationExtension.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import Foundation
import Combine
import SwiftUI

extension Notification.Name {
    static let cartButtonPressed = Notification.Name("CartButtonPressed")
    static let goShoppingPressed = Notification.Name("GoShopping")
}

func observe(notificationName: Notification.Name) -> AnyPublisher<Notification, Never> {
    return NotificationCenter.default.publisher(for: notificationName)
        .eraseToAnyPublisher()
}

func emit(notificationName: Notification.Name, object: Any? = nil) {
    NotificationCenter.default.post(name: notificationName, object: object)
}

struct OnObserverNotificationModifier: ViewModifier {
    let notificationName: Notification.Name
    let action: (Notification) -> Void
    
    func body(content: Content) -> some View {
        content
            .onReceive(observe(notificationName: notificationName)) { notification in
                action(notification)
            }
    }
}

extension View {
    func onObserverNotification(_ notificationName: Notification.Name, perform action: @escaping (Notification) -> Void) -> some View {
        self.modifier(OnObserverNotificationModifier(notificationName: notificationName, action: action))
    }
}



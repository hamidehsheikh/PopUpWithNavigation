//
//  Extensions.swift
//  popUpNavigation
//
//  Created by Hamideh Sheikh on 5/28/22.
//

import Foundation
import SwiftUI


extension View {
    
    func PopUpNavigationView<Content: View>( horizontalPadding: CGFloat = 40, show: Binding<Bool>, @ViewBuilder content: @escaping ()->Content )->some View {
        
        return self
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .overlay {
                if show.wrappedValue {
                    GeometryReader { geometry in
                        
                        Color.primary
                            .opacity(0.15)
                            .ignoresSafeArea()

                        NavigationView {
                            content()
                        }
                        .frame(width: geometry.size.width-horizontalPadding, height: geometry.size.height/1.7, alignment: .center)
                        .cornerRadius(15)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    }
                }
            }
    }
    
}

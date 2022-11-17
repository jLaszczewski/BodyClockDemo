//
//  undefined.swift
//  SunUpTests
//
//  Created by Jakub Łaszczewski on 04/03/2022.
//

#if DEBUG

import Foundation

func undefined<T>(with message: String? = nil) -> T {
    let message = message ?? "\(T.self) not defined."
    
    fatalError("""
    
    <----------------------------------------------
    
        \(message)
    
    ---------------------------------------------->
    
    """)
}

#endif

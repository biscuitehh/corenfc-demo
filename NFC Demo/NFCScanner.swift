//
//  NFCScanner.swift
//  NFC Demo
//
//  Created by Michael Thomas on 6/6/17.
//  Copyright © 2017 Michael Thomas. All rights reserved.
//

// IMPORTANT: This only works on device - this will not build for the simulator.

import Foundation
import CoreNFC

final class NFCScanner: NSObject {
    
    var readerSession: NFCNDEFReaderSession?
    
    init(invalidateAfterFirstRead: Bool) {
        super.init()
        readerSession = NFCNDEFReaderSession.init(delegate: self, queue: nil, invalidateAfterFirstRead: invalidateAfterFirstRead)
        
    }
    
    func start() {
        readerSession?.begin()
    }
    
    func stop() {
        readerSession?.invalidate()
    }
    
}

// MARK: - NFCNDEFReaderSessionDelegate

extension NFCScanner: NFCNDEFReaderSessionDelegate {
    
    func readerSession(_ session: NFCNDEFReaderSession, didDetectNDEFs messages: [NFCNDEFMessage]) {
        
    }
    
    func readerSession(_ session: NFCNDEFReaderSession, didInvalidateWithError error: Error) {
        
    }
}

//
//  BoolAttribute.swift
//  HDF5Kit
//
//  Created by Riccardo Pizzoni on 25/07/2019.
//  Copyright © 2019 LuckySeven. All rights reserved.
//

#if SWIFT_PACKAGE
import CHDF5
#endif

open class BoolAttribute: Attribute {
    
    public func read() throws -> [Bool] {
        let space = self.space
        let count = space.size
        var data = [Bool](repeating: false, count: count)
        try data.withUnsafeMutableBufferPointer { pointer in
            return try read(into: pointer.baseAddress!, type: .bool)
        }
        return data
    }
    
    public func write(_ data: [Bool]) throws {
        assert(space.size == data.count)
        try data.withUnsafeBufferPointer { pointer in
            try write(from: pointer.baseAddress!, type: .bool)
        }
    }
    
}

public extension AttributedType {
    
    /// Get `Bool` attribute scalar or first value
    func boolAttributeValue(_ name: String) -> Bool? {
        guard let values = try? openBoolAttribute(name)?.read() else { return nil }
        return values.first
    }
    
    /// Creates a `Bool` attribute.
    func createBoolAttribute(_ name: String, dataspace: Dataspace) -> BoolAttribute? {
        guard let datatype = Datatype(type: Bool.self) else {
            return nil
        }
        let attributeID = name.withCString { name in
            return H5Acreate2(id, name, datatype.id, dataspace.id, 0, 0)
        }
        return BoolAttribute(id: attributeID)
    }
    
    /// Opens an `Bool` attribute.
    func openBoolAttribute(_ name: String) -> BoolAttribute? {
        let attributeID = name.withCString{ name in
            return H5Aopen(id, name, 0)
        }
        guard attributeID >= 0 else {
            return nil
        }
        return BoolAttribute(id: attributeID)
    }
    
    /// Creates and Writes a `Int` attribute.
    @discardableResult
    func writeScalarAttribute(_ name: String, _ value: Bool?) throws -> BoolAttribute? {
        let datatype = Datatype(nativeType: .bool)
        guard let id = try writeScalarAttribute(name, value, datatype: datatype) else { return nil }
        return BoolAttribute(id: id)
    }
    
}

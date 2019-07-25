// Copyright © 2016 Alejandro Isaza.
//
// This file is part of HDF5Kit. The full HDF5Kit copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.

#if SWIFT_PACKAGE
    import CHDF5
#endif

open class IntAttribute: Attribute {

    public func read() throws -> [Int] {
        let space = self.space
        let count = space.size
        var data = [Int](repeating: 0, count: count)
        try data.withUnsafeMutableBufferPointer { pointer in
            return try read(into: pointer.baseAddress!, type: .int)
        }
        return data
    }

    public func write(_ data: [Int]) throws {
        assert(space.size == data.count)
        try data.withUnsafeBufferPointer { pointer in
            try write(from: pointer.baseAddress!, type: .int)
        }
    }

}


public extension AttributedType {
    
    /// Get `Int` attribute scalar or first value
    func intAttributeValue(_ name: String) -> Int? {
        guard let values = try? openIntAttribute(name)?.read() else { return nil }
        return values?.first
    }
    
    /// Creates a `Int` attribute.
    public func createIntAttribute(_ name: String, dataspace: Dataspace) -> IntAttribute? {
        guard let datatype = Datatype(type: Int.self) else {
            return nil
        }
        let attributeID = name.withCString { name in
            return H5Acreate2(id, name, datatype.id, dataspace.id, 0, 0)
        }
        return IntAttribute(id: attributeID)
    }

    /// Opens an `Int` attribute.
    public func openIntAttribute(_ name: String) -> IntAttribute? {
        let attributeID = name.withCString{ name in
            return H5Aopen(id, name, 0)
        }
        guard attributeID >= 0 else {
            return nil
        }
        return IntAttribute(id: attributeID)
    }
    
    /// Creates and Writes a `Int` attribute.
    @discardableResult
    public func writeScalarAttribute(_ name: String, _ value: Int?) throws -> IntAttribute? {
        let datatype = Datatype.createInt()
        guard let id = try writeScalarAttribute(name, value, datatype: datatype) else { return nil }
        return IntAttribute(id: id)
    }
    
    /// Creates and Writes a `Int8` attribute.
    @discardableResult
    public func writeScalarAttribute(_ name: String, _ value: Int8?) throws -> IntAttribute? {
        let datatype = Datatype(nativeType: .int8)
        guard let id = try writeScalarAttribute(name, value, datatype: datatype) else { return nil }
        return IntAttribute(id: id)
    }
    
    /// Creates and Writes a `Int16` attribute.
    @discardableResult
    public func writeScalarAttribute(_ name: String, _ value: Int16?) throws -> IntAttribute? {
        let datatype = Datatype(nativeType: .int16)
        guard let id = try writeScalarAttribute(name, value, datatype: datatype) else { return nil }
        return IntAttribute(id: id)
    }
    
    /// Creates and Writes a `Int32` attribute.
    @discardableResult
    public func writeScalarAttribute(_ name: String, _ value: Int32?) throws -> IntAttribute? {
        let datatype = Datatype(nativeType: .int32)
        guard let id = try writeScalarAttribute(name, value, datatype: datatype) else { return nil }
        return IntAttribute(id: id)
    }
    
    /// Creates and Writes a `Int64` attribute.
    @discardableResult
    public func writeScalarAttribute(_ name: String, _ value: Int64?) throws -> IntAttribute? {
        let datatype = Datatype(nativeType: .int64)
        guard let id = try writeScalarAttribute(name, value, datatype: datatype) else { return nil }
        return IntAttribute(id: id)
    }
    
    /// Creates and Writes a `UInt` attribute.
    @discardableResult
    public func writeScalarAttribute(_ name: String, _ value: UInt?) throws -> IntAttribute? {
        let datatype = Datatype(nativeType: .uint)
        guard let id = try writeScalarAttribute(name, value, datatype: datatype) else { return nil }
        return IntAttribute(id: id)
    }
    
    /// Creates and Writes a `UInt8` attribute.
    @discardableResult
    public func writeScalarAttribute(_ name: String, _ value: UInt8?) throws -> IntAttribute? {
        let datatype = Datatype(nativeType: .uint8)
        guard let id = try writeScalarAttribute(name, value, datatype: datatype) else { return nil }
        return IntAttribute(id: id)
    }
    
    /// Creates and Writes a `UInt16` attribute.
    @discardableResult
    public func writeScalarAttribute(_ name: String, _ value: UInt16?) throws -> IntAttribute? {
        let datatype = Datatype(nativeType: .uint16)
        guard let id = try writeScalarAttribute(name, value, datatype: datatype) else { return nil }
        return IntAttribute(id: id)
    }
    
    /// Creates and Writes a `UInt32` attribute.
    @discardableResult
    public func writeScalarAttribute(_ name: String, _ value: UInt32?) throws -> IntAttribute? {
        let datatype = Datatype(nativeType: .uint32)
        guard let id = try writeScalarAttribute(name, value, datatype: datatype) else { return nil }
        return IntAttribute(id: id)
    }
    
    /// Creates and Writes a `UInt64` attribute.
    @discardableResult
    public func writeScalarAttribute(_ name: String, _ value: UInt64?) throws -> IntAttribute? {
        let datatype = Datatype(nativeType: .uint64)
        guard let id = try writeScalarAttribute(name, value, datatype: datatype) else { return nil }
        return IntAttribute(id: id)
    }
    
}

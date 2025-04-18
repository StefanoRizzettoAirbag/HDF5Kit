// Copyright © 2016 Alejandro Isaza.
//
// This file is part of HDF5Kit. The full HDF5Kit copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.

#if SWIFT_PACKAGE
    @preconcurrency import HDF5
#endif

open class DoubleAttribute: Attribute {

    public func read() throws -> [Double] {
        let space = self.space
        let count = space.size
        var data = [Double](repeating: 0, count: count)
        try data.withUnsafeMutableBufferPointer { pointer in
            return try read(into: pointer.baseAddress!, type: .double)
        }
        return data
    }

    public func write(_ data: [Double]) throws {
        assert(space.size == data.count)
        try data.withUnsafeBufferPointer { pointer in
            try write(from: pointer.baseAddress!, type: .double)
        }
    }

}


public extension AttributedType {
    
    /// Get `Double` attribute scalar or first value
    func doubleAttributeValue(_ name: String) -> Double? {
        guard let values = try? openDoubleAttribute(name)?.read() else { return nil }
        return values.first
    }
    
    /// Creates a `Double` attribute.
    public func createDoubleAttribute(_ name: String, dataspace: Dataspace) -> DoubleAttribute? {
        guard let datatype = Datatype(type: Double.self) else {
            return nil
        }
        let attributeID = name.withCString { name in
            return H5Acreate2(id, name, datatype.id, dataspace.id, 0, 0)
        }
        return DoubleAttribute(id: attributeID)
    }

    /// Opens a `Double` attribute.
    public func openDoubleAttribute(_ name: String) -> DoubleAttribute? {
        let attributeID = name.withCString{ name in
            return H5Aopen(id, name, 0)
        }
        guard attributeID >= 0 else {
            return nil
        }
        return DoubleAttribute(id: attributeID)
    }
    
    /// Creates and Writes a `Double` attribute.
    @discardableResult
    public func writeScalarAttribute(_ name: String, _ value: Double?) throws -> DoubleAttribute? {
        let datatype = Datatype(nativeType: .double)
        guard let id = try writeScalarAttribute(name, value, datatype: datatype) else { return nil }
        return DoubleAttribute(id: id)
    }
    
}

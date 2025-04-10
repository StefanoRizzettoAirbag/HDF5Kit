// Copyright © 2016 Alejandro Isaza.
//
// This file is part of HDF5Kit. The full HDF5Kit copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.

#if SWIFT_PACKAGE
@preconcurrency import HDF5
#endif

public protocol AttributedType {
    var id: hid_t { get }
}

open class Attribute {
    public internal(set) var id: hid_t = -1

    init(id: hid_t) {
        precondition(id >= 0, "Object ID needs to be non-negative")
        self.id = id
    }

    deinit {
        let status = H5Aclose(id)
        assert(status >= 0, "Failed to close Object")
    }

    open var name: String {
        let count = H5Aget_name(id, 0, nil)
        if count <= 0 {
            return ""
        }

        let pointer = UnsafeMutablePointer<CChar>.allocate(capacity: count + 1)
        H5Aget_name(id, count + 1, pointer)
        return String(cString: pointer)
    }

    public var space: Dataspace {
        return Dataspace(id: H5Aget_space(id))
    }

    public var type: Datatype {
        return Datatype(id: H5Aget_type(id))
    }

    /// Reads attribute data.
    open func read(into pointer: UnsafeMutableRawPointer, type: NativeType) throws {
        let status = H5Aread(id, type.rawValue, pointer)
        if status < 0 {
            throw Error.ioError
        }
    }

    /// Writes attribute data.
    open func write(from pointer: UnsafeRawPointer, type: NativeType) throws {
        let status = H5Awrite(id, type.rawValue, pointer);
        if status < 0 {
            throw Error.ioError
        }
    }
}

extension AttributedType {
    
    @discardableResult
    func writeScalarAttribute<T>(_ name: String, _ value: T?, datatype: Datatype) throws -> hid_t? {
        guard let value = value else {
            guard name.withCString({ name in
                return H5Adelete(id, name)
            }) >= 0 else { throw Error.ioError }
            return nil
        }
        let dataspace = Dataspace()
        let attributeID = name.withCString { name in
            return H5Acreate2(id, name, datatype.id, dataspace.id, 0, 0)
        }
        guard attributeID >= 0 else {
            throw Error.ioError
        }
        
        var int = value
        let pointer = UnsafeRawPointer(&int)
        guard H5Awrite(attributeID, datatype.id, pointer) >= 0 else {
            throw Error.ioError
        }
        
        return attributeID
    }
    
}

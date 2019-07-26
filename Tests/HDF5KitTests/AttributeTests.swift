// Copyright © 2016 Alejandro Isaza.
//
// This file is part of HDF5Kit. The full HDF5Kit copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.

import XCTest
import HDF5Kit

class AttributeTests: XCTestCase {

    func testName() {
        let filePath = tempFilePath()
        guard let file = File.create(filePath, mode: .truncate) else {
            fatalError("Failed to create file")
        }
        let group = file.createGroup("group")
        XCTAssertEqual(group.name, "/group")

        let dataspace = Dataspace(dims: [4])
        guard let attribute = group.createIntAttribute("attribute", dataspace: dataspace) else {
            XCTFail()
            return
        }
        XCTAssertEqual(attribute.name, "attribute")
    }

    func testWriteReadInt() {
        let filePath = tempFilePath()
        guard let file = File.create(filePath, mode: .truncate) else {
            fatalError("Failed to create file")
        }
        let group = file.createGroup("group")
        XCTAssertEqual(group.name, "/group")

        let dataspace = Dataspace(dims: [4])
        guard let attribute = group.createIntAttribute("attribute", dataspace: dataspace) else {
            XCTFail()
            return
        }

        do {
            let writeData = [1, 2, 3, 4]
            try attribute.write(writeData)
            XCTAssertEqual(try attribute.read(), writeData)
        } catch {
            XCTFail()
        }
    }

    func testWriteReadBool() {
        let filePath = tempFilePath()
        guard let file = File.create(filePath, mode: .truncate) else {
            fatalError("Failed to create file")
        }
        let group = file.createGroup("group")
        XCTAssertEqual(group.name, "/group")
        
        let dataspace = Dataspace(dims: [4])
        guard let attribute = group.createBoolAttribute("attribute", dataspace: dataspace) else {
            XCTFail()
            return
        }
        
        do {
            let writeData = [true, false, true, false]
            try attribute.write(writeData)
            XCTAssertEqual(try attribute.read(), writeData)
        } catch {
            XCTFail()
        }
    }

    func testWriteReadString() {
        let filePath = tempFilePath()
        guard let file = File.create(filePath, mode: .truncate) else {
            fatalError("Failed to create file")
        }
        let group = file.createGroup("group")
        XCTAssertEqual(group.name, "/group")

        guard let attribute = group.createStringAttribute("attribute") else {
            XCTFail()
            return
        }

        do {
            let writeData = "ABCD"
            try attribute.write(writeData)
            let readData = try attribute.read()
            XCTAssertEqual(readData, [writeData])
        } catch {
            XCTFail()
        }
    }
    
    func testWriteReadStringScalar() {
        let filePath = tempFilePath()
        guard let file = File.create(filePath, mode: .truncate) else {
            fatalError("Failed to create file")
        }
        let group = file.createGroup("group")
        XCTAssertEqual(group.name, "/group")
        
        do {
            let writeData = "Scalar text"
            guard let attribute = try group.writeScalarAttribute("attribute", writeData) else {
                XCTFail()
                return
            }
            XCTAssertEqual(try attribute.read(), [writeData])
            XCTAssertEqual(group.stringAttributeValue("attribute"), writeData)
        } catch {
            XCTFail()
        }
    }
    
    func testWriteReadNumberScalar() {
        let filePath = tempFilePath()
        guard let file = File.create(filePath, mode: .truncate) else {
            fatalError("Failed to create file")
        }
        let group = file.createGroup("group")
        XCTAssertEqual(group.name, "/group")
        
        do {
            let writeData: Int = 345
            guard let attribute = try group.writeScalarAttribute("Int", writeData) else {
                XCTFail()
                return
            }
            XCTAssertEqual(try attribute.read(), [writeData])
            XCTAssertEqual(group.intAttributeValue("Int"), writeData)
        } catch {
            XCTFail()
        }
        
        do {
            let writeData: Int32 = 678
            guard let attribute = try group.writeScalarAttribute("Int32", writeData) else {
                XCTFail()
                return
            }
            let readData = try attribute.read()
            XCTAssertEqual(readData.map { Int32($0) }, [writeData])
            XCTAssertEqual(Int32(group.intAttributeValue("Int32")!), writeData)
        } catch {
            XCTFail()
        }
        
        do {
            let writeData: Float = 30.5
            guard let attribute = try group.writeScalarAttribute("Float", writeData) else {
                XCTFail()
                return
            }
            XCTAssertEqual(try attribute.read(), [writeData])
            XCTAssertEqual(group.floatAttributeValue("Float"), writeData)
        } catch {
            XCTFail()
        }
        
        do {
            let writeData: Double = 345467.3736
            guard let attribute = try group.writeScalarAttribute("Double", writeData) else {
                XCTFail()
                return
            }
            XCTAssertEqual(try attribute.read(), [writeData])
            XCTAssertEqual(group.doubleAttributeValue("Double"), writeData)
        } catch {
            XCTFail()
        }
        
    }
    
    func testWriteReadBoolScalar() {
        let filePath = tempFilePath()
        guard let file = File.create(filePath, mode: .truncate) else {
            fatalError("Failed to create file")
        }
        let group = file.createGroup("group")
        XCTAssertEqual(group.name, "/group")
        
        do {
            let writeData: Bool = true
            guard let attribute = try group.writeScalarAttribute("Bool", writeData) else {
                XCTFail()
                return
            }
            XCTAssertEqual(try attribute.read(), [writeData])
            XCTAssertEqual(group.boolAttributeValue("Bool"), writeData)
        } catch {
            XCTFail()
        }
        
    }
    
    func testWriteReadDelete() {
        let filePath = tempFilePath()
        guard let file = File.create(filePath, mode: .truncate) else {
            fatalError("Failed to create file")
        }
        let group = file.createGroup("group")
        XCTAssertEqual(group.name, "/group")
        
        
        do {
            let writeData: Int32 = 678
            guard try group.writeScalarAttribute("Int32", writeData) != nil else {
                XCTFail()
                return
            }
            XCTAssertEqual(Int32(group.intAttributeValue("Int32")!), writeData)
            let eraseData: Int32? = nil
            XCTAssertNil(try group.writeScalarAttribute("Int32", eraseData))
            
            let deletedAttribute = group.intAttributeValue("Int32")
            XCTAssertNil(deletedAttribute)
        } catch {
            XCTFail()
        }
        
    }
    
}

import swiftra
import JSON
import Foundation

#if os(Linux)
    import Glibc
#endif


get("/hello/:name/:surname") { req in
    let response = "Hello \(req.parameters["name"]) \(req.parameters["surname"])"
    print(response)
    return response
}

post("/hello/:name/:surname") { req in
    guard let name = req.parameters["name"],
    let surname = req.parameters["surname"] else {
        return Response(.BadRequest)
    }

    let responseJSON: JSON = [ 
        "greeting": "Hello",
        "name": .StringValue(name),
        "surname": .StringValue(surname),
    ]
    print("Created object: \(responseJSON.debugDescription)")
    return responseJSON.description
}

print("Starting...")
serve(8888)
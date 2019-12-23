import XCTest
@testable import ArtInstitute

final class ArtInstituteTests: XCTestCase {

//    static var allTests = [
//        ("testCanFetchArtworks", testCanFetchArtworks),
//        ("testCanFetchOneArtwork", testCanFetchOneArtwork),
//        ("testCanFetchSecondPageOfResults", testCanFetchSecondPageOfResults)
//    ]
//
//    func testCanFetchArtworks() {
//        let expectation = XCTestExpectation(description: "testCanFetchArtworks")
//        let ai = ArtInstitute()
//        let subscriber = ai.api.getArtworks()
//            .sink(receiveCompletion: { (result) in
//                switch result {
//                case .failure(let error):
//                    XCTFail(error.localizedDescription)
//                case .finished:
//                    break
//                }
//                expectation.fulfill()
//            }) { (artworkResponse) in
//                XCTAssertFalse(artworkResponse.artwork.isEmpty)
//                expectation.fulfill()
//        }
//        wait(for: [expectation], timeout: 15)
//    }
//
//    func testCanFetchOneArtwork() {
//        let expectation = XCTestExpectation(description: "testCanFetchArtworks")
//        let ai = ArtInstitute()
//        let subscriber = ai.api.getArtworks(limit: 1)
//            .sink(receiveCompletion: { (result) in
//                switch result {
//                case .failure(let error):
//                    XCTFail(error.localizedDescription)
//                case .finished:
//                    break
//                }
//                expectation.fulfill()
//            }) { (artworkResponse) in
//                XCTAssertFalse(artworkResponse.artwork.isEmpty)
//                expectation.fulfill()
//        }
//        wait(for: [expectation], timeout: 15)
//    }
//
//    func testCanFetchSecondPageOfResults() {
//        let expectation = XCTestExpectation(description: "canFetchSecondPageOfResults")
//        let ai = ArtInstitute()
//
//        var pageOneIDs: [Int]?
//
//        let subscriber = ai.api.getArtworks(page: 1)
//            .sink(receiveCompletion: { (result) in
//                switch result {
//                case .failure(let error):
//                    XCTFail(error.localizedDescription)
//                case .finished:
//                    break
//                }
//
//            }) { (artworkResponse) in
//                XCTAssertFalse(artworkResponse.artwork.isEmpty)
//                pageOneIDs = artworkResponse.artwork.map({$0.id})
//        }
//
//        let secondarySubscriber = ai.api.getArtworks(page: 10)
//        .sink(receiveCompletion: { (secondResult) in
//                switch secondResult {
//                case .failure(let error):
//                    XCTFail(error.localizedDescription)
//                case .finished:
//                    break
//                }
//                expectation.fulfill()
//            }) { (secondResponse) in
//                XCTAssertFalse(secondResponse.artwork.isEmpty)
//                guard let firstIDs = pageOneIDs else {
//                    XCTFail("out of order. do this smarter.")
//                    return
//                }
//
//                let pageTenIDs = secondResponse.artwork.map({$0.id})
//                for id in firstIDs {
//                    XCTAssertFalse(pageTenIDs.contains(id))
//                }
//                expectation.fulfill()
//        }
//
//        wait(for: [expectation], timeout: 15)
//    }

}

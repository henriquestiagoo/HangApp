import Foundation

class APIClient {
    func getIssues() async throws -> [Issue] {
        try await Task.sleep(for: .milliseconds(500))
        return Issue.shortSample
    }
}

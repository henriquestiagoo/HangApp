import SwiftUI

struct IssuesView: View {
    private let apiClient = APIClient()
    @State private var issues: [Issue] = []

    var body: some View {
        NavigationStack {
            Group {
                if issues.isEmpty {
                    ProgressView()
                } else {
                    List(issues) { issue in
                        IssueRowView(issue: issue)
                    }
                }
            }
            .navigationTitle("Issues")
            .task {
                do {
                    self.issues = try await apiClient.getIssues()
                } catch {
                    print("Error: \(error)")
                }
            }
        }
    }
}

struct IssueRowView: View {
    let issue: Issue

    init(issue: Issue) {
        self.issue = issue

        DispatchQueue.global(qos: .background).async {
            // Perform heavy computation on a background thread
            (1...10_000).map { print("Issue \($0)") }
            Thread.sleep(forTimeInterval: 0.5)
        }
    }

    var body: some View {
        VStack(alignment: .leading) {
            Text(issue.title)
                .font(.headline)
            HStack {
                Text("Issue #\(issue.id)")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                Spacer()
                Text(issue.date.formatted(date: .abbreviated, time: .omitted))
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    IssuesView()
}

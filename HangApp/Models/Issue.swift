import Foundation

struct Issue: Codable, Hashable, Identifiable {
    var id: String
    var content: String
    var url: String
    var title: String
    var summary: String
    var date: Date
    var tags: [String]

    enum CodingKeys: String, CodingKey {
        case id, url, title, summary, tags
        case content = "content_html"
        case date = "date_modified"
    }
}

extension Issue {
    static let shortSample: [Issue] = [
        .init(
            id: "46",
            content: "<p>Welcome to <strong>issue #46</strong> of the <strong>iOS Coffee Break Newsletter</strong> 📬.</p>",
            url: "https://www.ioscoffeebreak.com/issue/issue46",
            title: "📋 Localizing An App with a String Catalog 🌎",
            summary: "This week, I will guide you through localizing the newsletter app using a String Catalog! Let's explore how to use this powerful new tool to make your app speak different languages!",
            date: Date.from(year: 2025, month: 05, day: 26),
            tags: ["Building a Newsletter App", "String Catalog"]
        ),
        .init(
            id: "45",
            content: "<p>Welcome to <strong>issue #45</strong> of the <strong>iOS Coffee Break Newsletter</strong> 📬.</p>",
            url: "https://www.ioscoffeebreak.com/issue/issue45",
            title: "🚖 Handling Deep Links from Push Notifications in SwiftUI 🔔",
            summary: "This week, I am taking things further by handling deep linking from notifications. I will show you how to direct users to a specific screen when they tap a notification.",
            date: Date.from(year: 2025, month: 05, day: 19),
            tags: ["Building a Newsletter App", "Deep Links"]
        ),
        .init(
            id: "44",
            content: "<p>Welcome to <strong>issue #44</strong> of the <strong>iOS Coffee Break Newsletter</strong> 📬.</p>",
            url: "https://www.ioscoffeebreak.com/issue/issue44",
            title: "👨‍🚀 Setting Up and Sending Remote Push Notifications 🔔",
            summary: "In this post, I will walk through how to set up your app to receive push notifications and show how you can configure a provider to send notifications for you.",
            date: Date.from(year: 2025, month: 05, day: 12),
            tags: ["Building a Newsletter App", "Push Notifications"]
        ),
        .init(
            id: "43",
            content: "<p>Welcome to <strong>issue #43</strong> of the <strong>iOS Coffee Break Newsletter</strong> 📬.</p>",
            url: "https://www.ioscoffeebreak.com/issue/issue43",
            title: "👨‍🏭 Implementing the Issues Detail View 🦫",
            summary: "In this edition, I will walk through how I built the issues detail view and how I handled navigation between screens.",
            date: Date.from(year: 2025, month: 05, day: 05),
            tags: ["Building a Newsletter App"]
        )
    ]
}

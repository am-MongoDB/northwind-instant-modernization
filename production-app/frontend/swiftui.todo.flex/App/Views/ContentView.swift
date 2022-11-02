import SwiftUI
import RealmSwift

struct ContentView: View {
    @ObservedObject var app: RealmSwift.App
    @EnvironmentObject var orderSettings: OrderSettings
    
    var body: some View {
        if let user = app.currentUser {
            
            let config = user.flexibleSyncConfiguration(initialSubscriptions: { subs in
                if let foundSubscription = subs.first(named: "user_tasks") {
                    // Existing subscription found - do nothing
                    return
                } else {
                    subs.append(QuerySubscription<order>(name: "user_tasks") {
                        $0.customerId != user.id
                    })
                }
            })
            OpenRealmView(user: user).environment(\.realmConfiguration, config)
        } else {
            // If there is no user logged in, show the login view.
            LoginView().environmentObject(orderSettings)
        }
        Text("Built with the Atlas Device Sync Template")
            .font(.footnote)
            .padding()
    }
}

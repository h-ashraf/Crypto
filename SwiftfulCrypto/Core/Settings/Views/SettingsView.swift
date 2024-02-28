import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "https://www.google.com")!
    let githubURL = URL(string: "https://github.com/h-ashraf")!
    
    var body: some View {
        NavigationView {
            ZStack {
                // background
                Color.theme.background
                    .ignoresSafeArea()
                
                // content
                List {
                    swiftfulThinkingSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    applicationSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                }
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Information")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView {
    
    private var swiftfulThinkingSection: some View {
        Section(header: Text("CryptoPurse")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("Welcome to our comprehensive crypto portfolio management app! Easily track and manage your cryptocurrency investments with precision and convenience. Seamlessly monitor the value of your holdings across various cryptocurrencies, allowing you to stay updated on their real-time market prices. Take control of your investment strategy by inputting the amount of each cryptocurrency you own and witnessing the fluctuating value of your holdings. With intuitive tools and up-to-date market data, this app empowers you to make informed decisions about your crypto investments. Simplify your crypto journey and stay ahead in the dynamic world of digital assets with our user-friendly and feature-rich portfolio tracker")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
        }
    }
    
   
    
    private var applicationSection: some View {
        Section(header: Text("Application")) {
            Link("Terms of Service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Company Website", destination: defaultURL)
            Link("Learn More", destination: defaultURL)
        }
    }
    
    
}

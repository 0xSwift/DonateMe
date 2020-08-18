import SwiftUI

struct DonationListView: View {
    let donations: [Donation]
    
    var body: some View {
        List(donations, id: \.self) { donation in
            DonateItemView(item: donation)
        }
    }
}

struct DonationListView_Previews: PreviewProvider {
    static var previews: some View {
        DonationListView(donations: [
            Donation(name: "Bat", donator: "Babe", dateDonated: "1946"),
            Donation(name: "Bat", donator: "Babe", dateDonated: "1946"),
            Donation(name: "Bat", donator: "Babe", dateDonated: "1946")
        ])
    }
}

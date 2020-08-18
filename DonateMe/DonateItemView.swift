import SwiftUI

struct Donation: Hashable {
    let name: String
    let donator: String
    let dateDonated: String
}

struct DonateItemView: View {
    let item: Donation
    
    var body: some View {
        HStack {
            Text(item.name)
                .font(.largeTitle)
            Spacer()
            VStack {
                Text(item.donator)
                Text(item.dateDonated)
            }
        }
        .padding()
        .frame(maxWidth: .infinity,
               minHeight: 60,
               maxHeight: 80,
               alignment: .center)
            .background(Color.gray)
        .cornerRadius(4)
        .padding()
    }
}

struct DonateItemView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DonateItemView(item: Donation(name: "Mac",
            donator: "Leif",
            dateDonated: "Tuesday"))
            DonateItemView(item: Donation(name: "Mac",
            donator: "Leif",
            dateDonated: "Tuesday")).preferredColorScheme(.dark)
        }
    }
}

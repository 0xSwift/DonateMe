//
//  DonateItemView.swift
//  DonateMe
//
//  Created by Zach Eriksen on 8/15/20.
//  Copyright © 2020 oneleif. All rights reserved.
//

import SwiftUI

struct Donation: Hashable {
    let name: String // Baseball Bat
    let donator: String // Zach
    let dateDonated: String // Sept 4th
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

//
//  ContentView.swift
//  DonateMe
//
//  Created by Zach Eriksen on 8/15/20.
//  Copyright © 2020 oneleif. All rights reserved.
//

import SwiftUI
import Later

struct ContentView: View {
    @State var donations = [Donation]()
    
    var body: some View {
        NavigationView {
            DonationListView(donations: donations)
                .navigationBarTitle("DonateMe")
                .onAppear {
                    let task = Later.scheduleRepeatedTask(delay: .seconds(3)) { (task) in
                        
                        self.donations.append(Donation(name: "Blue Eyes White Dragon",
                                                  donator: "YooGIUYOOO",
                                                  dateDonated: "1995"))
                    }
                    
                    
                    Later.scheduleTask(in: .seconds(10)) {
                        task.cancel()
                    }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  HomeView.swift
//  Crypto App
//
//  Created by Sufiyaan Momin on 1/3/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                //Highest Movers View
                TopMoversView(viewModel: viewModel)
                Divider()
                
                //All Coins
                AllCoinsView(viewModel: viewModel)
                
            }
            .navigationTitle("Cryptocurrency Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

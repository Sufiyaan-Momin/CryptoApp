//
//  AllCoinsView.swift
//  Crypto App
//
//  Created by Sufiyaan Momin on 1/3/24.
//

import SwiftUI

struct AllCoinsView: View {
    @StateObject var viewModel: HomeViewModel
    var body: some View {
        VStack{
            Text("All Coins")
                .font(.headline)
            
            HStack{
                Text("Coin")
                Spacer()
                Text("Prices")
            }
            .font(.caption)
            .padding(.horizontal)
            
            ScrollView{
                VStack{
                    ForEach(viewModel.coins) { coin in
                        CoinRowView(coin: coin)
                    }
                }
            }
            
        }
    }
}


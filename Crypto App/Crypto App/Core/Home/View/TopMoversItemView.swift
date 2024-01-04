//
//  TopMoversItemView.swift
//  Crypto App
//
//  Created by Sufiyaan Momin on 1/3/24.
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    let coin: Coin
    var body: some View {
        VStack{
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width:32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            
            HStack{
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                
                Text(coin.currentPrice.toCurrency())
                    .font(.caption)
                    .foregroundColor(.black)
            }
            
            Text(coin.priceChangePercentage24H.toPercentString())
                .font(.title2)
                .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
        }
        .frame(width: 140, height: 140)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 2)
        )
    }
}



//
//  CoinRowView.swift
//  Crypto App
//
//  Created by Sufiyaan Momin on 1/3/24.
//

import SwiftUI
import Kingfisher

struct CoinRowView: View {
    let coin: Coin
    
    var body: some View {
        HStack{
            Text("\(coin.marketCapRank)")
                .font(.caption)
                .foregroundColor(.gray)
            
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                
            
            
            VStack(alignment: .trailing, spacing: 4){
                Text(coin.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .padding(.trailing, 6)
            }
            .padding(.leading, 2)
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 4){
                Text(coin.currentPrice.toCurrency())
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text(coin.priceChangePercentage24H.toPercentString())
                    .font(.caption)
                    .padding(.leading, 6)
                    .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
            }
            .padding(.leading, 2)
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}



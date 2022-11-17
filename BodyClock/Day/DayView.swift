//
//  DayView.swift
//  BodyClock
//
//  Created by Jakub Łaszczewski on 13/11/2022.
//

import SwiftUI

struct DayView: View {
    @ObservedObject var viewModel: DayViewModel
    
    init(date: Date) {
        self.viewModel = DayViewModel(date: Date())
    }
    
    var body: some View {
        if let errorMessage = viewModel.errorMessage {
            Text(errorMessage)
                .foregroundColor(.red)
                .font(.title2)
                .bold()
        } else {
            List {
                ForEach(viewModel.phases) { organPhase in
                    HStack() {
                        Text(organPhase.start, style: .time)
                        Spacer()
                        Text(viewModel.name(for: organPhase.organ))
                            .bold()
                        Spacer()
                        Text(organPhase.end, style: .time)
                    }
                    .foregroundColor(
                        viewModel.isCurrent(organPhase: organPhase) ? .green : .primary)
                }
            }
            .onAppear { viewModel.loadPhases() }
        }
    }
}

struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        DayView(date: Date())
    }
}

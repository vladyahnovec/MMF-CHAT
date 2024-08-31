import SwiftUI

struct DropDownView : View {
    let title = "Моя работа"
    let options = ["Филимонов Д.В": "Распределение курсовых работ"]
    
    @State private var isExpanded = false
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                HStack {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Image("task")
                            Text(title)
                                .font(.custom("Inter-Regular", size: 18))
                            Spacer()
                            Image(systemName: "chevron.down")
                                .rotationEffect(.degrees(isExpanded ? -180 : 0))
                                .onTapGesture {
                                    withAnimation(.easeInOut(duration: 0.3)) {
                                        isExpanded.toggle()
                                    }
                                }
                        }
                        .frame(width: 324, height: 54)
                        .padding(.horizontal, 20)
                        .background(Color.lightGreenColor)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        if isExpanded {
                            VStack(alignment: .leading) {
                                ForEach(options.sorted(by: <), id: \.key) { key, value in
                                    HStack {
                                        ZStack {
                                            Rectangle()
                                                .fill(Color.lightGreenColor)
                                                .frame(width: 364, height: 150)
                                                .cornerRadius(10)
                                                .padding(.top, -15)
                                            VStack(alignment: .leading) {
                                                Text(key)
                                                    .font(.custom("Inter-Regular", size: 20))
                                                    .font(.custom("Inter-Regular", size: 18))
                                                Text(value)
                                            }
                                            .padding(10)
                                            .frame(width: 324, height: 85)
                                            .background(Color.greenColor)
                                            .cornerRadius(10)
                                            .foregroundColor(.white)
                                        }
                                    }
                                }
                            }
                        }
                    }
                    Spacer()
                }
                .frame(width: 364, height: 54)
            }
        }
        .padding(.top, isExpanded ? 67 : 0)
    }
}

struct DropDownView_Previews: PreviewProvider {
    static var previews: some View {
        DropDownView()
    }
}

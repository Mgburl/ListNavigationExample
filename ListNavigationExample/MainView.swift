import SwiftUI

struct MainView: View {
    
    var kits: [Kits] = KitsList.someKits
    
    var body: some View {
        
        NavigationView {
            
            List(kits, id: \.id) { kit in
                
                CellView(kits: kit)
                
            }
            .navigationTitle("Apple Kits")
        }
        .preferredColorScheme(.light)
    }
}

struct CellView: View {
    
    var kits: Kits
    
    var body: some View {
        
        HStack(spacing: 30) {
            
            NavigationLink(destination: DetailView(kit: kits), label: { Text("") })
                .frame(width: 10)
            
            Image(kits.imageName)
                .resizable()
                .scaledToFit()
                .frame(maxHeight: 100)
                .frame(minHeight: 100)
                .padding(.vertical, 5)
            
            
            VStack(alignment: .center) {
                Text(kits.title)
                    .font(.system(size: 30, weight: .medium, design: .default))
                    .foregroundColor(.black)
                    .lineLimit(1)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

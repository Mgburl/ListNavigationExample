import SwiftUI

struct DetailView: View {
    
    var kit: Kits
    
    var body: some View {
        
        VStack(spacing: 30) {
            
            Spacer()
            
            Image(kit.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
            
            Text(kit.title)
                .font(.system(size: 40, weight: .semibold, design: .rounded))
                .lineLimit(1)
                .multilineTextAlignment(.center)
                .padding()
            
            Text(kit.description)
                .font(.system(size: 25, weight: .medium, design: .rounded))
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            Spacer()
            
            Link(destination: kit.url, label: {
                
                Text("Learn More")
                    .foregroundColor(.white)
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                    .frame(width: 250, height: 50)
                    .background(.red)
                    .cornerRadius(8)
                
            })
            .padding(.bottom, 25)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        DetailView(kit: KitsList.someKits.first!)
        
    }
}


import SwiftUI

struct home: View {
  var body: some View {
    VStack {
      HeaderView()
      
      ScrollView(.vertical, showsIndicators: false) {
        HomeStories()
        
        Divider()
        
        PostView(content: "82E0B6D8-A55A-4804-AE73-3DA41EC9CF0D", description: "This is the user generated description.")
            
      }
    
    }
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
struct HeaderView: View {
  var body: some View {
    HStack {
     Text("instagram")
        .frame(width: 100, height: 50)
      
      Spacer()
      
      HStack(spacing: 10) {
        Image(systemName: "message")
      }
    }
    .padding(.horizontal, 16)
    .padding(.vertical, 8)
  }
}
struct StoryView: View {
  var image: String
  var name: String

  private var imageSize: CGFloat = 60
  private var lineWidth: CGFloat = 2.5
  private var overlayColors: [Color] = [ .blue, .purple, .red, .pink,.orange]
  
  public init(image: String, name: String) {
    self.image = image
    self.name = name
  }
  
  var body: some View {
    VStack {
      VStack {
        Image(image)
          .resizable()
          .frame(width: 65, height: 65)
          .cornerRadius(55)
      }
      .overlay(
        Circle()
          .stroke(
            LinearGradient(colors: overlayColors, startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: lineWidth)
          .frame(width: 100, height: 70)
      )
      .frame(width: 65, height:80)
      
      Text(name)
        .font(.caption)
    }
  }
}
struct HomeStories: View {
  
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack(spacing: 16) {
        StoryView(image: "PASSPORT PHOTO", name: "rachit")
        StoryView(image: "5FEA034F-8A26-4D53-8D43-D2321EA3E596", name: "simran")
        StoryView(image: "C1768CD1-105C-405D-8073-715155B8AC4D_1_105_c", name: " atharv")
        StoryView(image: "0024EE89-FA77-4BEB-A5D8-B8C5A7095E9A", name: "tammey ")
          StoryView(image: "55365CB1-F2CC-4D40-87D8-397BCDAC7F4E_4_5005_c", name: "kev ")
      }
      .padding(.horizontal, 8)
    }
    .padding(.vertical, 12)
  }
  
}
struct PostHeader: View {
  
  private var imageSize: CGFloat = 40
  
  var body: some View {
    HStack {
      HStack {
        Image("2627A66B-3D44-46A2-9930-2CC4A0BCB9AF")
          .resizable()
          .frame(width: 30, height: 30)
          .cornerRadius(30)
        
        Text("teni")
          .font(.caption)
          .fontWeight(.bold)
      }
      
      Spacer()
      
      Image(systemName: "ellipsis")
    }
    .padding(.vertical, 12)
    .padding(.horizontal, 8)
  }
}

struct PostContent: View {
  
  var name: String
  
  public init(name: String) {
    self.name = name
  }
  
  var body: some View {
    VStack {
      Image("82E0B6D8-A55A-4804-AE73-3DA41EC9CF0D")
        .resizable()
        .frame(width:350,height: 350)
        .aspectRatio(contentMode: .fit)
      
      HStack {
        HStack {
          Image(systemName: "heart")
          Image(systemName: "message")
          Image(systemName: "envelope")
        }
        Spacer()
        
        Image(systemName: "bookmark")
      }
      .padding(.horizontal, 12)
      .padding(.vertical, 10)
    }
  }
}

struct PostView: View {
  
  var postName: String
  var description: String
  
  public init(content: String, description: String) {
    self.postName = content
    self.description = description
  }
  
  var body: some View {
    VStack(alignment: .leading, spacing: 0) {
      PostHeader()
      
      PostContent(name: postName)
      }
      .frame(width: .infinity)
      .padding(.horizontal, 12)
    }
  }



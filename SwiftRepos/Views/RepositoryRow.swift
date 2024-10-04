import SwiftUI

struct RepositoryRow: View {
  var repository: Repository
  
  var body: some View {
      // display a repository's name and decription instead of generic Hello World! text
      //Text("Hello World!")
      VStack(alignment: .leading) {
                Text(repository.name)
                Text(repository.itemDescription ?? "")
            }
  }
}

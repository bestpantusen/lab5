import SwiftUI

struct ContentView: View {
//  var searchField: String = ""
//  var displayedRepos = [Repositories.Repository]()
  @ObservedObject var viewModel = ViewModel()
  
  @State var searchField: String = ""
  @State var displayedRepos = [Repository]()
  
  var body: some View {
    
    //Text("Hello World!")
    let binding = Binding<String>(get: {
        self.searchField
      }, set: {
        self.searchField = $0
        self.viewModel.search(searchText: self.searchField)
        self.displayRepos()
      })

  }
  
  
  func loadData() {
    Parser().fetchRepositories { (repos) in
      self.viewModel.repos = repos
      self.displayedRepos = repos
    }
  }

  func displayRepos() {
    if searchField == "" {
      displayedRepos = viewModel.repos
    } else {
      displayedRepos = viewModel.filteredRepos
    }
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

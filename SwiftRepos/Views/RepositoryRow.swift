import SwiftUI

struct RepositoryRow: View {
    var repository: Repository

    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 4) {
                Text(repository.name)
                    .font(.headline) // Use a larger font for the name
                    .foregroundColor(.primary)
                
                // Use a default value for optional itemDescription
                Text(repository.itemDescription ?? "No description available")
                    .font(.subheadline) // Use a smaller font for the description
                    .foregroundColor(.secondary)
                    .lineLimit(2) // Limit to 2 lines to prevent overflow
            }
            Spacer()
        }
        .padding(.vertical, 8) // Add padding to match the desired style
    }
}

//struct RepositoryRow_Previews: PreviewProvider {
//    static var previews: some View {
//        RepositoryRow(repository: Repository(
//            id: 1,
//            name: "Sample Repo",
//            htmlURL: "https://github.com/example",
//            itemDescription: "This is a sample description for the repository."
//        ))
//            .previewLayout(.sizeThatFits)
//            .padding()
//    }
//}

<h1 style="font-size: 36px;">Movie App</h1>

<h2 style="font-size: 24px;">Overview</h2>

This SwiftUI project aims to create a simple movies catalog app with two main pages: MovieListView to display a list of movies and MovieDetailView to show details about a selected movie. The app utilizes a NetworkingManager class for fetching movie data from an API and a reusable subview called MovieItemView for rendering individual movie items in the list.

<h2 style="font-size: 24px;">Project Structure</h2>

The project is organized into distinct folders:

Models: Contains the data model structures used in the app (Movie and MovieResponse).
Screens: Holds the SwiftUI views representing the different screens in the app (MovieListView and MovieDetailView).
Utilities: Includes the NetworkingManager class responsible for handling API requests.
Views: Contains the MovieItemView subview used to render individual movie items in the list.

<h2 style="font-size: 24px;">Networking Manager</h2>

The NetworkingManager class is designed as a singleton (NetworkManager.shared) and provides a method (fetchMovies) to asynchronously fetch movies from a specified API endpoint. It uses a basic error handling mechanism to notify the caller in case of any issues during the network request or data decoding.

class NetworkManager: ObservableObject {

    static let shared = NetworkManager()

    func fetchMovies(success: @escaping ([Movie]) -> Void,
                     failureHandler failure: @escaping (_ errorMessage: String?) -> Void) {
        // ... implementation ...
    }
}

<h2 style="font-size: 24px;">MovieItemView</h2>

The MovieItemView is a SwiftUI subview responsible for rendering individual movie items in the list. It displays the movie title and description (if available) in a vertical stack.

struct MovieItemView: View {
    // ... implementation ...
}

<h2 style="font-size: 24px;">MovieListView</h2>

The MovieListView is the main screen of the app, displaying a list of movies fetched from the API. It uses the NetworkingManager to fetch data asynchronously and handles the presentation of the movie list.

struct MovieListView: View {
    // ... implementation ...
}
<h2 style="font-size: 24px;">MovieDetailView</h2>

The MovieDetailView displays detailed information about a selected movie. It currently shows a placeholder image and utilizes a GeometryReader to ensure the image fills the available space.

struct MovieDetailView: View {
    // ... implementation ...
}

<h2 style="font-size: 24px;">Getting Started to run your project</h2>

Prerequisites:
1. Xcode Installed:
   
3. iOS 17:

Ensure that you have a version of Xcode that supports the iOS version you are targeting. This might involve keeping your Xcode installation up-to-date with the latest version available at the time.

3. Make sure you have Xcode installed on your machine. You can download it from the Mac App Store.
GitHub Account:

If the project is hosted on GitHub, you'll need a GitHub account to clone the repository.

Steps:
1. Clone the Project:

Open Terminal (macOS) or Command Prompt (Windows).

Navigate to the directory where you want to clone the project using the cd command. For example:

cd Documents

Clone the project using the following command (replace <repository_url> with the actual URL of the GitHub repository):

git clone <repository_url>

Example

git clone [https://github.com/yourusername/your-repo.git](https://github.com/lns2023/api.git)

2. Open the Project in Xcode:

Open Xcode.

Choose File > Open... in Xcode.

Navigate to the directory where you cloned the project and select the project's .xcodeproj or .xcworkspace file.

Click Open.

3. Select a Simulator Device:

In the top left corner of the Xcode window, you'll find a toolbar with your project name and a target device.

Click on the target device next to your project name (it may be something like "iPhone 13" or "My Mac").

A dropdown menu will appear, allowing you to choose a simulator device. Select the simulator device you want to run the app on. If you don't see any simulators, click on "Add Additional Simulators..." to create new ones.

4. Run the App:

Click the Run button (a play arrow) in the top left corner of Xcode.

Xcode will build the project and launch the selected simulator. It may take a moment.

The app will start running on the simulator, and you should see the app's interface.

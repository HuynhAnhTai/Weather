# Overview
A weather app is a tool that helps us monitor the weather for a specific location using either a city name or a zip code.

# Features
* Retrieve the weather for a particular location by inputting either the city name or the zip code.
* Display weather data including the date, state of weather, and additional information such as pressure, wind speed, humidity, visibility, sunset time, and sunrise time.
* Convert the data from Celsius to Fahrenheit and then back to Celsius.
* Error handling: invalid input, weather data can't be retrieved, loss of connection during the retrieval process.

# Prerequisites
* Flutter 3.13.3 or higher

# How to run app
## 1. Clone project
   Clone the repository to your local environment.
```
git clone https://github.com/HuynhAnhTai/Weather.git
```
## 2. Install the dependecies
Install all the dependecies to run the project
```
flutter pub get
```
## 3. Run the app
```
flutter run
```
# Project Structure
In folder ```lib``` of project, I separate it to 3 parts
   * ```infrastructure``` - Including all files related to system project
   * ```l10```- Including localize files
   * ```screen```- Including all UI-related files for the app's screen.
## 1. Folder ```infrastructure```
   * ```common``` - Including all the files utilized in various parts of the project
     * ```asset_path``` - Including all path assets
     * ```bloc``` - Including all files BloC common like loading_bloc, popup_bloc
     * ```color``` - Including all colors in app
     * ```extension``` - Including all extensions type in app
     * ```helper``` - Including all files helper in app
     * ```view``` - Including UI which use common in app
   * ```data``` - Including file related to model
   * ```injection_dependencies``` - It was automatically generated upon registering dependency injection
   * ```manager``` - Including all files related to manage data, like call api and map data json to model
   * ```network``` - Place to config api, end point
   * ```presenter``` - Containing a base layer presenter for each screen
   * ```state``` - Containing a base state for each statefull screen
   * ```view_app``` - Containing a file to connect between view and presenter and init BloC for each screen
## 2. Folder ```l10```
Contains all localizes in app
## 3. Folder ```screen```
Contains all UI screens in app, with each screen, we have 3 parts
   * Screen
   * Presenter
   * State (Bloc)
# Demo App


https://github.com/HuynhAnhTai/Weather/assets/47748453/77d8595d-ede4-4621-8871-d6cf2222887c


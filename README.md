# Noughts & Crosses
This is a Flutter (desktop) demo for the classic game Tic-Tac-Toe.  
You are free to use the source code presented in this repository, but do note that derivative works may need to have their source code released (AGPL v3 license).


## Platform:
Target Platform: | Tested: |
---|---
Windows 10 Version 202H | Windows 10 Version 1809
Flutter 1.27.0-1.0.pre • channel dev | Flutter 1.27.0-1.0.pre • channel dev
Dart 2.13.0 | Dart 2.13.0

*To get started with Flutter for Windows: [click here](https://flutter.dev/docs/get-started/install/windows)*

## Set-up Flutter Desktop
1. After downloading and installing Flutter (see above), open up a shell
    - In my case, I will be using PowerShell Core 7.0 on Windows Terminal
2. Set the channel to developmental: `flutter channel dev`    
3. Grab the latest updates: `flutter upgrade`
4. Enable the Windows platform option: `flutter config --enable-windows-desktop`
    - This is disabled by default, as Flutter's desktop support feature is currently still in development
5. Run `flutter doctor` to check for any issues to be resolved
6. Run `flutter devices` and make sure **Windows (desktop)** is one of the available options

### Testing on IntelliJ
You may use any IDEs you like, but I will be using IntelliJ.  
1. Navigate to `File -> Settings...`
2. In the side panel, expand `Languages & Frameworks`
3. Select `Flutter`
4. Add the appropriate Flutter SDK path (i.e. where you installed it)  
![](https://i.imgur.com/IX5NHwY.png)
5. Navigate to `noughts_and_crosses/noughts_and_crosses/lib/main.dart`
6. Right-click on it (in the side panel) and hit `Run...`

### Building for Release
You may use `flutter build windows` to compile for release.  
For packaging into installers, refer to the official Flutter docs, as this changes from time to time.

## Disclaimer
*This project was created as a Flutter demonstration, and is intended to be used for educational purposes only. It is non-monetised, and provided as is. Every effort has been taken to ensure correctness and reliability at the time of writing. I will not be liable for any special, direct, indirect, or consequential damages or any damages whatsoever resulting from loss of use, data or profits, whether in an action if contract, negligence or other tortious action, arising out of or in connection with the use of material from this repository (in part or in whole).*

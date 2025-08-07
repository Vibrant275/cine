# 🎬 Cine – The Ultimate Flutter Media Player

**Cine** is a powerful, elegant, and customizable media player built with Flutter, designed to deliver an immersive and flexible video playback experience. Whether you're watching videos from your internal storage or streaming online content, Cine offers smooth performance, rich controls, and all the essential features you'd expect from a modern media player like MX Player or VLC — all wrapped in a beautiful UI.

---

## 🚀 Features

- 🎥 **Play Local & Online Videos**  
  Browse videos from your device or paste any video URL to stream instantly.

- 🧭 **Advanced Playback Controls**
    - Double-tap to seek (customizable duration)
    - Adjustable playback speed
    - Volume, brightness & seek gestures
    - Lock screen mode
    - Orientation lock

- 📝 **Subtitle Support**
    - Load `.srt` subtitle files
    - Toggle on/off, adjust position and sync
    - Search subtitles online (OpenSubtitles integration)

- 🎛 **Customization & Settings**
    - Change seek duration
    - Select default playback speed
    - Gesture control toggle
    - Light/Dark theme switch
    - Enable/Disable PiP & background play

- 📸 **Utility Tools**
    - Save thumbnail of current frame
    - Record current playback (native support)
    - View video info: duration, resolution, size

- 📱 **Advanced System Features**
    - Picture-in-Picture (PiP) mode
    - Background playback (Android)
    - Fullscreen toggle & system UI control

- 📂 **Smart File Handling**
    - Playlist & queue management
    - Recent videos list
    - Resume playback from last position

---

## 📦 Tech Stack

- **Flutter** for UI & logic
- **video_player** for core playback
- **subtitle_wrapper_package** for subtitle support
- **file_picker**, **permission_handler**, **path_provider** for storage access
- **Platform Channels (C++/Kotlin/Swift)** for:
    - Brightness & volume control
    - Background playback
    - PiP mode
    - Video recording

---

## 🛠️ Installation

```bash
git clone https://github.com/your-username/cine-player.git
cd cine-player
flutter pub get
flutter run
# Flutter Instagram Feed UI Clone

A Flutter implementation of the Instagram Home Feed UI created as part of a UI/UX engineering challenge.
The project focuses on visual accuracy, smooth scrolling performance, gesture interactions, and clean architectural structure.

This application replicates the core behavior of the Instagram feed including stories, carousel posts, pinch-to-zoom images, shimmer loading states, and infinite scrolling.

---

## Features

### Feed Layout

* Instagram-style top navigation bar
* Stories horizontal scrolling tray
* Post feed with user profile, images, and caption

### Carousel Posts

* Multiple images per post
* Smooth horizontal swipe interaction
* Page indicator for image navigation

### Image Interaction

* Pinch-to-zoom gesture support
* Smooth scaling and panning behavior

### Stateful Actions

* Like toggle
* Save toggle
* Comment and Share buttons display Snackbar feedback

### Loading State

* Shimmer loading placeholders
* Simulated network latency

### Pagination

* Infinite scrolling implementation
* New posts automatically load near the bottom of the feed

### Performance

* Cached network image loading
* Smooth scrolling physics
* Lightweight widget structure

---

## Project Architecture

The project follows a modular Flutter architecture separating UI components, state management, and data sources.

```
lib/
│
├── main.dart
│
├── models/
│   └── post_model.dart
│
├── providers/
│   └── feed_provider.dart
│
├── services/
│   └── post_repository.dart
│
├── screens/
│   └── feed_screen.dart
│
└── widgets/
    ├── story_list.dart
    ├── story_item.dart
    ├── post_card.dart
    ├── post_carousel.dart
    ├── post_actions.dart
    └── shimmer_post.dart
```

### Layer Responsibilities

**Models**

Defines the structure of application data.

**Repository**

Acts as a simulated data source that returns mock posts with artificial latency.

**Provider**

Manages the application state and handles pagination and UI updates.

**Widgets**

Reusable UI components used to build the feed interface.

**Screens**

Defines the main application screen that composes all UI components.

---

## Technology Stack

Flutter
Provider (state management)
CachedNetworkImage
Shimmer
SmoothPageIndicator

---

## Mock Data Strategy

The application intentionally does not use a backend service.

Instead:

* A repository layer simulates API behavior.
* A delay of 1.5 seconds mimics network latency.
* Public image URLs are used as post content.

This approach allows demonstration of loading states and pagination without requiring a backend.

---

## Running the Project

Clone the repository

```
git clone https://github.com/Jigyasa-Awasthi30/Flutter-Instagram-Feed-UI-Clone.git
```

Navigate to the project directory

```
cd flutter-instagram-feed-clone
```

Install dependencies

```
flutter pub get
```

Run the application

```
flutter run
```

---

## Demo

The demonstration video includes:

* Shimmer loading state
* Stories horizontal scroll
* Carousel image interaction
* Pinch-to-zoom gesture
* Like and Save toggles
* Infinite scrolling feed

---

## UI Preview

Add screenshots of the application here. Example screenshots can include:

* Home feed layout
* Carousel image swipe
* Image zoom interaction

---

## Learning Objectives

This project demonstrates the following concepts:

* Flutter UI composition
* Gesture handling
* Infinite scroll pagination
* Image caching and optimization
* Clean architectural separation in Flutter applications

---

## Future Improvements

Potential improvements include:

* Double-tap like animation
* Real backend API integration
* Comment interaction screen
* Story viewer interface
* Dark mode support

---



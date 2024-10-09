# gapopa

Image Search app powerered by pixabay.com
- [Introduction](#(https://pratham-sarankar.github.io/gapopa))
<img width="1440" alt="Screenshot 2024-10-10 at 1 18 34 AM" src="https://github.com/user-attachments/assets/8bbc6f0d-487d-4865-a83a-69090c95abcd">

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Deployment](#deployment)
- [Contributing](#contributing)
- [License](#license)

## Introduction

Discover stunning images with Gapopa, a Flutter-based web app powered by Pixabay. Explore a vast collection of high-quality photos, search by keyword, and save your favorites. Enjoy a seamless and intuitive experience on any device.

## Features

- Fetch images from Pixabay API
- Responsive web design
- Single Page Application (SPA) architecture

## Installation

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Node.js: [Install Node.js](https://nodejs.org/)

### Steps

1. Clone the repository:

    ```sh
    git clone https://github.com/pratham-sarankar/gapopa.git
    cd gapopa
    ```

2. Install dependencies:

    ```sh
    flutter pub get
    ```

3. Set up the environment variable:

    ```sh
    echo "PIXABAY_API_KEY=your_api_key_here" >> env
    ```

## Usage

### Running Locally

To run the Flutter web app locally in Chrome:

```sh
flutter run -d chrome

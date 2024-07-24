# Contributing Guidelines

First of all, thank you for considering contributing to the `expansion_tile_group` project! Open source projects like this one grow and thrive thanks to the contributions from people like you. Whether you're fixing bugs, adding new features, improving the documentation, or even reporting issues, every contribution is valuable and appreciated.

This document provides some guidelines to help ensure that your contributions are as effective as possible. Please take a moment to read through these guidelines before submitting your contribution.

Remember, everyone contributing to this project is expected to follow our code of conduct. This helps ensure a positive and inclusive environment for all contributors.

Thank you again for your contributions, and we look forward to seeing what you will bring to the `expansion_tile_group` project!

## Creating Good Tickets

> [!TIP]
> Before creating a new issue, it's a good practice to search for open tickets and pull requests to avoid duplicates.

### Bug Reports

You can bug reports [here](https://github.com/congthanhng/Expansion-Tile-Group/issues)

When reporting a bug, please include the following information:

1. **Title**: A brief, descriptive title for the bug.
2. **Version**: The version of the package you are using.
3. **Operating System**: The OS on which the problem occurs.
4. **Output of `flutter doctor -v`**: Required when used with Flutter.
5. **Dart Version**: The version of Dart you are using.
6. **Steps to Reproduce**: Detailed steps on how to reproduce the bug.
7. **Expected Result**: What you expected to happen.
8. **Actual Result**: What actually happened. Include logs, screenshots, or any other relevant information.

### Feature Requests

You can contribute a new feature create a new pull request [here](https://github.com/congthanhng/Expansion-Tile-Group/pulls)

When requesting a new feature, please include the following information:

1. **Title**: A brief, descriptive title for the feature request.
2. **Request Statement**: Describe the problem that you believe the `expansion_tile_group` project could solve but currently doesn't.
3. **Solution Brainstorm**: Share your ideas on how the problem could be solved. If you don't have a specific solution in mind, that's okay too!

> [!TIP]
> Remember, the more information you provide, the easier it is for us to understand and address the issue. Thank you for your contributions!
> Please refrain from commenting on old, closed tickets. If an old issue seems related but doesn't fully address your problem, it's best to open a new ticket and reference the old one instead.


### Setup

To get started, you will clone the repository and install the dependencies:

```bash
git clone https://github.com/congthanhng/Expansion-Tile-Group
flutter pub get
```

## Submitting changes

Before submitting your changes as a pull request, please make sure to format and analyze your and run the all tests. Here are the main scripts you should be aware of:

### Code quality

To analyze all packages, run:
```bash
flutter analyze
```
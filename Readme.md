# Godot Procedural Faker

**Godot Procedural Faker** is an open source Godot addon inspired by the Ruby gem [ffaker](https://github.com/ffaker/ffaker). It provides tools to generate procedural, fake data for testing, prototyping, development or ingame purposes.

## Features

- Generate random names, addresses, emails, and more
- Easily extendable for custom data types
- Lightweight and fast
- Designed for use in Godot projects

## Installation

1. Download or clone this repository and add `addons/godot-procedural-faker` into your Godot project's `addons` folder.
2. Enable the addon in your project settings.

## Usage

```gdscript
var faker = ProceduralFaker.new()
print(faker.product().brand())
print(faker.game().title())
print(faker.skill().specialty())
```

**[See more →](REFERENCE.adoc)**

### Using seeds

You can get deterministic and repeatable data setting a seed on the exposed `RandomNumberGenerator` on a faker object:

```gdscript
var faker = ProceduralFaker.new()
faker.rng.seed = hash("My Custom Seed")
print(faker.product().brand())
print(faker.product().product_name())
print(faker.product().product())
```

Note that the faker object is initialized with a randomized seed based on the timestamp. Godot `RandomNumberGenerator` can produce similar results for similar seeds, this behaviour could appear on this addon too.

## Contributing

Contributions are welcome! Please open issues or submit pull requests for new features, bug fixes, or improvements.

### TODOS

- Import more generators from original ffaker, prioritizing the ones that seems more important for game development
- Add localization modules
- Add custom data generators
- Improve code organization
- Improve performance

## License

Copyright (c) 2025 Gustavo Canedo.
Copyright (c) 2013 Emmanuel Oga.
Copyright (c) 2007 Benjamin Curtis
See LICENSE for details.

## Credits

Inspired by [ffaker](https://github.com/ffaker/ffaker).
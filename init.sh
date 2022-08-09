#!/bin/bash

flutter clean
flutter pub get
./lang_gen
spider build
flutter pub run build_runner build --delete-conflicting-outputs
flutter analyze
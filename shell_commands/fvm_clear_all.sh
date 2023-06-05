#!/bin/bash

find . -name "pubspec.yaml" -execdir fvm flutter clean \;

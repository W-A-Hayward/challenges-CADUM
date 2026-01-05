#!/bin/bash

# Script to install all missing dependencies for React Native Challenge Repos
# Run this from the challenges_repos directory

set -e  # Exit on error

echo "🚀 Installing dependencies for all challenges..."
echo ""

# Challenge 1: Starship Dashboard
# No additional packages needed (simple App.tsx)
echo "📦 Challenge 1: Starship Dashboard"
cd challenge-1/starship-dashboard
if [ -f "package.json" ]; then
    echo "  Installing dependencies..."
    npm install
    echo "  ✓ Challenge 1 dependencies installed"
else
    echo "  ⚠ package.json not found"
fi
cd ../..
echo ""

# Challenge 2: Auto Clicker
# No additional packages needed (simple App.tsx, no navigation)
echo "📦 Challenge 2: Auto Clicker"
cd challenge-2/auto-clicker
if [ -f "package.json" ]; then
    echo "  Installing dependencies..."
    npm install
    echo "  ✓ Challenge 2 dependencies installed"
else
    echo "  ⚠ package.json not found"
fi
cd ../..
echo ""

# Challenge 3: Pokédex
# Needs @react-navigation/stack
echo "📦 Challenge 3: Pokédex"
cd challenge-3/my-pokedex
if [ -f "package.json" ]; then
    echo "  Installing dependencies..."
    npm install
    echo "  Installing @react-navigation/stack..."
    npm install @react-navigation/stack
    echo "  ✓ Challenge 3 dependencies installed"
else
    echo "  ⚠ package.json not found"
fi
cd ../..
echo ""

# Challenge 4: Level Selector
# Needs @react-navigation/stack
echo "📦 Challenge 4: Level Selector"
cd challenge-4/level-selector
if [ -f "package.json" ]; then
    echo "  Installing dependencies..."
    npm install
    echo "  Installing @react-navigation/stack..."
    npm install @react-navigation/stack
    echo "  ✓ Challenge 4 dependencies installed"
else
    echo "  ⚠ package.json not found"
fi
cd ../..
echo ""

# Challenge 5: D&D Companion
# Needs @react-navigation/stack and @react-native-async-storage/async-storage
echo "📦 Challenge 5: D&D Companion"
cd challenge-5/dnd-companion
if [ -f "package.json" ]; then
    echo "  Installing dependencies..."
    npm install
    echo "  Installing @react-navigation/stack..."
    npm install @react-navigation/stack
    echo "  Installing @react-native-async-storage/async-storage..."
    npm install @react-native-async-storage/async-storage
    echo "  ✓ Challenge 5 dependencies installed"
else
    echo "  ⚠ package.json not found"
fi
cd ../..
echo ""

echo "✅ All dependencies installed!"
echo ""
echo "Summary of packages installed:"
echo "  Challenge 1: Basic Expo dependencies"
echo "  Challenge 2: Basic Expo dependencies"
echo "  Challenge 3: @react-navigation/stack"
echo "  Challenge 4: @react-navigation/stack"
echo "  Challenge 5: @react-navigation/stack, @react-native-async-storage/async-storage"


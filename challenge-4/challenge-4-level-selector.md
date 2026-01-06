# Challenge 4: The Level Selector Navigation

**Estimated Time:** 50-60 minutes  
**Difficulty:** Intermediate  
**Theme:** Game Level Selection

---

## Challenge Scenario

🎮 **GAME NAVIGATION SYSTEM FAILURE** 🎮

You're working on "Retro Arcade Master", a collection of classic arcade-style games. The game has multiple levels, each with different difficulty settings and unique challenges. However, the navigation system is completely broken:

- Players can't navigate from the level select screen to the game screen
- Level data (difficulty, best score, unlocked status) isn't being passed
- The back button doesn't work
- Screen headers aren't displaying correctly
- Navigation flow is non-functional

The game studio needs this fixed urgently because:
- Players are stuck on the level select screen
- No one can actually play the levels
- The game is unplayable in its current state

Your mission is to:
1. Set up React Navigation properly
2. Fix navigation between level select and game screens
3. Pass level data (difficulty, best score, etc.) correctly
4. Implement proper back navigation
5. Configure screen headers and options

**The game is ready to launch - you just need to connect the screens!**

---

## Codebase Description

The codebase contains a React Native/Expo game app with multiple screens, but the navigation system is incomplete or broken.

```
level-selector-game/
├── App.tsx                # Main app (NavigationContainer missing/broken)
├── screens/
│   ├── HomeScreen.tsx     # Home/Menu screen
│   ├── LevelSelectScreen.tsx # Level selection (navigation broken)
│   ├── GameScreen.tsx    # Game play screen (not receiving params)
│   └── GameOverScreen.tsx # Game over screen (navigation issues)
├── components/
│   ├── LevelCard.tsx      # Level card component (onPress not working)
│   └── NavigationHeader.tsx # Custom header (not used)
├── data/
│   └── levels.ts         # Level data (difficulty, scores, etc.)
├── types/
│   └── index.ts          # TypeScript type definitions (Level, etc.)
├── package.json
├── tsconfig.json         # TypeScript configuration
└── README.md
```

### Current Issues in the Codebase

1. **NavigationContainer Missing/Broken** (`App.tsx`)
   - NavigationContainer not imported or configured
   - Stack Navigator not set up
   - Navigation structure incomplete
   - TypeScript navigation types not configured

2. **Screen Registration Issues**
   - Screens not registered with navigator
   - Screen components not properly exported
   - Screen options not configured
   - TypeScript types for navigation stack missing

3. **Navigation Not Working** (`LevelSelectScreen.tsx`, `LevelCard.tsx`)
   - `navigation.navigate()` not called or broken
   - onPress handlers not connected
   - Navigation props not received
   - TypeScript types for navigation prop missing

4. **Params Not Passed** (`LevelSelectScreen.tsx`, `GameScreen.tsx`)
   - Level data not passed when navigating
   - GameScreen not receiving level information
   - Params not accessed correctly

5. **Back Navigation Broken**
   - `navigation.goBack()` not implemented
   - Back button not working
   - Navigation history issues

6. **Screen Headers Missing**
   - Headers not displaying
   - Titles not set
   - Header styling missing

### What Works

- Screen components exist and have basic UI
- Level data structure is defined
- Component styling is mostly complete
- Basic component structure is correct

---

## Challenge Focus

This challenge focuses on navigation and multi-screen apps:

### 1. **React Navigation Setup**
- Installing and configuring React Navigation
- Setting up NavigationContainer
- Creating a Stack Navigator
- Understanding navigation structure

**Documentation:**
- [React Navigation Getting Started](https://reactnavigation.org/docs/getting-started)
- [Installation](https://reactnavigation.org/docs/getting-started#installation)
- [Hello React Navigation](https://reactnavigation.org/docs/hello-react-navigation)

### 2. **Stack Navigator**
- Creating a Stack Navigator
- Registering screens
- Understanding screen components
- Navigator configuration

**Documentation:**
- [Stack Navigator](https://reactnavigation.org/docs/stack-navigator)
- [Creating a Stack Navigator](https://reactnavigation.org/docs/stack-navigator#creating-a-stack-navigator)

### 3. **Navigation Props**
- Understanding navigation prop
- Using `navigation.navigate()`
- Using `navigation.goBack()`
- Accessing navigation in components

**Documentation:**
- [Navigation Prop](https://reactnavigation.org/docs/navigation-prop)
- [Navigating Between Screens](https://reactnavigation.org/docs/navigating)

### 4. **Passing Parameters with TypeScript**
- Passing params when navigating
- Receiving params in destination screen
- Accessing route params
- Type-safe parameter passing with TypeScript
- Defining param types for navigation
- Typing route.params

**Documentation:**
- [Passing Parameters](https://reactnavigation.org/docs/params)
- [Params](https://reactnavigation.org/docs/params#what-should-be-in-params)
- [TypeScript with React Navigation](https://reactnavigation.org/docs/typescript)
- [Typed Navigation](https://reactnavigation.org/docs/typescript#type-checking-the-navigator)

### 5. **Screen Options**
- Configuring screen options
- Setting screen titles
- Customizing headers
- Header buttons and actions

**Documentation:**
- [Screen Options](https://reactnavigation.org/docs/screen-options)
- [Headers](https://reactnavigation.org/docs/headers)

### 6. **Navigation Flow**
- Understanding navigation stack
- Managing navigation state
- Deep linking (optional)
- Navigation lifecycle

**Documentation:**
- [Navigation State](https://reactnavigation.org/docs/navigation-state)
- [Navigation Lifecycle](https://reactnavigation.org/docs/navigation-lifecycle)

### 7. **Multiple Navigators**
- Combining navigators (optional)
- Tab + Stack navigation (if needed)
- Nested navigators

**Documentation:**
- [Nesting Navigators](https://reactnavigation.org/docs/nesting-navigators)

---

## Git Concepts Covered

This challenge focuses on pull request workflow:

1. **Pull Request Workflow**
   - Creating comprehensive PRs
   - Writing detailed PR descriptions
   - Understanding code review process
   - Responding to feedback

2. **Feature Completion**
   - Ensuring feature is complete before PR
   - Testing navigation flow
   - Documenting changes

**Git Documentation:**
- [Creating a Pull Request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request)
- [About Pull Requests](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests)

---

## Tasks Checklist

Fix the navigation system by completing these tasks:

### Navigation Setup

- [ ] **Install/Configure React Navigation**
  - Ensure `@react-navigation/native` and `@react-navigation/stack` are installed
  - Set up NavigationContainer in App.tsx
  - Import necessary navigation components
  - Configure TypeScript types for navigation

- [ ] **Create Stack Navigator**
  - Create Stack Navigator with all screens
  - Register HomeScreen, LevelSelectScreen, GameScreen, GameOverScreen
  - Configure initial route

### Screen Configuration

- [ ] **Configure Screen Options**
  - Set titles for each screen
  - Configure header styling
  - Set up header buttons if needed

- [ ] **Fix Screen Components**
  - Ensure screens receive navigation prop
  - Export screens correctly
  - Set up proper component structure

### Level Selection Navigation

- [ ] **Implement Level Card Navigation**
  - Connect onPress to navigation.navigate()
  - Pass level data as params
  - Navigate to GameScreen with level info

- [ ] **Pass Level Parameters**
  - Pass level object (difficulty, bestScore, levelId, etc.)
  - Ensure all necessary data is passed
  - Handle parameter structure correctly
  - Define TypeScript interface for level params

### Game Screen

- [ ] **Receive Navigation Params**
  - Access route.params in GameScreen
  - Extract level data from params
  - Handle missing params gracefully
  - Display level information

- [ ] **Implement Game Over Navigation**
  - Navigate to GameOverScreen when game ends
  - Pass game results as params
  - Handle navigation from game screen

### Back Navigation

- [ ] **Implement Back Button**
  - Add back navigation to GameScreen
  - Implement navigation.goBack()
  - Test back navigation flow

- [ ] **Fix Navigation Flow**
  - Ensure proper navigation stack
  - Test: Home → Level Select → Game → Game Over → Back
  - Verify back button works at each screen

### Data Flow

- [ ] **Level Data Structure**
  - Ensure level data is properly structured
  - Pass complete level information
  - Access level properties correctly

- [ ] **Display Level Info**
  - Show level name, difficulty in GameScreen
  - Display best score if available
  - Show level-specific information

### Git Workflow

- [ ] Create feature branch: `feature/navigation-system`
- [ ] Make commits:
  - "Setup: Configure React Navigation"
  - "Add: Stack navigator with all screens"
  - "Fix: Level selection navigation"
  - "Add: Parameter passing between screens"
  - "Fix: Back navigation functionality"
- [ ] Create comprehensive Pull Request
- [ ] Write detailed PR description

---

## Verification

To verify your solution works:

1. **Run the app:**
   ```bash
   npm start
   # or
   expo start
   ```

2. **Navigation Flow Testing:**
   - [ ] Can navigate from Home to Level Select
   - [ ] Can tap a level card and navigate to Game Screen
   - [ ] Level data (name, difficulty) displays in Game Screen
   - [ ] Can navigate from Game to Game Over
   - [ ] Back button works from Game Screen
   - [ ] Back button works from Game Over Screen
   - [ ] Can navigate back through entire flow

3. **Parameter Testing:**
   - [ ] Level data is received in Game Screen
   - [ ] Level name displays correctly
   - [ ] Difficulty level is accessible
   - [ ] Best score (if exists) is displayed
   - [ ] Game results are passed to Game Over Screen

4. **Screen Headers:**
   - [ ] Each screen has a title
   - [ ] Headers are visible and styled
   - [ ] Back button appears where appropriate

5. **Edge Cases:**
   - [ ] Handles missing navigation params gracefully
   - [ ] Navigation works with different level data
   - [ ] No console errors or warnings
   - [ ] Navigation stack doesn't break

6. **Code Quality:**
   - [ ] Navigation is properly set up with TypeScript types
   - [ ] Navigation stack types defined
   - [ ] Params are properly typed with TypeScript interfaces
   - [ ] Route params typed correctly
   - [ ] No TypeScript errors or warnings
   - [ ] Code is clean and readable
   - [ ] No unused imports or code

---

## Resources & Documentation

### React Navigation
- [React Navigation Documentation](https://reactnavigation.org/)
- [Getting Started](https://reactnavigation.org/docs/getting-started)
- [Stack Navigator](https://reactnavigation.org/docs/stack-navigator)

### Navigation Concepts
- [Navigating Between Screens](https://reactnavigation.org/docs/navigating)
- [Passing Parameters](https://reactnavigation.org/docs/params)
- [Navigation Prop](https://reactnavigation.org/docs/navigation-prop)

### Screen Configuration
- [Screen Options](https://reactnavigation.org/docs/screen-options)
- [Headers](https://reactnavigation.org/docs/headers)
- [Header Buttons](https://reactnavigation.org/docs/header-buttons)

### Advanced Navigation
- [Navigation State](https://reactnavigation.org/docs/navigation-state)
- [Navigation Lifecycle](https://reactnavigation.org/docs/navigation-lifecycle)
- [Nesting Navigators](https://reactnavigation.org/docs/nesting-navigators)

### React Native
- [React Native Navigation](https://reactnative.dev/docs/navigation)
- [TouchableOpacity](https://reactnative.dev/docs/touchableopacity)

### TypeScript
- [TypeScript Handbook](https://www.typescriptlang.org/docs/handbook/intro.html)
- [TypeScript with React](https://react-typescript-cheatsheet.netlify.app/)
- [TypeScript in React Native](https://reactnative.dev/docs/typescript)
- [TypeScript with React Navigation](https://reactnavigation.org/docs/typescript)
- [Typed Navigation](https://reactnavigation.org/docs/typescript#type-checking-the-navigator)

### Git & PRs
- [Creating Pull Requests](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request)
- [PR Best Practices](https://github.com/blog/1943-how-to-write-the-perfect-pull-request)

---

## Submission Instructions

1. **Complete all navigation tasks** from the checklist above

2. **Follow Git best practices:**
   - Create a feature branch
   - Make logical commits
   - Write clear commit messages
   - Test thoroughly before PR

3. **Create a Pull Request:**
   - Title: "Fix: Implement Complete Navigation System"
   - Description should include:
     - Navigation flow diagram or description
     - What screens are connected
     - What parameters are passed
     - Testing performed
     - Screenshots or screen recording of navigation flow

4. **Wait for review and approval**

---

## Bonus Challenges (Optional)

If you finish early:

1. **Tab Navigation:** Add a tab navigator for different game modes
2. **Deep Linking:** Implement deep linking to specific levels
3. **Navigation Guards:** Prevent navigation if level is locked
4. **Animations:** Add custom screen transition animations
5. **Modal Screens:** Add settings modal that can be opened from any screen
6. **Navigation State Persistence:** Save navigation state and restore on app restart
7. **Custom Headers:** Create custom header components with game branding

---

## Tips & Hints

- **Start with setup:** Get NavigationContainer and Stack Navigator working first
- **Test incrementally:** Test navigation after each screen is connected
- **Check imports:** Make sure all navigation components are imported
- **Verify params:** Use console.log to see what params are being passed/received
- **Read navigation docs:** React Navigation has excellent documentation
- **Test the flow:** Manually test the entire navigation flow
- **Check screen names:** Make sure screen names match in navigate() calls
- **Handle edge cases:** What happens if params are missing?

---

**Connect those screens and get the game playable!** 🎮🚀


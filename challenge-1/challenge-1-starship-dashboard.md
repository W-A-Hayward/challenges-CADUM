# Challenge 1: Debug the Starship Dashboard

**Estimated Time:** 45 minutes  
**Difficulty:** Beginner  
**Theme:** Space Sci-Fi (Star Trek / Battlestar Galactica)

---

## Challenge Scenario

🚨 **DISTRESS SIGNAL RECEIVED** 🚨

```
TRANSMISSION FROM: U.S.S. CADUM
STARDATE: 2024.01.15
STATUS: CRITICAL SYSTEMS FAILURE

This is the ship's AI, React-9000. We are experiencing multiple 
system failures across the command bridge. The dashboard is 
non-functional, and we cannot assess our ship's status.

Critical systems offline:
- Life Support Display
- Shield Generator Status
- Navigation Computer Interface
- Warp Core Monitoring

We need an engineer to restore these systems immediately. 
The codebase is available, but multiple components are broken.

Please respond to this distress signal by forking our repository 
and restoring critical systems.

END TRANSMISSION
```

You are the engineer responding to this distress signal. Your mission is to fix the broken spaceship control panel dashboard. Each bug you fix will restore a critical ship system, bringing the U.S.S. React Native back to full operational status.

---

## Codebase Description

The codebase contains a React Native/Expo app that should display a spaceship control panel dashboard. The app structure is as follows:

```
starship-dashboard/
├── App.tsx               # Main app entry point (has issues)
├── components/
│   ├── SystemStatus.tsx  # Component for system status displays (broken)
│   ├── ShieldGauge.tsx   # Shield level indicator (styling broken)
│   ├── LifeSupport.tsx   # Life support system display (props not wired)
│   └── NavigationPanel.tsx # Navigation computer interface (missing imports)
├── types/
│   └── index.ts         # TypeScript type definitions
├── assets/
│   └── images/          # Ship images and icons
├── package.json         # Dependencies
├── tsconfig.json        # TypeScript configuration
└── README.md           # This file (formatted as distress signal)
```

### Current Issues in the Codebase

1. **Missing Imports** (`NavigationPanel.tsx`)
   - React Native components not imported
   - Image component missing
   - StyleSheet not imported
   - TypeScript types not imported

2. **Broken Status Displays** (`SystemStatus.tsx`)
   - Components render but show incorrect data
   - Props not being passed correctly
   - Conditional rendering not working
   - TypeScript prop types missing or incorrect

3. **Styling Disasters** (`ShieldGauge.tsx`)
   - Warning text is invisible (color matches background)
   - Gauges have no dimensions (width/height missing)
   - Layout broken (flexbox not configured)
   - Colors don't match sci-fi aesthetic

4. **Props Not Wired Up** (`LifeSupport.tsx`, `App.tsx`)
   - Ship name passed as prop but not displayed
   - Captain name available but not shown
   - System status props exist but components don't use them

5. **Console Errors**
   - Multiple "Cannot read property" errors
   - "Component is not defined" errors
   - Style-related warnings

### What Works

- Basic Expo setup is correct
- File structure is in place
- Some styling exists (needs fixing)
- Component structure is mostly correct (needs wiring)

---

## Challenge Focus

This challenge focuses on the fundamental building blocks of React Native development:

### 1. **JSX Syntax**
- Understanding JSX elements and syntax
- Self-closing tags
- Embedding JavaScript expressions in JSX

**Documentation:**
- [React JSX Introduction](https://react.dev/learn/writing-markup-with-jsx)
- [React Native Core Components](https://reactnative.dev/docs/intro-react-native-components)

### 2. **Basic Components (View, Text, Image)**
- Using `View` as a container
- Displaying text with `Text`
- Rendering images with `Image`
- Component composition

**Documentation:**
- [View Component](https://reactnative.dev/docs/view)
- [Text Component](https://reactnative.dev/docs/text)
- [Image Component](https://reactnative.dev/docs/image)

### 3. **Basic Styling with StyleSheet**
- Creating styles with `StyleSheet.create()`
- Applying styles to components
- Understanding flexbox basics
- Color, fontSize, margin, padding properties

**Documentation:**
- [React Native StyleSheet](https://reactnative.dev/docs/stylesheet)
- [Layout with Flexbox](https://reactnative.dev/docs/flexbox)
- [Color Reference](https://reactnative.dev/docs/colors)

### 4. **Props & TypeScript Types**
- Passing props to components
- Accessing props in functional components
- Using props to display dynamic data
- Defining TypeScript interfaces for props
- Type safety with TypeScript

**Documentation:**
- [React Components and Props](https://react.dev/learn/passing-props-to-a-component)
- [React Native Props](https://reactnative.dev/docs/props)
- [TypeScript with React](https://react-typescript-cheatsheet.netlify.app/)
- [TypeScript Interfaces](https://www.typescriptlang.org/docs/handbook/interfaces.html)

### 5. **Component Structure & TypeScript**
- Functional components with TypeScript
- Component organization
- File structure and imports
- Exporting components
- TypeScript type annotations
- React.FC and function component types

**Documentation:**
- [React Function Components](https://react.dev/learn/your-first-component)
- [React Native Components](https://reactnative.dev/docs/components-and-apis)
- [TypeScript React Cheatsheet](https://react-typescript-cheatsheet.netlify.app/)
- [TypeScript Handbook](https://www.typescriptlang.org/docs/handbook/intro.html)

---

## Git Concepts Covered

This challenge introduces you to the complete Git workflow:

1. **Forking a Repository**
   - Creating your own copy of the challenge repo
   - Understanding the fork relationship

2. **Cloning**
   - Cloning your fork to your local machine
   - Setting up the local repository

3. **Branching**
   - Creating a feature branch (`fix/critical-systems`)
   - Understanding branch naming conventions
   - Working on isolated changes

4. **Committing**
   - Staging changes (`git add`)
   - Writing meaningful commit messages
   - Making atomic commits (one system per commit)

5. **Pushing**
   - Pushing your branch to your fork
   - Understanding remote repositories

6. **Pull Requests**
   - Creating a PR from your fork to the original repo
   - Writing PR descriptions
   - Understanding the review process

**Git Documentation:**
- [Git Handbook](https://guides.github.com/introduction/git-handbook/)
- [GitHub Flow](https://guides.github.com/introduction/flow/)
- [Writing Good Commit Messages](https://cbea.ms/git-commit/)

---

## Tasks Checklist

Your mission is to restore all critical systems. Use this checklist to track your progress:

### System Restoration Tasks

- [ ] **Life Support Online**
  - Fix `LifeSupport.tsx` to display ship name and captain name from props
  - Define TypeScript interface for props
  - Ensure status indicators show correct values
  - Fix styling to make text visible

- [ ] **Shield Generators Functional**
  - Fix `ShieldGauge.tsx` styling (add dimensions, fix colors)
  - Add TypeScript types for gauge props
  - Make warning text visible
  - Ensure gauge displays correct shield percentage

- [ ] **Navigation Computer Responding**
  - Fix missing imports in `NavigationPanel.tsx`
  - Ensure all components are properly imported
  - Add TypeScript type definitions
  - Fix any console errors related to navigation

- [ ] **Warp Core Stable**
  - Fix `SystemStatus.tsx` to properly display all system statuses
  - Wire up props correctly with TypeScript types
  - Fix conditional rendering for system states

- [ ] **Console Clean**
  - Resolve all console errors
  - Fix all "undefined" warnings
  - Ensure no red error messages

### Git Workflow Tasks

- [ ] Fork the repository
- [ ] Clone your fork locally
- [ ] Create a feature branch: `fix/critical-systems`
- [ ] Make at least 4 commits (one per system restored)
- [ ] Push your branch to your fork
- [ ] Create a Pull Request titled "Emergency Repairs Complete"
- [ ] Write a PR description explaining what systems were restored

---

## Verification

To verify your solution works:

1. **Run the app:**
   ```bash
   npm start
   # or
   expo start
   ```

2. **Visual Checklist:**
   - [ ] Ship name and captain name are visible
   - [ ] All system status indicators display correctly
   - [ ] Shield gauge shows percentage with proper styling
   - [ ] Navigation panel displays without errors
   - [ ] No console errors or warnings
   - [ ] All text is readable (proper colors and contrast)
   - [ ] Layout is properly structured (no overlapping elements)

3. **Code Quality:**
   - [ ] All imports are present and correct
   - [ ] Props are properly passed and used with TypeScript types
   - [ ] TypeScript interfaces defined for all component props
   - [ ] No TypeScript errors or warnings
   - [ ] Styles are defined using StyleSheet
   - [ ] No hardcoded values (use props)
   - [ ] Code is clean and readable

---

## Resources & Documentation

### React Native Basics
- [React Native Getting Started](https://reactnative.dev/docs/getting-started)
- [Expo Documentation](https://docs.expo.dev/)
- [React Native Core Concepts](https://reactnative.dev/docs/getting-started)

### Components
- [View API](https://reactnative.dev/docs/view)
- [Text API](https://reactnative.dev/docs/text)
- [Image API](https://reactnative.dev/docs/image)

### Styling
- [StyleSheet API](https://reactnative.dev/docs/stylesheet)
- [Layout Props](https://reactnative.dev/docs/layout-props)
- [Flexbox Guide](https://reactnative.dev/docs/flexbox)

### React Fundamentals
- [React Quick Start](https://react.dev/learn)
- [Components and Props](https://react.dev/learn/passing-props-to-a-component)
- [JSX Syntax](https://react.dev/learn/writing-markup-with-jsx)

### TypeScript
- [TypeScript Handbook](https://www.typescriptlang.org/docs/handbook/intro.html)
- [TypeScript with React](https://react-typescript-cheatsheet.netlify.app/)
- [TypeScript Interfaces](https://www.typescriptlang.org/docs/handbook/interfaces.html)
- [TypeScript in React Native](https://reactnative.dev/docs/typescript)

### Git & GitHub
- [Git Basics](https://git-scm.com/book/en/v2/Getting-Started-Git-Basics)
- [GitHub Guides](https://guides.github.com/)
- [Creating a Pull Request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request)

---

## Submission Instructions

1. **Complete all system restoration tasks** from the checklist above

2. **Follow Git best practices:**
   - Create meaningful commit messages (e.g., "Restore life support systems")
   - Make atomic commits (one system per commit)
   - Push your branch to your fork

3. **Create a Pull Request:**
   - Title: "Emergency Repairs Complete"
   - Description should include:
     - Which systems were restored
     - What issues were fixed
     - Any challenges encountered
     - Screenshots of the working dashboard (optional but recommended)

4. **Wait for review:**
   - Your PR will be reviewed
   - Address any feedback if needed
   - Once approved, your mission is complete! 🎉

---

## Bonus Challenges (Optional)

If you finish early and want to go further:

1. **Add animations:** Make system status changes animate smoothly
2. **Add sound effects:** Play alert sounds when systems come online
3. **Add more systems:** Create additional ship systems (weapons, sensors, etc.)
4. **Improve styling:** Add gradients, shadows, and more sci-fi aesthetics
5. **Add interactivity:** Make buttons that can toggle systems on/off

---

## Tips & Hints

- **Read error messages carefully:** They often tell you exactly what's wrong
- **Check the console:** React Native errors are usually very descriptive
- **Start with imports:** Missing imports cause many errors
- **Fix one system at a time:** Don't try to fix everything at once
- **Test frequently:** Run the app after each fix to see your progress
- **Use the documentation:** The links above are your best friends

---

**Good luck, Engineer! The ship is counting on you!** 🚀


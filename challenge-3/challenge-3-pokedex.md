# Challenge 3: Gotta Fetch 'Em All - Pokédex Pro

**Estimated Time:** 55 minutes  
**Difficulty:** Intermediate  
**Theme:** Pokémon / Pokédex

---

## Challenge Scenario

🔴⚪ **PROFESSOR OAK'S RESEARCH ASSISTANT NEEDED** 🔴⚪

Professor Oak has been working on a digital Pokédex application, but he's run into some technical difficulties. The app is supposed to display a comprehensive list of Pokémon with their details, but several critical features aren't working:

- The Pokémon list isn't loading from the API
- The Pokédex entries aren't displaying
- The detail view is incomplete
- Type-based color coding is missing
- The loading indicator doesn't show

As Professor Oak's research assistant, you need to:
1. Fix the API integration to fetch Pokémon data
2. Implement the FlatList to display Pokémon
3. Add loading states and error handling
4. Complete the detail view with stats and abilities
5. Add type-based styling (Fire = red, Water = blue, etc.)
6. Implement the "Shiny variant" toggle feature

The PokéAPI is ready and waiting - you just need to connect everything properly!

**"A Pokédex is a high-tech encyclopedia that records and retains information about the various species of Pokémon. Let's see what we can discover!"** - Professor Oak

---

## Codebase Description

The codebase contains a React Native/Expo Pokédex app with a scaffolded structure. The UI components are partially built, but the data fetching and display logic needs to be completed.

```
pokedex-pro/
├── App.tsx                # Main app (navigation setup needed)
├── screens/
│   ├── PokemonList.tsx    # List screen (FlatList not implemented)
│   └── PokemonDetail.tsx  # Detail screen (incomplete)
├── components/
│   ├── PokemonCard.tsx   # Card component (missing type colors)
│   ├── LoadingSpinner.tsx # Loading indicator (not connected)
│   └── TypeBadge.tsx      # Type display badge (styling incomplete)
├── services/
│   └── pokemonApi.ts      # API service (fetch functions incomplete)
├── utils/
│   └── typeColors.ts     # Type color mapping (needs implementation)
├── types/
│   └── index.ts          # TypeScript type definitions (Pokemon, etc.)
├── assets/
│   └── images/          # Pokéball spinner, type icons
├── package.json
├── tsconfig.json        # TypeScript configuration
└── README.md
```

### Current Issues in the Codebase

1. **API Integration Broken** (`services/pokemonApi.ts`)
   - `fetchPokemonList` function is incomplete
   - API endpoint not properly configured
   - Error handling missing
   - No data transformation
   - TypeScript return types not defined
   - Pokemon type interface missing

2. **FlatList Not Implemented** (`screens/PokemonList.tsx`)
   - FlatList component missing or not configured
   - `data` prop not connected to API
   - `renderItem` function not implemented
   - `keyExtractor` missing
   - Loading state not handled
   - TypeScript types for FlatList data missing

3. **useEffect Not Set Up** (`screens/PokemonList.tsx`)
   - Data fetching on component mount not implemented
   - Dependencies array missing or incorrect
   - Loading state management broken

4. **PokemonCard Incomplete** (`components/PokemonCard.tsx`)
   - Type-based color coding not implemented
   - Stats not displayed
   - Image loading issues
   - Styling incomplete
   - TypeScript props interface missing

5. **Detail Screen Broken** (`screens/PokemonDetail.tsx`)
   - Navigation params not received
   - Stats display incomplete
   - Abilities not shown
   - "Professor Oak's Notes" section missing
   - Shiny variant toggle not working

6. **Loading States Missing**
   - Loading spinner not shown during API calls
   - No error state handling
   - No empty state display

### What Works

- Basic navigation structure (needs wiring)
- Component file structure
- Some styling exists
- API service skeleton is in place
- Type color utility file exists (needs values)

---

## Challenge Focus

This challenge focuses on data fetching, lists, and side effects:

### 1. **FlatList Component**
- Understanding FlatList vs ScrollView
- Configuring `data` and `renderItem` props
- Implementing `keyExtractor`
- Optimizing list performance
- Handling list item styling

**Documentation:**
- [FlatList API](https://reactnative.dev/docs/flatlist)
- [FlatList Performance](https://reactnative.dev/docs/optimizing-flatlist-configuration)
- [Lists in React Native](https://reactnative.dev/docs/using-a-listview)

### 2. **API Calls with fetch & TypeScript**
- Making HTTP requests with `fetch()`
- Understanding async/await
- Handling API responses
- Error handling for network requests
- Transforming API data
- TypeScript types for API responses
- Defining interfaces for API data structures
- Typing async functions

**Documentation:**
- [Fetch API](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API)
- [Using Fetch](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch)
- [Async/Await](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/async_function)
- [TypeScript Async Functions](https://www.typescriptlang.org/docs/handbook/release-notes/typescript-1-7.html#async-functions)
- [TypeScript Interfaces](https://www.typescriptlang.org/docs/handbook/interfaces.html)

### 3. **useEffect Hook with TypeScript**
- Understanding side effects
- Fetching data on component mount
- Managing dependencies array
- Cleanup functions (if needed)
- Avoiding infinite loops
- Typing useEffect callbacks
- TypeScript with async functions in useEffect

**Documentation:**
- [useEffect Hook](https://react.dev/reference/react/useEffect)
- [Synchronizing with Effects](https://react.dev/learn/synchronizing-with-effects)
- [You Might Not Need an Effect](https://react.dev/learn/you-might-not-need-an-effect)
- [TypeScript useEffect](https://react-typescript-cheatsheet.netlify.app/docs/basic/getting-started/basic_type_example#useeffect)

### 4. **Loading States**
- Managing loading state with useState
- Displaying loading indicators
- Handling error states
- Showing empty states
- Conditional rendering based on state

**Documentation:**
- [Conditional Rendering](https://react.dev/learn/conditional-rendering)
- [Loading States in React Native](https://reactnative.dev/docs/activityindicator)

### 5. **Navigation with Parameters & TypeScript**
- Passing data between screens
- Receiving navigation params
- Using `navigation.navigate()` with params
- Accessing route params
- Type-safe navigation with TypeScript
- Defining navigation param types
- Typing route params

**Documentation:**
- [React Navigation](https://reactnavigation.org/docs/getting-started)
- [Passing Parameters](https://reactnavigation.org/docs/params)
- [Navigation Prop](https://reactnavigation.org/docs/navigation-prop)
- [TypeScript with React Navigation](https://reactnavigation.org/docs/typescript)

### 6. **TouchableOpacity / Pressable**
- Making list items tappable
- Handling onPress events
- Navigation on item press
- Visual feedback for touches

**Documentation:**
- [TouchableOpacity](https://reactnative.dev/docs/touchableopacity)
- [Pressable](https://reactnative.dev/docs/pressable)

### 7. **Data Transformation**
- Mapping API responses to component props
- Extracting nested data
- Formatting data for display
- Handling different data structures

**Documentation:**
- [Array Methods](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array)
- [Object Methods](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object)

---

## Git Concepts Covered

This challenge focuses on commit organization:

1. **Logical Commit Chunks**
   - Making commits that represent logical units of work
   - One feature per commit
   - Committing working code incrementally

2. **Good Commit Messages**
   - Writing descriptive commit messages
   - Using consistent commit message style
   - Themed commit messages ("Catch" instead of "Add")

**Commit Message Style for This Challenge:**
- "Catch: Implemented Pokémon list API integration"
- "Evolve: Added FlatList with Pokémon cards"
- "Catch: Added loading spinner and error handling"
- "Evolve: Implemented type-based color coding"
- "Catch: Added Pokémon detail screen navigation"
- "Evolve: Completed detail view with stats and abilities"

**Git Documentation:**
- [Writing Good Commits](https://cbea.ms/git-commit/)
- [Atomic Commits](https://www.freshconsulting.com/insights/blog/atomic-commits/)

---

## Tasks Checklist

Complete the Pokédex by fixing these issues:

### API Integration

- [ ] **Fix fetchPokemonList Function**
  - Implement API call to PokéAPI
  - Handle API response correctly
  - Transform data for component use
  - Add error handling

- [ ] **Set Up useEffect for Data Fetching**
  - Fetch Pokémon list on component mount
  - Set up proper dependencies array
  - Manage loading state
  - Handle errors

### List Implementation

- [ ] **Implement FlatList**
  - Configure `data` prop with Pokémon list
  - Implement `renderItem` to render PokemonCard
  - Add `keyExtractor` function
  - Add proper styling

- [ ] **Connect Loading State**
  - Show loading spinner while fetching
  - Hide spinner when data loads
  - Display error message if fetch fails

### PokemonCard Component

- [ ] **Add Type-Based Color Coding**
  - Implement type color mapping
  - Apply colors to card background/border
  - Style type badges with correct colors

- [ ] **Complete Card Display**
  - Show Pokémon name
  - Display Pokémon image
  - Show type badges
  - Add proper styling

### Detail Screen

- [ ] **Receive Navigation Params**
  - Get Pokémon data from navigation params
  - Handle missing params gracefully

- [ ] **Complete Detail View**
  - Display all stats (HP, Attack, Defense, etc.)
  - Show abilities list
  - Add "Professor Oak's Notes" section (flavor text)
  - Display type information

- [ ] **Implement Shiny Toggle**
  - Add toggle button/switch
  - Switch between normal and shiny sprites
  - Update image source based on toggle state

### Bonus Features (Optional)

- [ ] **Search Functionality**
  - Add search input
  - Filter Pokémon by name
  - Update FlatList with filtered results

- [ ] **Type Filtering**
  - Add type filter buttons
  - Filter Pokémon by type
  - Show filtered results

### Git Workflow

- [ ] Make logical commits using themed messages
- [ ] Commit working code incrementally
- [ ] Write clear commit messages
- [ ] Create Pull Request with description

---

## Verification

To verify your solution works:

1. **Run the app:**
   ```bash
   npm start
   # or
   expo start
   ```

2. **Functional Testing:**
   - [ ] Pokémon list loads from API
   - [ ] Loading spinner shows while fetching
   - [ ] List displays all Pokémon with cards
   - [ ] Each card shows name, image, and types
   - [ ] Type colors are correct (Fire = red, Water = blue, etc.)
   - [ ] Tapping a card navigates to detail screen
   - [ ] Detail screen shows all stats and abilities
   - [ ] "Professor Oak's Notes" displays flavor text
   - [ ] Shiny toggle switches sprite images
   - [ ] No console errors

3. **Edge Cases:**
   - [ ] Handles API errors gracefully
   - [ ] Shows appropriate message if no Pokémon found
   - [ ] Handles missing navigation params
   - [ ] Works with slow network (loading state)

4. **Code Quality:**
   - [ ] useEffect dependencies are correct
   - [ ] No infinite loops
   - [ ] Error handling implemented
   - [ ] TypeScript interfaces defined for Pokemon and API responses
   - [ ] Navigation params properly typed
   - [ ] No TypeScript errors or warnings
   - [ ] Code is clean and readable

---

## Resources & Documentation

### API Reference
- [PokéAPI Documentation](https://pokeapi.co/docs/v2)
- [PokéAPI Endpoints](https://pokeapi.co/api/v2/pokemon)
- [Example API Call](https://pokeapi.co/api/v2/pokemon/1)

### React Hooks
- [useEffect Hook](https://react.dev/reference/react/useEffect)
- [useState Hook](https://react.dev/reference/react/useState)
- [Rules of Hooks](https://react.dev/reference/react/hooks#rules-of-hooks)

### Lists & Data Display
- [FlatList API](https://reactnative.dev/docs/flatlist)
- [ScrollView vs FlatList](https://reactnative.dev/docs/using-a-listview)

### Navigation
- [React Navigation](https://reactnavigation.org/)
- [Stack Navigator](https://reactnavigation.org/docs/stack-navigator)
- [Passing Parameters](https://reactnavigation.org/docs/params)

### Async Operations
- [Fetch API](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API)
- [Async/Await](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/async_function)
- [Promises](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise)

### React Native Components
- [ActivityIndicator](https://reactnative.dev/docs/activityindicator)
- [TouchableOpacity](https://reactnative.dev/docs/touchableopacity)
- [Image](https://reactnative.dev/docs/image)

### TypeScript
- [TypeScript Handbook](https://www.typescriptlang.org/docs/handbook/intro.html)
- [TypeScript with React](https://react-typescript-cheatsheet.netlify.app/)
- [TypeScript in React Native](https://reactnative.dev/docs/typescript)
- [TypeScript Interfaces](https://www.typescriptlang.org/docs/handbook/interfaces.html)
- [TypeScript with React Navigation](https://reactnavigation.org/docs/typescript)

---

## Submission Instructions

1. **Complete all core tasks** from the checklist above

2. **Follow Git best practices:**
   - Make logical, atomic commits
   - Use themed commit messages ("Catch", "Evolve")
   - Commit working code incrementally

3. **Create a Pull Request:**
   - Title: "Catch: Complete Pokédex Pro Implementation"
   - Description should include:
     - What features were implemented
     - Which Pokémon generation was used
     - Any challenges encountered
     - Screenshots of the working app

4. **Wait for review and approval**

---

## Bonus Challenges (Optional)

If you finish early:

1. **Search & Filter:** Implement search by name and filter by type
2. **Favorites:** Add ability to favorite Pokémon and view favorites list
3. **Evolution Chain:** Display evolution chain for each Pokémon
4. **Animations:** Add animations when cards appear, loading spinner
5. **Offline Support:** Cache Pokémon data using AsyncStorage
6. **Infinite Scroll:** Implement pagination to load more Pokémon
7. **Compare Pokémon:** Add feature to compare two Pokémon side-by-side

---

## Tips & Hints

- **Start with API:** Get the data fetching working first
- **Test API calls:** Use console.log to see what data you're getting
- **Check API response structure:** PokéAPI returns nested data - you'll need to extract what you need
- **Use useEffect correctly:** Remember the dependencies array to avoid infinite loops
- **Handle loading states:** Always show something while data is loading
- **Test navigation:** Make sure params are passed and received correctly
- **Type colors:** Create a mapping object for type → color
- **Read PokéAPI docs:** The API structure is well-documented

---

**"The world is vast, and there are many Pokémon to discover. Good luck on your journey!"** - Professor Oak 🔴⚪


# Challenge 5: Build Your D&D Companion App

**Estimated Time:** 60 minutes  
**Difficulty:** Advanced  
**Theme:** Dungeons & Dragons

---

## Challenge Scenario

⚔️🛡️ **THE TAVERN NEEDS A DIGITAL COMPANION** ⚔️🛡️

You're in a tavern, and the Dungeon Master is struggling to manage the game. Character sheets are scattered, dice are rolling off the table, and tracking initiative is chaos. The party needs a digital companion app to help manage their D&D 5e campaign!

You've been given a starter template with navigation and basic structure, but you need to choose ONE path and build it out completely:

**Option A: Character Sheet Manager**
- Create and edit D&D characters
- Roll dice (d4, d6, d8, d10, d12, d20) with animations
- Track HP, spell slots, and inventory
- Level up with confetti animation
- Save characters locally

**Option B: Spell Grimoire**
- Fetch spells from D&D 5e API
- Filter by class, level, and school of magic
- Favorite spells
- Detailed view with casting time, components, effects
- Search functionality
- "Prepare spells" feature

**Option C: Dungeon Master's Initiative Tracker**
- Add players and monsters to combat
- Roll initiative for all (with modifiers)
- Sort by initiative order
- Track HP for each combatant
- Mark conditions (stunned, poisoned, etc.)
- "Next turn" button
- Save/load encounters

This is your capstone challenge - integrate everything you've learned: components, state, navigation, API calls, forms, and local storage!

**"Roll for initiative!"** - Your Dungeon Master

---

## Codebase Description

The codebase contains a starter template with navigation setup and helper functions. You'll choose one of three paths and build it out completely.

```
dnd-companion/
├── App.tsx                # Main app with navigation (already set up)
├── screens/
│   ├── HomeScreen.tsx    # Home screen with path selection
│   ├── CharacterListScreen.tsx # (Option A) Character list
│   ├── CharacterDetailScreen.tsx # (Option A) Character sheet
│   ├── CharacterEditScreen.tsx # (Option A) Create/edit form
│   ├── SpellListScreen.tsx # (Option B) Spell list
│   ├── SpellDetailScreen.tsx # (Option B) Spell details
│   ├── FavoritesScreen.tsx # (Option B) Favorite spells
│   ├── InitiativeScreen.tsx # (Option C) Initiative tracker
│   └── CombatantFormScreen.tsx # (Option C) Add combatant form
├── components/
│   ├── DiceRoller.tsx    # (Option A) Dice component
│   ├── StatBlock.tsx     # (Option A) Character stats
│   ├── SpellCard.tsx     # (Option B) Spell card
│   ├── InitiativeRow.tsx # (Option C) Combatant row
│   └── ConditionBadge.tsx # (Option C) Condition indicator
├── services/
│   ├── characterStorage.ts # (Option A) AsyncStorage helpers
│   ├── spellApi.ts       # (Option B) D&D 5e API
│   └── encounterStorage.ts # (Option C) Save/load encounters
├── utils/
│   ├── dice.ts          # (Option A) Dice rolling logic
│   ├── spellFilters.ts  # (Option B) Filtering logic
│   └── initiative.ts    # (Option C) Initiative sorting
├── types/
│   └── index.ts         # TypeScript type definitions (Character, Spell, etc.)
├── assets/
│   ├── images/         # Dice, character icons, spell effects
│   └── sounds/        # (Option C) Sound effects
├── package.json
├── tsconfig.json       # TypeScript configuration
└── README.md
```

### What's Provided

- Navigation structure (Stack Navigator)
- Basic screen components (empty/incomplete)
- Helper function skeletons
- Asset files (images, sounds)
- D&D-themed color palette
- API wrapper functions (for Option B)

### What Needs to Be Built

**Option A - Character Sheet Manager:**
- Character creation/edit form (TextInput fields)
- Dice rolling component with animations
- HP tracking (increment/decrement)
- Spell slots tracking
- Inventory management
- Level up functionality
- AsyncStorage integration for saving

**Option B - Spell Grimoire:**
- API integration (D&D 5e API)
- Spell list with FlatList
- Search functionality
- Filtering (class, level, school)
- Favorite spells (local storage)
- Spell detail view
- "Prepare spells" feature

**Option C - Initiative Tracker:**
- Add combatant form
- Initiative rolling with modifiers
- Sorting by initiative
- HP tracking for each combatant
- Condition management
- Turn order navigation
- Save/load encounters

---

## Challenge Focus

This challenge integrates ALL previous concepts:

### 1. **Forms & TextInput with TypeScript**
- Creating forms with multiple inputs
- Controlled components (value, onChangeText)
- Form validation
- Handling form submission
- Managing form state
- TypeScript types for form state
- Typing TextInput onChangeText handlers
- Form data interfaces

**Documentation:**
- [TextInput Component](https://reactnative.dev/docs/textinput)
- [Handling Text Input](https://reactnative.dev/docs/handling-text-input)
- [Forms in React Native](https://reactnative.dev/docs/textinput#handling-text-input)
- [TypeScript Event Handlers](https://react-typescript-cheatsheet.netlify.app/docs/basic/getting-started/forms_and_events)

### 2. **AsyncStorage (Local Storage) with TypeScript**
- Saving data locally
- Loading saved data
- Updating stored data
- Handling storage errors
- TypeScript types for stored data
- Typing AsyncStorage getItem/setItem
- Generic types with AsyncStorage

**Documentation:**
- [AsyncStorage](https://react-native-async-storage.github.io/async-storage/)
- [AsyncStorage API](https://react-native-async-storage.github.io/async-storage/docs/api)
- [TypeScript Generics](https://www.typescriptlang.org/docs/handbook/2/generics.html)

### 3. **API Integration (Option B) with TypeScript**
- Fetching from D&D 5e API
- Handling API responses
- Error handling
- Loading states
- TypeScript interfaces for API responses
- Typing fetch responses
- Type-safe API data handling

**Documentation:**
- [D&D 5e API](https://www.dnd5eapi.co/)
- [Fetch API](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API)
- [TypeScript Interfaces](https://www.typescriptlang.org/docs/handbook/interfaces.html)

### 4. **State Management (Advanced) with TypeScript**
- Complex state structures
- Multiple state variables
- State updates with objects/arrays
- Derived state
- TypeScript interfaces for complex state
- Typing useState with objects and arrays
- Type-safe state updates

**Documentation:**
- [Managing Complex State](https://react.dev/learn/managing-state)
- [Updating Objects in State](https://react.dev/learn/updating-objects-in-state)
- [Updating Arrays in State](https://react.dev/learn/updating-arrays-in-state)
- [TypeScript useState with Objects](https://react-typescript-cheatsheet.netlify.app/docs/basic/getting-started/basic_type_example#usestate)

### 5. **Navigation with Complex Data**
- Passing complex objects as params
- Navigation between multiple screens
- Updating data and navigating back
- Deep navigation flows

**Documentation:**
- [React Navigation](https://reactnavigation.org/)
- [Passing Parameters](https://reactnavigation.org/docs/params)

### 6. **Lists & Filtering (Option B)**
- FlatList with search
- Filtering data
- Sorting data
- Managing list state

**Documentation:**
- [FlatList](https://reactnative.dev/docs/flatlist)
- [Search and Filter](https://reactnative.dev/docs/flatlist#search-and-filter)

### 7. **Animations (Optional)**
- Animated API basics
- Dice roll animations
- Confetti effects
- Smooth transitions

**Documentation:**
- [Animated API](https://reactnative.dev/docs/animated)
- [LayoutAnimation](https://reactnative.dev/docs/layoutanimation)

---

## Git Concepts Covered

This challenge focuses on comprehensive Git workflow:

1. **Feature Branches**
   - Creating and managing feature branches
   - Working on isolated features
   - Branch naming conventions

2. **Multiple Commits**
   - Making at least 5 meaningful commits
   - Logical commit organization
   - Themed commit messages

3. **Comprehensive PR Description**
   - Writing detailed PR descriptions
   - Documenting all features
   - Including screenshots/demos
   - "Adventure Log" format for D&D theme

**Commit Message Style (D&D Themed):**
- "Quest: Implemented character creation form"
- "Achievement: Added dice rolling system"
- "Quest: Integrated AsyncStorage for character saving"
- "Achievement: Added HP tracking functionality"
- "Quest: Implemented level up system"

**Git Documentation:**
- [Feature Branch Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow)
- [Writing Great PR Descriptions](https://github.blog/2015-01-21-how-to-write-the-perfect-pull-request/)

---

## Tasks Checklist

Choose ONE option and complete all tasks for that path:

### Option A: Character Sheet Manager

#### Character Management
- [ ] **Character Creation Form**
  - TextInput fields for: name, class, race, level
  - Number inputs for: STR, DEX, CON, INT, WIS, CHA
  - Form validation
  - Submit button
  - Define TypeScript interface for character data
  - Type form state properly

- [ ] **Character List Screen**
  - Display saved characters
  - Navigate to character detail
  - Delete character option
  - Load from AsyncStorage

- [ ] **Character Detail Screen**
  - Display all character info
  - Edit button (navigate to edit screen)
  - HP display and controls
  - Spell slots display

#### Dice Rolling
- [ ] **Dice Roller Component**
  - Buttons for d4, d6, d8, d10, d12, d20
  - Display roll result
  - Animation on roll
  - Roll history (optional)

#### HP & Resources
- [ ] **HP Tracking**
  - Current HP display
  - Max HP display
  - Increment/decrement buttons
  - Damage/heal functionality

- [ ] **Spell Slots**
  - Display available spell slots by level
  - Mark slots as used/available
  - Reset slots button

- [ ] **Inventory**
  - Add item functionality
  - Remove item functionality
  - Display item list

#### Advanced Features
- [ ] **Level Up**
  - Level up button
  - Confetti animation (optional)
  - Update character level
  - Increase max HP

- [ ] **Save/Load**
  - Save character to AsyncStorage
  - Load characters on app start
  - Update saved character
  - Delete character from storage
  - Type AsyncStorage operations with TypeScript

### Option B: Spell Grimoire

#### API Integration
- [ ] **Fetch Spells**
  - Integrate D&D 5e API
  - Fetch spell list
  - Handle loading states
  - Error handling

- [ ] **Spell List Display**
  - FlatList with spell cards
  - Display spell name, level, school
  - Navigate to detail on tap

#### Search & Filter
- [ ] **Search Functionality**
  - Search input
  - Filter spells by name
  - Real-time search results

- [ ] **Filtering**
  - Filter by class (dropdown/buttons)
  - Filter by level (1-9)
  - Filter by school of magic
  - Combine multiple filters

#### Spell Details
- [ ] **Spell Detail Screen**
  - Display full spell information
  - Casting time, range, components
  - Spell description
  - Higher level effects

- [ ] **Favorite Spells**
  - Heart/star button to favorite
  - Save favorites to AsyncStorage
  - Favorites screen
  - Display favorite indicator

#### Advanced Features
- [ ] **Prepare Spells**
  - Select spells to prepare
  - Track prepared count
  - Class-based limit
  - Save prepared spells

### Option C: Initiative Tracker

#### Combatant Management
- [ ] **Add Combatant Form**
  - Name input
  - Type (Player/Monster)
  - Initiative modifier input
  - HP input (optional)

- [ ] **Initiative Rolling**
  - Roll initiative button
  - Apply modifiers
  - Sort by initiative (highest first)
  - Display initiative order

#### Combat Tracking
- [ ] **Initiative List**
  - Display all combatants in order
  - Show current turn indicator
  - Initiative values visible
  - HP for each combatant

- [ ] **HP Management**
  - Current HP display
  - Damage/heal buttons
  - Update HP in real-time
  - Remove combatant when HP ≤ 0

- [ ] **Conditions**
  - Add condition to combatant
  - Display condition badges
  - Remove conditions
  - Common conditions: Stunned, Poisoned, etc.

#### Turn Management
- [ ] **Next Turn Button**
  - Advance to next combatant
  - Highlight current turn
  - Sound effect (optional)
  - Cycle through all combatants

- [ ] **Save/Load Encounters**
  - Save current encounter
  - Load saved encounters
  - Delete encounters
  - AsyncStorage integration

### Git Requirements (All Options)

- [ ] Create feature branch: `feature/dnd-[option-a/b/c]`
- [ ] Make minimum 5 commits with D&D-themed messages
- [ ] Write comprehensive PR description as "Adventure Log"
- [ ] Include screenshots or demo in PR
- [ ] Test all functionality before PR

---

## Verification

### Option A Verification
- [ ] Can create a new character
- [ ] Character saves and loads
- [ ] Dice rolling works with animations
- [ ] HP can be increased/decreased
- [ ] Spell slots can be marked used
- [ ] Level up works
- [ ] Can edit existing character
- [ ] Can delete character

### Option B Verification
- [ ] Spells load from API
- [ ] Search filters spells correctly
- [ ] Filters work (class, level, school)
- [ ] Can view spell details
- [ ] Can favorite/unfavorite spells
- [ ] Favorites screen shows saved spells
- [ ] Prepare spells feature works

### Option C Verification
- [ ] Can add combatants
- [ ] Initiative rolls correctly with modifiers
- [ ] Combatants sort by initiative
- [ ] HP can be updated
- [ ] Conditions can be added/removed
- [ ] Next turn advances correctly
- [ ] Can save/load encounters

---

## Resources & Documentation

### Forms & Input
- [TextInput](https://reactnative.dev/docs/textinput)
- [Handling Text Input](https://reactnative.dev/docs/handling-text-input)

### Local Storage
- [AsyncStorage](https://react-native-async-storage.github.io/async-storage/)
- [AsyncStorage Guide](https://react-native-async-storage.github.io/async-storage/docs/install)

### D&D 5e API (Option B)
- [D&D 5e API](https://www.dnd5eapi.co/)
- [Spells Endpoint](https://www.dnd5eapi.co/api/spells)
- [API Documentation](https://www.dnd5eapi.co/docs/)

### Navigation
- [React Navigation](https://reactnavigation.org/)
- [Passing Parameters](https://reactnavigation.org/docs/params)

### Animations
- [Animated API](https://reactnative.dev/docs/animated)
- [LayoutAnimation](https://reactnative.dev/docs/layoutanimation)

### State Management
- [Managing State](https://react.dev/learn/managing-state)
- [Updating Objects in State](https://react.dev/learn/updating-objects-in-state)

### TypeScript
- [TypeScript Handbook](https://www.typescriptlang.org/docs/handbook/intro.html)
- [TypeScript with React](https://react-typescript-cheatsheet.netlify.app/)
- [TypeScript in React Native](https://reactnative.dev/docs/typescript)
- [TypeScript Interfaces](https://www.typescriptlang.org/docs/handbook/interfaces.html)
- [TypeScript Generics](https://www.typescriptlang.org/docs/handbook/2/generics.html)
- [TypeScript with React Navigation](https://reactnavigation.org/docs/typescript)

---

## Submission Instructions

1. **Choose ONE option** (A, B, or C) and complete all tasks

2. **Follow Git best practices:**
   - Create feature branch
   - Make at least 5 commits
   - Use D&D-themed commit messages
   - Test thoroughly

3. **Create Pull Request:**
   - Title: "Quest: Complete D&D Companion - [Option A/B/C]"
   - Description format: "Adventure Log"
     - What path you chose
     - Features implemented
     - Challenges encountered
     - Screenshots/demo
     - How to test

4. **Wait for review and approval**

---

## Bonus Challenges (Optional)

### Option A Bonuses
- Add character portraits
- Implement skill checks
- Add saving throws
- Equipment management with weight
- Spell list integration

### Option B Bonuses
- Spell comparison feature
- Create custom spell lists
- Share spells with party
- Offline spell database
- Spell slot tracking

### Option C Bonuses
- Combat log/history
- Damage types and resistances
- Status effect durations
- Initiative reroll
- Combat statistics

---

## Tips & Hints

- **Choose wisely:** Pick the option that interests you most
- **Start simple:** Get basic functionality working first
- **Test frequently:** Test after each feature
- **Use console.log:** Debug state and data flow
- **Read API docs:** D&D 5e API is well-documented
- **AsyncStorage is async:** Remember to await/use callbacks
- **Break it down:** Each feature is manageable on its own
- **Have fun:** This is your capstone - make it awesome!

---

**"May your rolls be high and your adventures epic!"** ⚔️🛡️🎲


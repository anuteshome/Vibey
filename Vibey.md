I have a Flutter app called Vibey.

The app works on the Pixel 8 emulator, but on the Pixel 8 Pro emulator it shows this assertion:

'package:flutter/src/widgets/navigator.dart':
Failed assertion: line 5909 pos 12:
'!_debugLocked': is not true.

Please inspect the project and find the exact navigation conflict causing this error.

Focus especially on:

- Splash screen automatic navigation
- Session checking with Supabase
- Login success navigation
- Logout navigation
- Bottom navigation setup
- Event card navigation
- Book Now / ticket page navigation
- Any Navigator.push, Navigator.pop, Navigator.pushReplacement, or Navigator.pushAndRemoveUntil calls
- Any navigation being triggered inside build()
- Duplicate navigation caused by Future.delayed, addPostFrameCallback, auth listeners, or multiple button taps
- Async navigation that does not check mounted
- Multiple routes being opened at nearly the same time

Requirements:

1. Do not redesign the UI.
2. Do not change unrelated business logic.
3. Identify the exact file and line causing the duplicate or overlapping navigation.
4. Explain why it works on Pixel 8 but fails on Pixel 8 Pro.
5. Fix the issue using the smallest safe change.
6. Ensure automatic navigation runs only once.
7. Add mounted checks after async operations.
8. Prevent buttons from triggering navigation multiple times.
9. Do not place Navigator calls inside build().
10. After fixing it, show me:
   - the root cause
   - the files changed
   - the old problematic code
   - the corrected code
   - how to test the fix on both Pixel 8 and Pixel 8 Pro

Before changing code, search the entire lib folder for:

Navigator.
push(
pushReplacement(
pushAndRemoveUntil(
pop(
addPostFrameCallback
Future.delayed
onAuthStateChange
currentSession

Then trace which navigation paths can run at the same time.

Do not guess. Inspect the actual code and fix the real source of the !_debugLocked assertion.
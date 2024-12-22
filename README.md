# Unhandled Exception in Dart Asynchronous Operations

This repository demonstrates a subtle bug related to exception handling in asynchronous Dart code using `async`/`await`.  The code includes an example of the problem and a solution.

The `bug.dart` file showcases the incorrect exception handling.  The `bugSolution.dart` file provides the correct implementation.

## The Problem

The issue is that if an exception is thrown inside the asynchronous `fetchData` function, it's not properly propagated to the main function's `try...catch` block unless explicitly `rethrow`n.

## The Solution

The solution involves adding the `rethrow` keyword within the `catch` block of the `fetchData` function. This ensures that the exception is re-thrown and can be handled by the `try...catch` block in the `main` function.

## How to Run

1. Clone the repository.
2. Navigate to the repository's root directory in your terminal.
3. Run `dart bug.dart` and observe the output.  Then run `dart bugSolution.dart` and compare the results. 
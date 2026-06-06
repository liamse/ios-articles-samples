# Malloc Stack Logging & Memory Graph Debugger (iOS)

This repository is a companion to the article [Malloc Stack Logging and Memory Graph Debugger](https://medium.com/@esmuil/finding-retain-cycles-in-ios-memory-graph-malloc-stack-logging)
It demonstrates how to detect, trace, and analyze memory issues in iOS using Xcode’s debugging tools.

## Overview

Memory bugs such as leaks, over-releases, and unexpected allocations can be difficult to trace in large iOS applications.

This project is a sample code to demonstrates two powerful debugging techniques:

- **Malloc Stack Logging** – captures stack traces for memory allocations
- **Memory Graph Debugger** – visualizes object relationships and detects retain cycles

## What You Will Learn

- What Memory Leaks Are and Why They Matter
- Detecting Retain Cycles Using Xcode’s Memory Graph Debugger
- How to Enable Malloc Stack Logging in Xcode
- Using Malloc Stack Logging to Trace the Origin of Allocations
- Retain Cycle Pattern #1: Protocol Delegation Gone Wrong
- Retain Cycle Pattern #2: Capturing Self in Closures

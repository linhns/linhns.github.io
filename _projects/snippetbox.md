---
title: snippetbox
description: A Pastebin clone in Go
date: 2025-01-10
tech: [Go, PostgreSQL, Railway]
links:
  - name: Demo
    url: https://snippetbox.up.railway.app
---

snippetbox is a lightweight **Pastebin** clone written in Go, supporting CRUD
operations for snippets.

### Implementation

Backend was handled using go packages such as `httprouter`, `alice`,
and user interface was adopted from Alex Edwards's _Let's Go_ book.

PostgreSQL was used since I'm more familiar with it, compared to MySQL. For the
database driver, I chose `libpq` as it was easiest to integrate.

Railway is chosen as the host for their generous hobby plan.

_2024 Update:_ More tests have been added, along with more use of Go Generics,
which has matured enough.

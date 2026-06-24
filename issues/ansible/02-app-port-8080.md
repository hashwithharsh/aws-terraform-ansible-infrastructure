# Issue: Application port did not need to be public

## What I was doing

The Python app was listening on port 8080 but the security group only exposed HTTP.

## What I checked

I tested the app locally on the server.

## What I found

The application only needed local access for this simple project.

## Fix

I kept 8080 bound to 127.0.0.1 and exposed only Apache on port 80.

## What I learned

Not every listening port needs to be reachable from the internet.

Seen when state lock is held by another process.

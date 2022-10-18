
## Running tests

Watch current directory for changes and run tests when changes occur.
```
fswatch -o . | xargs -n1 -I{} go test -v
```

# Kata 01

```golang
go mod init
```

### Implement integers_test.go

```golang
package integers

import "testing"

func TestAdder(t *testing.T) {
	sum := Add(2, 2)
	expected := 4

	if sum != expected {
		t.Errorf("expected '%d' but got '%d'", expected, sum)
	}
}
```

### Implement stub Add function in integers.go

```golang
package integers

func Add(x, y int) int {
	return 0
}
```

```shell
go test
```

### Implement Add function

```golang
package integers

func Add(x, y int) int {
	return x + y
}
```

```shell
go test
```

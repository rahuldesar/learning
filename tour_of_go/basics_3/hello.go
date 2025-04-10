package main

import "fmt"

func fibonacci() func(int) int {
	v1 := 0
	v2 := 1

	return func(x int) int {
		if x > 1 {
			temp := v1
			v1 = v2
			v2 += temp
			return v2

		} else if x == 1 {
			return v2
		} else {
			return v1
		}
	}
}

func main() {
	f := fibonacci()

	for i := 0; i < 10; i++ {
		fmt.Println(f(i))
	}
}

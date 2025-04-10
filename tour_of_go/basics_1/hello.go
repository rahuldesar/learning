package main

func main() {
	var i int = 1
	println(i)

	var noval int
	println(noval)

	y := 2
	println(y)
	println(float32(y))

	testnum := 3.22
	println("test number", testnum)
	println(int32(testnum))

	boolval := true
	println(boolval)

	nwew := "hello there"
	println(nwew)

	a, b := swap("hello", "there")
	println(a, b)

	println(add(2, 3))

}

func swap(s1, s2 string) (string, string) {
	return s2, s1
}

func add(i1 int, i2 int) int {
	return i1 + i2
}

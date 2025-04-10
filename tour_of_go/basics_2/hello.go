package main

func main() {

	defer println("deferred statement")
	println("FLOW STATEMENTS")

	for i := 0; i < 10; i++ {
		// print(i, " ")
	}

	var nums = []int{1, 2, 10, 22}
	for e := range nums {
		nums = append(nums, e+1)
	}

	var test = 0
	for test < 10 {
		// print(test)
		test++
	}

	if test > 5 {
		print("true case")
	} else {

		print("false case")
	}

	x := 2
	switch x {
	case 1:
		println("one")
	default:
		println("none")
	}

	for i := 0; i < 10; i++ {
		defer println(i)
	}

}

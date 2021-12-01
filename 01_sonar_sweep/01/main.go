package main

import (
	"fmt"
	"os"
)

func main() {
	var is []int
	var i int

	for {
		n, err := fmt.Scanf("%d", &i)

		if n != 1 {
			break
		}

		if err != nil {
			fmt.Println(err)
			os.Exit(1)
		}

		is = append(is, i)
	}

	inc := 0
	prev := is[0]
	for _, i := range is[1:] {
		if i > prev {
			inc++
		}
		prev = i
	}

	fmt.Println(inc)
}

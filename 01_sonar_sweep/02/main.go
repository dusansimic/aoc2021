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
	prev := is[0] + is[1] + is[2]
	for i := 3; i < len(is); i++ {
		sum := prev - is[i-3] + is[i]
		if sum > prev {
			inc++
		}
		prev = sum
	}

	fmt.Println(inc)
}

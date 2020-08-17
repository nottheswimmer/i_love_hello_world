package main


import (
    "fmt"
    "log"
    "os"
    "os/exec"
)

func main() {
    fmt.Println("Go: I love the clear syntax")
    cmd1 := exec.Command("javac", "hello_world.java")
    err := cmd1.Run()
	if err != nil {
		log.Fatalf("cmd.Run() failed with %s\n", err)
	}
	cmd2 := exec.Command("java", "hello_world")
	cmd2.Stdout = os.Stdout
	cmd2.Stderr = os.Stderr
	err = cmd2.Run()
	if err != nil {
		log.Fatalf("cmd.Run() failed with %s\n", err)
	}
	fmt.Println("Go: Boom-de-ah-da!")
}

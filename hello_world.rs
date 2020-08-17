use std::process::{Command, Stdio};

fn main() {
    println!("Rust: And all its bytes and bits!");
    Command::new("gcc")
        .args(&["hello_world.c", "-o", "hello_world_c"])
        .output()
        .expect("failed to execute process");
    Command::new("hello_world_c")
        .stdout(Stdio::inherit())
        .output()
        .expect("failed to execute process");
    println!("Rust: Boom-de-ah-da!");
}

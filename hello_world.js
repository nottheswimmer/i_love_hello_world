console.log("JavaScript: I love when great whites fly")
require("child_process").spawn('ruby', ['hello_world.rb'], {
  cwd: process.cwd(),
  stdio: "inherit"
});

console.log("JavaScript: I love when great whites fly")
let child = require("child_process").spawn('ruby', ['hello_world.rb'], {
  cwd: process.cwd(),
  stdio: "inherit"
});
child.on('exit', (code) => {
  console.log("JavaScript: Boom-de-ah-da!")
})

import 'dart:io';

main() {
  print('Dart: I love async programming');
  String fileExtension = '';
  if (Platform.isWindows) {
    fileExtension = '.exe';
  }
  Process.run('csc', ['-out:hello_world_cs' + fileExtension, 'hello_world.cs'])
      .then((processResult) {
    Process.start('hello_world_cs', [], mode: ProcessStartMode.inheritStdio)
        .then((process) {
      process.exitCode.then((exitCode) {
        print('Dart: Boom-de-ah-da!');
      });
    });
  });
}

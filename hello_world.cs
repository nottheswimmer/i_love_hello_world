using System;
using System.Diagnostics;

namespace HelloWorld
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("C#: I love tornadoes");
            var processInfo = new ProcessStartInfo
            {
                UseShellExecute = false,
                FileName = "julia",
                Arguments = "hello_world.jl"
            };

            using (var process = Process.Start(processInfo))
            {
                if (process != null) process.WaitForExit();
            }
            Console.WriteLine("C#: Boom-de-ah-da!");
        }
    }
}

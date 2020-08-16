import java.io.IOException;


public class hello_world {
    public static void main(String[] args) throws IOException, InterruptedException {
        System.out.println("Java: I love big bridges");
        ProcessBuilder p = new ProcessBuilder().inheritIO().command("node", "hello_world.js");
        p.start().waitFor();
        System.out.println("Java: Boom-de-ah-da!");
    }
}

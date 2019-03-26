import org.graalvm.polyglot.Context;

public class HelloPolyglot {
    public static void main(String[] args) {
        final Context context = Context.newBuilder().allowAllAccess(true).build();
        System.out.println("Hello Java!");
        context.eval("js", "print('Hello JavaScript!');");
        context.eval("R", "print('Hello R!');");
        context.eval("python", "print('Hello Python!')");
    }
}

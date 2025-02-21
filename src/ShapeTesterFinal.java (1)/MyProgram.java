import java.util.Scanner;

public class MyProgram {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Welcome to shape maker! Let's find the volume and surface area for a few shapes...");
        System.out.println("To build a box press 1:");
        System.out.println("To build a cone press 2:");
        System.out.println("To build a sphere press 3:");
        System.out.println("To build a pyramid press 4:");
        int shapeChoice = scanner.nextInt();  
        switch (shapeChoice) {
            case 1:
                Box box = new Box();
                System.out.println("Great! Let's start with a box. Please enter the width of the box:");
                box.setLength(scanner.nextDouble());  
                System.out.println("Please enter the height of the box:");
                box.setHeight(scanner.nextDouble());
                System.out.println("Please enter the breadth of the box:");
                box.setBreadth(scanner.nextDouble());
                System.out.println("The volume for your box: " + box.getVolume());
                System.out.println("The surface area for your box: " + box.getSurfaceArea());
                break;

            case 2:
                Cone cone = new Cone();
                System.out.println("Great! Let's start with a cone. Please enter the radius of the cone:");
                cone.setRadius(scanner.nextDouble());
                System.out.println("Please enter the height of the cone:");
                cone.setHeight(scanner.nextDouble());
                System.out.println("The volume for your cone: " + cone.getVolume());
                System.out.println("The surface area for your cone: " + cone.getSurfaceArea());
                break;

            case 3:
                Sphere sphere = new Sphere();
                System.out.println("Great! Let's start with a sphere. Please enter the radius of the sphere:");
                sphere.setRadius(scanner.nextDouble());
                System.out.println("The volume for your sphere: " + sphere.getVolume());
                System.out.println("The surface area for your sphere: " + sphere.getSurfaceArea());
                break;

            case 4:
                Pyramid pyramid = new Pyramid();
                System.out.println("Great! Let's start with a pyramid. Please enter the base length of the pyramid:");
                pyramid.setBaseLength(scanner.nextDouble());
                System.out.println("Please enter the base width of the pyramid:");
                pyramid.setBaseWidth(scanner.nextDouble());
                System.out.println("Please enter the height of the pyramid:");
                pyramid.setHeight(scanner.nextDouble());
                System.out.println("The volume for your pyramid: " + pyramid.getVolume());
                System.out.println("The surface area for your pyramid: " + pyramid.getSurfaceArea());
                break;

            default:
                System.out.println("Sorry, the shape option is not available.");
                break;
        }

        scanner.close();
    }
}
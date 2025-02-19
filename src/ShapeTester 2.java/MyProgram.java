import java.util.Scanner;

public class MyProgram {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Welcome to shape maker! Let's find the volume and surface area for a few shapes...");
        System.out.println("To build a box press 1:");
        System.out.println("To build a sphere press 2:");
        System.out.println("To build a pyramid press 3:");
        int choice = scanner.nextInt();
        if (choice == 1) {
            Box box = new Box();
            System.out.println("Great! Let's start with a box. Please enter the width of the box:");
            double width = scanner.nextDouble();
            box.setLength(width);
            System.out.println("Please enter the height of the box:");
            double height = scanner.nextDouble();
            box.setHeight(height);
            System.out.println("Please enter the breadth of the box:");
            double breadth = scanner.nextDouble();
            box.setBreadth(breadth);
            System.out.println("The volume for your box: " + box.getVolume());
            System.out.println("The surface area for your box: " + box.getSurfaceArea());
        } else if (choice == 2) {
            Sphere sphere = new Sphere();
            System.out.println("Great! Let's start with a sphere. Please enter the radius of the sphere:");
            double radius = scanner.nextDouble();
            sphere.setRadius(radius);
            System.out.println("The volume for your sphere: " + sphere.getVolume());
            System.out.println("The surface area for your sphere: " + sphere.getSurfaceArea());
        } else if (choice == 3) {
            Pyramid pyramid = new Pyramid();
            System.out.println("Great! Let's start with a pyramid. Please enter the length of the pyramid's base:");
            double length = scanner.nextDouble();
            pyramid.setLength(length);
            System.out.println("Please enter the breadth of the pyramid's base:");
            double breadth = scanner.nextDouble();
            pyramid.setBreadth(breadth);
            System.out.println("Please enter the height of the pyramid:");
            double height = scanner.nextDouble();
            pyramid.setHeight(height);
            System.out.println("The volume for your pyramid: " + pyramid.getVolume());
            System.out.println("The surface area for your pyramid: " + pyramid.getSurfaceArea());
        } else {
            System.out.println("Invalid choice! Please run the program again and choose a valid option.");
        }
        scanner.close();
    }
}
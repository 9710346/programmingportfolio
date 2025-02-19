public class Pyramid {
    private double length;
    private double breadth;
    private double height;
    public Pyramid() {
        this.length = 0;
        this.breadth = 0;
        this.height = 0;
    }
    public void setLength(double length) {
        this.length = length;
    }
    public void setBreadth(double breadth) {
        this.breadth = breadth;
    }
    public void setHeight(double height) {
        this.height = height;
    }
    public double getVolume() {
        return (1.0 / 3) * length * breadth * height;
    }
    public double getSurfaceArea() {
        double slantHeight = Math.sqrt(Math.pow(height, 2) + Math.pow(length / 2, 2));
        double baseArea = length * breadth;
        double lateralArea = 2 * (length * slantHeight / 2) + 2 * (breadth * slantHeight / 2);
        return baseArea + lateralArea;
    }
}
public class Box {
    private double length;
    private double breadth;
    private double height;
    public Box() {
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
        return length * breadth * height;
    }
    public double getSurfaceArea() {
        return 2 * (length * breadth + breadth * height + height * length);
    }
}
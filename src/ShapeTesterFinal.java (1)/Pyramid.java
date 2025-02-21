public class Pyramid {
    private double baseLength;
    private double baseWidth;
    private double height;
    public Pyramid() {
        this.baseLength = 0;
        this.baseWidth = 0;
        this.height = 0;
    }
    public void setBaseLength(double baseLength) {
        this.baseLength = baseLength;
    }
    public void setBaseWidth(double baseWidth) {
        this.baseWidth = baseWidth;
    }
    public void setHeight(double height) {
        this.height = height;
    }
    public double getVolume() {
        return (1.0 / 3.0) * baseLength * baseWidth * height;
    }
    public double getSurfaceArea() {
        double slantHeight = Math.sqrt(Math.pow(height, 2) + Math.pow(baseLength / 2, 2));
        double baseArea = baseLength * baseWidth;
        double lateralArea = 2 * baseLength * slantHeight + 2 * baseWidth * slantHeight;
        return baseArea + lateralArea;
    }
}
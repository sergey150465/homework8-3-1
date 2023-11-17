package re.netology.homework831new.requestResult;

public class RequestResult {
    public String customerName;
    public String productName;

    @Override
    public String toString() {
        return "RequestResult{" +
                "customerName='" + customerName + '\'' +
                ", productName='" + productName + '\'' +
                '}';
    }

    public RequestResult(String customerName, String productName) {
        this.customerName = customerName;
        this.productName = productName;
    }
}

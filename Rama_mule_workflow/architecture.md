# Order Management API - Architecture

## Overview
The Order Management API is designed as a single Mule application flow to handle end-to-end order processing. It integrates seamlessly with mock external APIs (Product API, Order API, Notification API) over HTTP to meet the hackathon requirements without needing actual external systems configured. This makes it standalone and highly testable.

## Components

1. **HTTP Listener (`/api/orders`)**: 
   The entry point of the API, accepting `POST` requests containing the order payload (`customerId`, `productId`, `quantity`).

2. **Validation**: 
   A Validation component ensures that the `productId` and `quantity` fields exist and are valid. Bad data raises a `VALIDATION:INVALID_BOOLEAN` error, automatically mapped to a business error `APP:INVALID_INPUT`.

3. **Product API Integration**:
   An HTTP Request invokes a local mock Product API flow to verify if the product exists and has sufficient stock. 
   - If stock is insufficient, an `APP:INSUFFICIENT_STOCK` error is raised.
   - If the product doesn't exist, it returns `HTTP:NOT_FOUND`, mapped to `APP:PRODUCT_NOT_FOUND`.

4. **Business Logic (DataWeave)**:
   The total price is calculated by multiplying `price` * `quantity`. If the subtotal exceeds ₹10,000, a 10% discount is applied automatically.

5. **Order API Integration**:
   An HTTP Request submits the processed payload to a local mock Order API, simulating the creation of the order in a downstream system and generating an `orderId`.

6. **Notification API Integration**:
   An HTTP Request sends the customer a final notification acknowledging the successful creation of their order, passing the `customerId` and total amount.

7. **Error Handling**:
   A Global Error Handler is implemented with `On Error Propagate` strategies to ensure any failures in the workflow are safely caught, transformed into clear JSON error messages, and returned with appropriate HTTP status codes (400, 404, 500).

## Next Steps
As required later, the mock HTTP integrations can be seamlessly replaced with standard connectors (like the Database Connector) to connect to a local SQL database without having to change the core flow logic.

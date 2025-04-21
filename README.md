# Healthcare Microservices Platform

A modern healthcare platform built with microservices architecture to handle patient management, billing, and analytics.

## Services

### Patient Service (Port: 4000)
- Core service for managing patient data 
- RESTful API endpoints for CRUD operations
- Validates patient information
- Integrates with billing via gRPC
- Publishes patient events to Kafka

### Billing Service (Ports: 4001, 9001)
- Manages patient billing accounts
- Exposes gRPC interface
- Handles billing account creation

### Analytics Service (Port: 4002)
- Consumes patient events from Kafka
- Processes patient data for analytics
- Asynchronous event processing

## Technologies

- **Java 21**
- **Spring Boot**

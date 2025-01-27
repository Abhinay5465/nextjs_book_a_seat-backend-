
# ** Dabur Workspace Optimizer Backend**

## **Overview**
The **backend** of the Workspace Optimizer is developed using **Node.js** and **Express.js**, with **PostgreSQL** as the database.  
This backend handles all server-side logic, database operations, and APIs for managing seat reservations and user authentication.  
It ensures secure and efficient communication between the frontend and the database.

---

## **Key Features**
- **User Authentication**
  - Register and login functionality for users (admins and employees).
  - Password encryption for secure storage using **bcrypt**.
  
- **Role-Based Access**
  - Admin access to view all bookings and user details.
  - Employee access to book, view, or cancel their reservations.

- **Real-Time Seat Availability**
  - APIs to fetch available workspaces for specific dates.
  - Ensure single booking per user at a time.

- **Reservation Management**
  - API to handle workspace reservations (one day in advance only).
  - Prevent multiple bookings by the same user.

- **Data Integrity**
  - Database operations ensure no overlapping bookings.
  - Restricts admin from deleting user bookings.

---

## **Tech Stack**
- **Node.js**: Runtime environment for building server-side applications.
- **Express.js**: Web framework for creating RESTful APIs.
- **PostgreSQL**: Relational database for storing user and reservation data.






# Restaurant Database Project (SQL Server)

This project is a simple and well-structured **Restaurant Management Database** designed using **SQL Server**.  
It demonstrates fundamental database concepts such as **Entity-Relationship modeling**, **table creation**, **primary and foreign keys**, and **basic SQL queries**.

The project is suitable for academic purposes and beginner-level database practice.

---

## 📌 Project Overview

The database models a restaurant system with the following main features:
- Managing customers
- Managing restaurant tables
- Managing food items
- Handling orders
- Storing order details (order items)

The design follows basic normalization rules and avoids data redundancy.

---

## 🗂 Database Structure

The database contains **5 tables**, each with **4 attributes**, as described below:

### 1. Customer
Stores customer information.
- `CustomerID` (Primary Key)
- `FullName`
- `Phone`
- `Email`

### 2. Table_Restaurant
Represents tables inside the restaurant.
- `TableID` (Primary Key)
- `TableNumber`
- `Capacity`
- `Status`

### 3. Food
Stores food menu items.
- `FoodID` (Primary Key)
- `Name`
- `Price`
- `Category`

### 4. Order
Stores customer orders.
- `OrderID` (Primary Key)
- `OrderDate`
- `TotalPrice`
- `CustomerID` (Foreign Key)
- `TableID` (Foreign Key)

### 5. OrderItem
Acts as a junction table between orders and food items.
- `OrderItemID` (Primary Key)
- `Quantity`
- `OrderID` (Foreign Key)
- `FoodID` (Foreign Key)

---

## 🔗 Relationships

- One customer can place multiple orders (**1:N**)
- One table can be used for multiple orders over time (**1:N**)
- One order can contain multiple food items (**1:N**)
- One food item can appear in multiple orders (**1:N**)

The many-to-many relationship between orders and food items is resolved using the `OrderItem` table.

---

## 🧠 SQL Code Explanation

The SQL script includes:

1. **Database creation**
   - Creates a database named `RestaurantDB`

2. **Table creation**
   - Defines tables with proper data types
   - Uses primary keys and foreign key constraints

3. **Data insertion**
   - Inserts simple sample data for customers, tables, food items, and orders

4. **Query examples**
   - SELECT queries using JOIN
   - Queries to display orders, customers, and order details

---

## ▶ How to Run the Project

1. Open **SQL Server Management Studio (SSMS)**
2. Copy the entire SQL script
3. Paste it into a new query window
4. Execute the script (Run)

The database and all tables will be created automatically.

---

## 🎓 Educational Purpose

This project is created for:
- Learning SQL basics
- Practicing relational database design
- University database courses
- Understanding ER models and relationships

---

## 📄 License

This project is for educational use only.


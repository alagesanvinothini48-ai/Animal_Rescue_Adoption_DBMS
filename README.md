# Animal Rescue & Adoption Management System

## About

The Animal Rescue & Adoption Management System is a SQLite-based DBMS project designed to manage rescued animals, shelters, rescue teams, medical records, adopters, and adoption requests.

## Objectives

- Store rescued animal details
- Manage animal shelter information
- Maintain rescue case information
- Manage rescue team details
- Store medical records
- Register adopter information
- Manage adoption requests
- Track adoption status
- Generate useful database reports

## Technologies Used

- SQLite
- DB Browser for SQLite
- SQL
- diagrams.net

## Database Tables

1. Animal_Types
2. Animals
3. Shelters
4. Rescue_Team
5. Rescue_Cases
6. Medical_Records
7. Adopters
8. Adoption_Requests

## DBMS Concepts Used

- Primary Key
- Foreign Key
- One-to-Many Relationships
- SQL JOIN
- GROUP BY
- Aggregate Functions
- Subqueries
- Views
- Triggers
- Normalization

## Main Features

### Animal Management
Stores animal name, type, breed, gender, age, health status, rescue date, shelter, and adoption status.

### Rescue Management
Maintains rescue cases, rescue locations, rescue dates, rescue conditions, and rescue team details.

### Medical Management
Stores diagnosis, treatment, veterinarian details, treatment date, and medical status.

### Adoption Management
Stores adopter details and adoption requests and tracks whether an adoption request is pending or approved.

### Automatic Adoption Update
A database trigger automatically changes an animal's adoption status to **Adopted** when its adoption request is approved.

## Project Structure

```text
Animal_Rescue_Adoption_DBMS
│
├── animal_rescue.db
├── animal_rescue.sql
│
├── ER_Diagram
│   └── animal_rescue_ER.png
│
├── Screenshots
│   ├── Available Animals
│   ├── Shelter Report
│   ├── Rescue Report
│   ├── Medical Report
│   ├── Adoption Report
│   ├── Available Animals View
│   └── Trigger Result
│
└── Report
```

## Outcome

The system provides an organized database for managing animal rescue, shelter, medical, and adoption information. It demonstrates important DBMS concepts and makes it easier to store, update, and retrieve animal-related information efficiently.

## Conclusion

The Animal Rescue & Adoption Management System successfully demonstrates how SQLite and SQL can be used to develop a structured database application for animal rescue and adoption management.

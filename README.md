# Wild Atlantic Way Rugby Club Database

---

## Overview

This project is a relational database schema and management system designed to streamline operational and administrative tracking for a community sports organisation.

---

## Features

- Full relational schema modelling teams, members, coaches, match fixtures, and events.
- Role-based access control (RBAC) with dedicated user privileges for administrative roles.
- SQL scripts demonstrating CRUD operations, inner joins, and custom database views.
- Theoretical validation mapping queries to Codd's Relational Rules.

---

## Installation

1. Clone the repository:
```bash
git clone https://github.com/SamK-ie/Wild-Atlantic-Way-Rugby-Club-Database.git
```

2. Navigate to the directory:
```bash
cd Wild-Atlantic-Way-Rugby-Club-Database
```

3. Open MySQL Workbench or your preferred MySQL DBMS environment.

---

## Repository Structure

```text
├── docs/
│   ├── DDD Community Club Database Project ERD.png
│   └── DDD---Community-Club-Database-Project.pdf
├── 01-schema-and-users.sql    # Table definitions, foreign keys, and RBAC users
├── 02-seed-data.sql           # Test data insertion scripts
└── 03-queries-and-views.sql   # CRUD operations, JOINS, views, and Codd's rules
``` 

## Technical Implementation

### 1. Schema & Security (`01-schema-and-users.sql`)
* **DDL Constraints:** Implements primary keys, foreign key referential integrity, and appropriate data types across `Team`, `GameMatch`, `Coach`, `TeamEvent`, and `ClubMember` tables.
* **Access Control (RBAC):** Establishes dedicated database user accounts (`Chairperson`, `Secretary`, `Membership`) with granular permissions and explicit privilege revocations based on administrative roles.

### 2. Data Seeding (`02-seed-data.sql`)
* **Test Dataset:** Populates relational tables with structured sample data representing senior and youth teams, coaching certifications, player positions, events, and match results.

### 3. Queries, Views & Codd's Rules (`03-queries-and-views.sql`)
* **CRUD Functionality:** Demonstrates core data operations including `SELECT`, `INSERT`, `UPDATE`, and `DELETE` queries.
* **Relational Joins:** Uses `INNER JOIN` logic to map entities across relationships, such as linking coaches directly to their assigned teams.
* **SQL Views:** Creates reusable views (such as `MembershipTeam`) to filter active player roles for efficient administrative access.
* **Theoretical Validation:** Demonstrates adherence to Codd's Relational Rules:
  * **Rule 1 (Information Representation):** Data access via primary key lookups (`CoachID`, `EventID`).
  * **Rule 7 (High-Level Insert, Update, and Delete):** Multi-row insertions in single statements.
  * **Rule 10 (Physical Data Independence):** Table joins preserved via foreign key constraints without altering underlying data.

To initialise and test the database, run the scripts sequentially in your DBMS environment:
- `01-schema-and-users.sql`
- `02-seed-data.sql`
- `03-queries-and-views.sql`

Supplementary documentation and the ERD diagram are located in the `docs/` folder.

## License

This project is licensed under the MIT License.

## Contributing

Contributions are welcome!

If you have suggestions for schema optimisations or query enhancements, feel free to fork the repository and submit a pull request.

## Authors

- Samantha Kenny [@SamK-ie](https://github.com/SamK-ie)

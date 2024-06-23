# School System

## About

The School System is a comprehensive mobile application built using Flutter. It interacts with a backend server written in PHP and utilizes a MySQL database. This system allows for the management of student and employee data, and enables teachers to add exams and record student grades.

## Features

- **Student Management**: Add, update, and delete student records.
- **Employee Management**: Manage teacher and staff records.
- **Exam Management**: Teachers can create and manage exams.
- **Grade Management**: Save and update student grades.

## Technologies Used

- **Frontend**: Flutter
- **Backend**: PHP
- **Database**: MySQL

## Installation

### Prerequisites

- Flutter SDK
- Dart SDK
- Web server (Apache)

### Steps

#### Backend Setup

1. Clone the repository

2. Navigate to the backend directory

3. Import the database

    - Create a new database in MySQL.
    - Import the provided `school_system.sql` file into your MySQL database.

4. Start your web server and ensure the backend is running.

#### Frontend Setup

1. Clone the repository

2. Navigate to the frontend directory

3. Install dependencies:

    ```bash
    flutter pub get
    ```

4. Update the backend URL

5. Run the application:

    ```bash
    flutter run
    ```

## Usage

- **Students**: Manage student records including personal information, enrollment details, and grades.
- **Employees**: Manage teacher and staff records.
- **Teachers**: Add and manage exams, input student grades.

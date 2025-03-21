# Task Management System

## Overview
This project is a **Task Management System** designed to help users organize, track, and manage their tasks efficiently. It is built using PHP and runs on a local server environment powered by XAMPP.

## Features
- Create, update, and delete tasks.
- Categorize tasks by priority and status.
- User-friendly interface for task management.
- Search and filter tasks.
- Persistent data storage using a database.

## Installation

1. **Clone the Repository**:
    ```bash
    git clone https://github.com/abdullahholif21/Taskmanagment
    ```
2. **Set Up XAMPP**:
    - Download and install [XAMPP](https://www.apachefriends.org/index.html).
    - Start the Apache and MySQL services.

3. **Move Project Files**:
    - Place the project folder in the `htdocs` directory of your XAMPP installation.

4. **Database Setup**:
    - Open `phpMyAdmin` in your browser (`http://localhost/phpmyadmin`).
    - Create a new database (e.g., `taskmg`).
    - Import the provided SQL file (`database.sql`) into the database.

5. **Configure Database Connection**:
    - Open the `config.php` file in the project directory.
    - Update the database credentials:
      ```php
      define('DB_HOST', 'localhost');
      define('DB_USER', 'root');
      define('DB_PASS', '');
      define('DB_NAME', 'taskmg');
      ```

6. **Run the Application**:
    - Open your browser and navigate to `http://localhost/Taskmg`.

## Usage
1. Add new tasks by filling out the task form.
2. View all tasks in the task list.
3. Edit or delete tasks as needed.
4. Use the search and filter options to find specific tasks.

## Technologies Used
- **Backend**: PHP
- **Frontend**: HTML, CSS, JavaScript
- **Database**: MySQL
- **Server**: XAMPP

## Contributing
Contributions are welcome! Please follow these steps:
1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Commit your changes and push them to your fork.
4. Submit a pull request.

## License
This project is licensed under the [MIT License](LICENSE).

## Contact
For any questions or feedback, please contact:
- **Email**: [abdullahholif21@gmail.com]
- **GitHub**: [abdullahholif21]

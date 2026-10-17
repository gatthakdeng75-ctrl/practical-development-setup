# Practical Development Setup: Flutter, Python, MySQL, and VS Code Integration

**Student Name:** Gatthak Deng Biel  
**Date:** 17 October 2026  
**Course/Class:** Practical Development Setup

## Task 1: Flutter & Dart Environment Setup

### Flutter Installation Verification

Command:

```powershell
flutter doctor
```

**Results:** Paste the actual output from the terminal here.

### Create a Flutter Application

Commands:

```powershell
flutter create my_first_app
cd my_first_app
flutter devices
```

**Device detection results:** Paste the actual output from `flutter devices` here.

### Hot Reload vs Hot Restart

Hot Reload applies code changes to a running Flutter application while generally preserving its current state. It is useful for quickly checking changes to the user interface and application logic.

Hot Restart restarts the application and resets its current state. It is useful when changes require the application to start again from its initial state.

## Task 2: MySQL Database Management

### Database and Table

The `school` database was created, and the `students` table contains the following fields:

- `id`: Auto-incrementing primary key.
- `name`: Student name, up to 100 characters.
- `email`: Unique email address, up to 150 characters.
- `enrolled_on`: Enrollment date.

### SQL Script

See [`sql/school_setup.sql`](sql/school_setup.sql).

### Query Results

The command `SELECT * FROM students;` returned two records:

| id | name | email | enrolled_on |
|---|---|---|---|
| 1 | Alice Johnson | alice@example.com | 2026-10-01 |
| 2 | Brian Smith | brian@example.com | 2026-10-02 |

A screenshot of the actual terminal output should be added to the `screenshots/` folder.

### Security Reflection

Using the MySQL root account for application connections is poor security practice because root has extensive administrative privileges. If an application is compromised, an attacker may access sensitive data, delete databases, or change database permissions.

A dedicated application account should have only the privileges necessary for its work. The following SQL creates a separate user and grants access to the `school` database:

```sql
CREATE USER 'school_app'@'localhost'
IDENTIFIED BY 'ReplaceWithAUniqueStrongPassword!';

GRANT SELECT, INSERT, UPDATE, DELETE
ON school.*
TO 'school_app'@'localhost';

SHOW GRANTS FOR 'school_app'@'localhost';
```

The password shown is a placeholder. Use a strong, unique password if executing the commands. Application credentials should be stored securely, and the root account should not be used for routine application connections.

## Task 3: Python Environment & Dependency Isolation

The project directory is `python_setup_lab`, and the virtual environment is `venv`.

Commands:

```powershell
python -m venv venv
.\venv\Scripts\Activate.ps1
python -m pip install requests
python -m pip list
python -m pip freeze > requirements.txt
```

The `requests` package should appear in the package list, and `requirements.txt` should contain the installed dependencies.

### Dependency Installation

See [`requirements.txt`](requirements.txt).

## Task 4: VS Code Workspace Configuration

Install and verify these extensions:

- Flutter
- Dart
- Python
- Pylance
- MySQL

Select the Python interpreter located at `python_setup_lab\venv\Scripts\python.exe`.

**Screenshot evidence:** Add a full-screen VS Code screenshot showing the Extensions panel, the active `(venv)` terminal, and the selected Python interpreter in the status bar.

## Conclusion

This assignment documents the development environment setup for Flutter, Python, MySQL, and Visual Studio Code. It also demonstrates database management, least-privilege security, and Python dependency isolation.
### Flutter Verification Results

The `flutter doctor` command completed with exit code 0. It reported issues in two categories that require review.

Available target devices detected:

- Windows desktop (windows-x64)
- Google Chrome (web)
- Microsoft Edge (web)

Python interpreter selected in VS Code:

`C:\Users\PC\python_setup_lab\venv\Scripts\python.exe`
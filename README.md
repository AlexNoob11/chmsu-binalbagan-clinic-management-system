## 🚀 How to Run locally on XAMPP

Follow these steps to set up and run the **CHMSU Binalbagan Clinic Management System** on your local machine using XAMPP.

---

### Prerequisites
* [XAMPP](https://www.apachefriends.org/index.html) installed (with Apache and MySQL enabled)
* Web browser (Chrome, Edge, Firefox, etc.)

---

### Step-by-Step Installation

#### 1. Move Project Files to `htdocs`
1. Download or clone this repository.
2. Move the extracted project folder into your XAMPP `htdocs` directory:
   * **Windows:** `C:\xampp\htdocs\chmsu-binalbagan-clinic-management-system`
   * **macOS:** `/Applications/XAMPP/htdocs/chmsu-binalbagan-clinic-management-system`

#### 2. Start XAMPP Services
1. Open the **XAMPP Control Panel**.
2. Start both **Apache** and **MySQL**.
3. *Verification:* Ensure both modules highlight green with assigned port numbers (e.g., Port 80 for Apache, 3306 for MySQL).

#### 3. Create Database
1. Open your browser and go to `http://localhost/phpmyadmin`.
2. Click **New** in the left sidebar.
3. Enter `clinic_system` as the database name and click **Create**.

#### 4. Import SQL File
1. Select the `clinic_system` database from the left panel.
2. Click the **Import** tab at the top.
3. Click **Choose File** and select the `.sql` file included in the project directory.
4. Scroll down and click **Go**.
5. *Verification:* Confirm that all tables imported successfully without SQL syntax errors.

#### 5. Configure Database Connection
1. Open the project folder in your text editor (e.g., VS Code).
2. Locate the configuration file (e.g., `db.php`, `config.php`, or `connection.php`).
3. Update the credentials to match your local XAMPP environment:
   ```php
   $host = "localhost";
   $user = "root";
   $password = "";
   $dbname = "clinic_system";

#### 6. Access Application on Google Chrome
1. Open **Google Chrome** (or your preferred web browser).
2. Enter the following URL in the address bar: `http://localhost/chmsu-binalbagan-clinic-management-system/`
3. *Verification:* The system login/dashboard page should display without any database connection errors.

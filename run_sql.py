import sqlite3
def execute_sql_file(database, file_path):
    """
    Thực thi một tệp SQL trên cơ sở dữ liệu SQLite.
    """
    try:
        with sqlite3.connect(database) as conn:
            with open(file_path, 'r', encoding='utf-8') as f:
                sql_script = f.read()
            conn.executescript(sql_script)
            print(f"Successfully executed {file_path}")
    except Exception as e:
        print(f"Error executing {file_path}: {e}")

if __name__ == "__main__":
    # Đường dẫn cơ sở dữ liệu
    database = "ebook.db"

    # Thực thi file schema.sql
    execute_sql_file(database, "migrations/schema.sql")

    # Thực thi file seed.sql (nếu có)
    execute_sql_file(database, "migrations/seed.sql")

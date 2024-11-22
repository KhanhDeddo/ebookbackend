<!-- 
python -m venv venv
source venv/Scripts/activate
pip install flask
pip install flask_sqlalchemy
pip freeze > requirements.txt
pip install flask-cors
cd .. tro ra thu muc cha


git add requirements.txt
git commit -m "Tạo lại requirements.txt"
git push



-->
/project_name
│
├── /app                     # Thư mục chính chứa mã nguồn ứng dụng
│   ├── __init__.py          # Tập tin khởi tạo ứng dụng Flask
│   ├── routes.py            # Tập tin định nghĩa các API endpoint
│   ├── models.py            # Định nghĩa các model (ORM hoặc thủ công)
│   ├── db_init.py           # Tập tin khởi tạo cơ sở dữ liệu SQLite
│   └── utils.py             # Các hàm tiện ích dùng chung
│
├── /migrations              # Thư mục chứa các tệp SQL (tạo bảng, thêm dữ liệu)
│   ├── schema.sql           # Câu lệnh SQL để tạo bảng (dùng để khởi tạo DB)
│   └── seed.sql             # Dữ liệu mẫu ban đầu (tùy chọn)
│
├── /tests                   # Chứa các tệp kiểm thử
│   └── test_routes.py       # Test các API endpoint
│
├── /static                  # Chứa các tệp tĩnh (nếu cần)
│
├── /templates               # Chứa tệp HTML (nếu cần giao diện backend Flask)
│
├── app.py                   # Điểm khởi chạy ứng dụng Flask
├── requirements.txt         # Danh sách các thư viện Python cần thiết
├── .gitignore               # Tệp để bỏ qua các file/folder không cần thiết trong Git
└── README.md                # Hướng dẫn sử dụng dự án

/project_name
│
├── /app
│   ├── __init__.py      # Khởi tạo ứng dụng Flask
│   ├── routes.py        # Các API endpoint
│   ├── models.py        # Các model
│   ├── db_init.py       # Khởi tạo cơ sở dữ liệu
│   └── utils.py         # Các hàm tiện ích
│
├── /migrations          # Chứa các tệp SQL
│   ├── schema.sql       # Câu lệnh SQL để tạo bảng
│   └── seed.sql         # Dữ liệu mẫu ban đầu
│
├── app.py               # Điểm chạy chính của ứng dụng Flask
├── run_sql.py           # Script để thực thi các tệp SQL
├── requirements.txt     # Danh sách thư viện Python
└── .gitignore           # Bỏ qua tệp không cần thiết

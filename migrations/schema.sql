DROP TABLE IF EXISTS Users;
CREATE TABLE Users (
    user_id INTEGER PRIMARY KEY AUTOINCREMENT,       -- Mã người dùng (khóa chính, tự động tăng)
    user_name TEXT NOT NULL,                         -- Tên người dùng (không được để trống)
    user_email TEXT NOT NULL UNIQUE,                 -- Email người dùng (phải là duy nhất)
    user_password TEXT NOT NULL,                     -- Mật khẩu
    user_phone TEXT NOT NULL,                        -- Số điện thoại
    user_date_of_birth DATE NOT NULL,                -- Ngày sinh
    user_gender TEXT NOT NULL,                       -- Giới tính
    user_is_admin BOOLEAN NOT NULL DEFAULT 0         -- Quyền admin, mặc định là không phải admin
);

DROP TABLE IF EXISTS Books;
CREATE TABLE Books (
    book_id INTEGER PRIMARY KEY AUTOINCREMENT,        -- Mã sách (khóa chính, tự động tăng)
    title TEXT NOT NULL,                              -- Tiêu đề sách
    author TEXT NOT NULL,                             -- Tác giả
    description TEXT,                                 -- Mô tả sách
    price DECIMAL(10, 2) NOT NULL,                    -- Giá sách
    url_book TEXT,                                    -- URL (hình ảnh hoặc sách điện tử)
    publication_date DATE,                            -- Ngày xuất bản
    category TEXT NOT NULL,                           -- Thể loại sách
    stock_quantity INTEGER NOT NULL DEFAULT 0,        -- Số lượng tồn kho
    publisher TEXT,                                   -- Nhà xuất bản
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,   -- Ngày tạo bản ghi
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP    -- Ngày cập nhật bản ghi
);

DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY AUTOINCREMENT,       
    user_id INTEGER NOT NULL,                                  
    order_date DATE NOT NULL,                                  
    status TEXT NOT NULL,                                      
    total_price DECIMAL(10, 2) NOT NULL,                       
    shipping_address TEXT NOT NULL,                            
    payment_method TEXT NOT NULL,                              
    payment_status TEXT NOT NULL,                              
    shipping_date DATE,                                        
    delivery_date DATE,                                        
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);
DROP TABLE IF EXISTS Order_Items;
CREATE TABLE Order_Items (
    order_id INTEGER NOT NULL,                       -- Mã đơn hàng (khóa phụ)
    book_id INTEGER NOT NULL,                        -- Mã sản phẩm (khóa phụ)
    quantity INTEGER NOT NULL,                       -- Số lượng sản phẩm
    price_per_item DECIMAL(10, 2) NOT NULL,          -- Giá mỗi sản phẩm
    total_price DECIMAL(10, 2) NOT NULL,             -- Tổng giá trị của mục này (quantity * price_per_item)
    PRIMARY KEY (order_id, book_id),                 -- Đặt order_id và book_id làm khóa chính
    FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE, -- Liên kết với bảng Orders
    FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE -- Liên kết với bảng Products
);

DROP TABLE IF EXISTS Cart_Shop;
CREATE TABLE Cart_Shop (
    user_id INTEGER NOT NULL,                           -- Mã người dùng (khóa ngoại)
    book_id INTEGER NOT NULL,                           -- Mã sách (khóa ngoại)
    quantity INTEGER NOT NULL DEFAULT 1,                -- Số lượng sách trong giỏ
    added_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,       -- Ngày giờ thêm sách vào giỏ
    PRIMARY KEY (user_id, book_id),                     -- Khóa chính
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE
);





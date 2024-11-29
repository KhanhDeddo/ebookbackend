INSERT INTO Users (user_name, user_email, user_password, user_phone, user_date_of_birth, user_gender,user_address, user_is_admin)
VALUES 
('Khanh Deddo', 'khanhdeddo@gmail.com', '123456789', '1234567890', '2004-02-19', 'Nam','25/41/292 Kim Giang Hoàng Mai Hà Nội', 0),
('Admin', 'admin@gmai.com', '123456789', '1122334455', '1985-01-01', 'Nu','25/41/292 Kim Giang Hoàng Mai Hà Nội', 1);
 
INSERT INTO Books (title, author, description, price, image_url, publication_date, category,level_class,level_school, stock_quantity, publisher)
VALUES 
('Khoa Học Tự Nhiên 7', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Khoa Học Tự Nhiên lớp 7, tích hợp các kiến thức về vật lý, hóa học và sinh học.', 27.000, 'https://th.bing.com/th/id/OIP.czGlBv1kCuUCc_0Q9nNrVQHaKZ?rs=1&pid=ImgDetMain', '2024-01-01', 'Khoa học tự nhiên','7','Trung học cơ sỏ', 90, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Ngữ Văn 7', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Ngữ Văn lớp 7 theo chương trình mới, giúp học sinh phát triển kỹ năng đọc hiểu và viết.', 25.000, 'https://th.bing.com/th/id/OIP.uCFd9Bcb-F0Y2Klj44WRPQHaKZ?rs=1&pid=ImgDetMain', '2024-01-01', 'Ngữ văn','7','Trung học cơ sỏ', 0, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Toán 7 - Tập 1', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Toán lớp 7 tập 1, bao gồm các nội dung đại số và hình học cơ bản.', 30.000, 'https://th.bing.com/th/id/OIP.sf5wMqsNn2Yv3gUSjgDG7AHaKY?w=184&h=258&c=7&r=0&o=5&pid=1.7', '2024-01-01', 'Toán','7','Trung học cơ sỏ', 120, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Toán 7 - Tập 2', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Toán lớp 7 tập 2, tiếp tục các nội dung đại số và hình học nâng cao.', 30.000, 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhXYSaDHYHDA0E_LTp-Hi37wQq6nqc_4s_pK21OHjQn0rd7uw4KS5DLeobyJfmZpoG_q20dNoXxRI3K592bIWIWN3kARLekc5SeekorQqkEIlpBU7uipC-uo4TvSRThI7-Ud4u1maieEDvEuEwBiGU499XiBonmOA4E-NHLOzkQHHFE0eTCZaocUp_Ewg/s2136/SGK%20Toan%207%20tap%202%20Canh%20Dieu.jpg', '2024-01-01', 'Toán','7','Trung học cơ sỏ', 0, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Lịch Sử & Địa lý 7', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Lịch Sử lớp 7, cung cấp kiến thức về lịch sử Việt Nam và thế giới.', 22.000, 'https://blogger.googleusercontent.com/img/a/AVvXsEjgZdFqNYzctYJS5LXeN4vqSORAA5VYv0AUaqrSFma-EETaBuBeeL-c96hc2bkyNBqzkwgsUPh1h6BDm-86gjR8wSJHzf7raVhgPyWZ276UDy5I_72wwLFmNg8CLTeXmDX1XOLhNSrhSdN4LJ_mHYmS38XSlUiwGjPJpvAEZabTqXjtnUr6lU8FiN_5Og=w1600', '2024-01-01', 'Lịch sử','7','Trung học cơ sỏ', 80, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Tiếng Anh 7', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Tiếng Anh lớp 7 theo chương trình mới, giúp phát triển kỹ năng nghe, nói, đọc, viết.', 19.000, 'https://imgv2-1-f.scribdassets.com/img/document/584509102/original/326672492d/1686129868?v=1', '2024-01-01', 'Tiếng anh','7','Trung học cơ sỏ', 50, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Công Nghệ 7', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Công Nghệ lớp 7, cung cấp các kiến thức về nông nghiệp và công nghiệp cơ bản.', 20.000, 'https://hocvuighe.com/wp-content/uploads/2022/04/1_Congnghe7_25_03_2022_v12-730x1024.jpg', '2024-01-01', 'Công nghệ','7','Trung học cơ sỏ', 70, 'Nhà Xuất Bản Giáo Dục Việt Nam');


-- INSERT INTO Orders (user_id, order_date, status, total_price, shipping_address, payment_method, payment_status, shipping_date, delivery_date)
-- VALUES 
-- (1, '2024-11-25', 'Pending', 21.98, '123 Main Street, Springfield', 'Credit Card', 'Paid', '2024-11-26', NULL),
-- (2, '2024-11-24', 'Shipped', 12.99, '456 Elm Street, Shelbyville', 'Cash on Delivery', 'Unpaid', '2024-11-25', '2024-11-26');

-- INSERT INTO Order_Items (order_id, book_id, quantity, price_per_item, total_price)
-- VALUES 
-- (1, 1, 1, 10.99, 10.99),
-- (1, 2, 1, 9.99, 9.99),
-- (2, 3, 1, 12.99, 12.99);

INSERT INTO Carts (user_id, quantity, total_amount)
VALUES 
( 1, 2, 500000),
( 2, 1, 500000);

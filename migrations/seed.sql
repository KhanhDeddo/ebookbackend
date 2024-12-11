INSERT INTO Users (user_name, user_email, user_password, user_phone, user_date_of_birth, user_gender,user_address, user_is_admin)
VALUES 
('Admin', 'admin@gmail.com', '123456789', '1122334455', '1985-01-01', 'Nu','25/41/292 Kim Giang Hoàng Mai Hà Nội', 1),
('Khanh Deddo', 'khanh@gmail.com', '123456789', '123456789', '2004-02-19', 'Nam','25/41/292 Kim Giang Hoàng Mai Hà Nội', 0);
INSERT INTO Books (title, author, description, price, image_url, publication_date, category,level_class,level_school, stock_quantity, publisher)
VALUES 
('Khoa Học Tự Nhiên 7', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Khoa Học Tự Nhiên lớp 7, tích hợp các kiến thức về vật lý, hóa học và sinh học.', 27.000, 'https://th.bing.com/th/id/OIP.czGlBv1kCuUCc_0Q9nNrVQHaKZ?rs=1&pid=ImgDetMain', '2024-01-01', 'Khoa học tự nhiên','7','Trung học cơ sở', 90, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Ngữ Văn 7', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Ngữ Văn lớp 7 theo chương trình mới, giúp học sinh phát triển kỹ năng đọc hiểu và viết.', 25.000, 'https://th.bing.com/th/id/OIP.uCFd9Bcb-F0Y2Klj44WRPQHaKZ?rs=1&pid=ImgDetMain', '2024-01-01', 'Ngữ văn','7','Trung học cơ sở', 0, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Toán 7 - Tập 1', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Toán lớp 7 tập 1, bao gồm các nội dung đại số và hình học cơ bản.', 30.000, 'https://th.bing.com/th/id/OIP.sf5wMqsNn2Yv3gUSjgDG7AHaKY?w=184&h=258&c=7&r=0&o=5&pid=1.7', '2024-01-01', 'Toán','7','Trung học cơ sở', 120, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Toán 7 - Tập 2', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Toán lớp 7 tập 2, tiếp tục các nội dung đại số và hình học nâng cao.', 30.000, 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhXYSaDHYHDA0E_LTp-Hi37wQq6nqc_4s_pK21OHjQn0rd7uw4KS5DLeobyJfmZpoG_q20dNoXxRI3K592bIWIWN3kARLekc5SeekorQqkEIlpBU7uipC-uo4TvSRThI7-Ud4u1maieEDvEuEwBiGU499XiBonmOA4E-NHLOzkQHHFE0eTCZaocUp_Ewg/s2136/SGK%20Toan%207%20tap%202%20Canh%20Dieu.jpg', '2024-01-01', 'Toán','7','Trung học cơ sở', 0, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Lịch Sử & Địa lý 7', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Lịch Sử lớp 7, cung cấp kiến thức về lịch sử Việt Nam và thế giới.', 22.000, 'https://blogger.googleusercontent.com/img/a/AVvXsEjgZdFqNYzctYJS5LXeN4vqSORAA5VYv0AUaqrSFma-EETaBuBeeL-c96hc2bkyNBqzkwgsUPh1h6BDm-86gjR8wSJHzf7raVhgPyWZ276UDy5I_72wwLFmNg8CLTeXmDX1XOLhNSrhSdN4LJ_mHYmS38XSlUiwGjPJpvAEZabTqXjtnUr6lU8FiN_5Og=w1600', '2024-01-01', 'Lịch sử','7','Trung học cơ sở', 80, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Tiếng Anh 7', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Tiếng Anh lớp 7 theo chương trình mới, giúp phát triển kỹ năng nghe, nói, đọc, viết.', 19.000, 'https://imgv2-1-f.scribdassets.com/img/document/584509102/original/326672492d/1686129868?v=1', '2024-01-01', 'Tiếng anh','7','Trung học cơ sở', 50, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Công Nghệ 7', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Công Nghệ lớp 7, cung cấp các kiến thức về nông nghiệp và công nghiệp cơ bản.', 20.000, 'https://hocvuighe.com/wp-content/uploads/2022/04/1_Congnghe7_25_03_2022_v12-730x1024.jpg', '2024-01-01', 'Công nghệ','7','Trung học cơ sở', 70, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Tiếng Việt 1 - Tập 1', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Tiếng Việt lớp 1 tập 1.', 25.000, 'https://sobee.vn/wp-content/uploads/2020/06/Tieng-Viet-1-tap-1.png', '2024-01-01', 'Tiếng việt', '1', 'Tiểu học', 90, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Vở bài tập Tiếng Việt 1 - Tập 1', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Tiếng Việt lớp 1 tập 1.', 13.000, 'https://nhasachphuongnam.com/images/thumbnails/600/741/detailed/202/vo-bai-tap-tieng-viet-lop-1-tap-1-ket-noi.jpg', '2024-01-01', 'Tiếng việt', '1', 'Tiểu học', 90, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Tập Viết 1 - Tập 1', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Tiếng Việt lớp 1 tập 1.', 8.000, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq56x8bsRt-Sqs0YSLlM9Umj6UAG-TOG4Dhw&s', '2024-01-01', 'Tiếng việt', '1', 'Tiểu học', 90, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Tiếng Việt 1 - Tập 2', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Tiếng Việt lớp 1 tập 2.', 25.000, 'https://nhasachphuongnam.com/images/thumbnails/435/537/detailed/251/tieng-viet-lop-1-tap-2-ket-noi-tri-thuc-voi-cuoc-song.jpg', '2024-01-01', 'Tiếng việt', '1', 'Tiểu học', 90, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Vở bài tập Tiếng Việt 1 - Tập 2', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Tiếng Việt lớp 1 tập 2.', 20.000, 'https://salt.tikicdn.com/cache/750x750/ts/product/50/54/df/ff5b75cc9eb0bd9f59ee0ebba8d69930.jpg.webp', '2024-01-01', 'Tiếng việt', '1', 'Tiểu học', 90, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Tập Viết 1 - Tập 2', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Tiếng Việt lớp 1 tập 2.', 14.000, 'https://salt.tikicdn.com/cache/750x750/ts/product/c2/79/ac/a1bd82c6ea1a5965758b139527c554a7.jpg.webp', '2024-01-01', 'Tiếng việt', '1', 'Tiểu học', 90, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Toán 1 - Tập 1', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Toán lớp 1 tập 1.', 25.000, 'https://sytu.vn//images/bookimg/sgk-toan-1-tap-lop-1-ket-noi-tri-thuc-voi-cuoc-song-26.jpg', '2024-01-01', 'Toán', '1', 'Tiểu học', 90, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Vở bài tập Toán 1 - Tập 1', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Toán lớp 1 tập 1.', 16.000, 'https://bizweb.dktcdn.net/thumb/grande/100/445/986/products/vo-bai-tap-toan-1-tap-1-ket-noi-tri-thuc-voi-cuoc-song-500x554.jpg?v=1686221650190', '2024-01-01', 'Toán', '1', 'Tiểu học', 90, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Toán 1 - Tập 2', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Toán lớp 1 tập 2.', 28.300, 'https://sytu.vn//images/bookimg/sgk-toan-1-tap-lop-2-ket-noi-tri-thuc-voi-cuoc-song-27.jpg', '2024-01-01', 'Toán', '1', 'Tiểu học', 90, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Vở bài tập Toán 1 - Tập 2', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Toán lớp 1 tập 2.', 14.700, 'https://product.hstatic.net/200000280811/product/-lop-1-tap-2-ket-noi-tri-thuc-2021-01_6a6b8099712c47d2afb42df0a4cf6c2e_41e6f3a632d8410ba1089023f419a6ee_master.jpg', '2024-01-01', 'Toán', '1', 'Tiểu học', 90, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Đạo đức 1', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Đạo đức lớp 1.', 14.400, 'https://sytu.vn//images/bookimg/sgk-dao-duc-lop-1-ket-noi-tri-thuc-voi-cuoc-song-5.jpg', '2024-01-01', 'Đạo đức', '1', 'Tiểu học', 90, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Vở bài tập Đạo đức 1', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Đạo đức lớp 1.', 11.000, 'https://sachgiaokhoa.vn/pub/media/catalog/product/cache/3bd4b739bad1f096e12e3a82b40e551a/s/g/sgk-l1-gd-68.jpg', '2024-01-01', 'Đạo đức', '1', 'Tiểu học', 90, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Tự nhiên và Xã hội', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Tự nhiên và Xã hội lớp 1, bao gồm các nội dung tự nhiên và xã hội cơ bản.', 17.000, 'https://salt.tikicdn.com/cache/750x750/ts/product/36/6c/d3/794c7d7fd76a8ad2ebe924599d5ced53.jpg.webp', '2024-01-01', 'Tự nhiên và xã hội', '1', 'Tiểu học', 120, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Vở bài tập Tự nhiên và Xã hội', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Tự nhiên và Xã hội lớp 1, bao gồm các nội dung tự nhiên và xã hội cơ bản.', 13.000, 'https://salt.tikicdn.com/cache/750x750/ts/product/cd/4e/8f/d83d3f26643c1a2f234326db1a38ac0d.jpg.webp', '2024-01-01', 'Tự nhiên và xã hội', '1', 'Tiểu học', 120, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Giáo dục thể chất', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Giáo dục thể chất lớp 1.', 13.000, 'https://salt.tikicdn.com/cache/750x750/ts/product/62/c7/67/2e1dfef2fc03e04cbe45749a6a26e332.jpg.webp', '2024-01-01', 'Giáo dục thể chất', '1', 'Tiểu học', 90, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Âm nhạc', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Âm nhạc lớp 1.', 13.000, 'https://sytu.vn//images/bookimg/sgk-am-nhac-lop-1-ket-noi-tri-thuc-voi-cuoc-song-2.jpg', '2024-01-01', 'Âm nhạc', '1', 'Tiểu học', 90, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Mỹ thuật', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Mỹ thuật lớp 1.', 12.000, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwIHEH11C3iFz1i_-uuz7OcpMsNjV4iBre-g&s', '2024-01-01', 'Mỹ thuật', '1', 'Tiểu học', 90, 'Nhà Xuất Bản Giáo Dục Việt Nam'),

('Tiếng Việt 2 - Tập 1', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Tiếng Việt lớp 2 tập 1.', 33.000, 'https://hieusach24h.com/wp-content/uploads/2023/05/Tieng-Viet-2-Tap-1-Ket-noi-tri-thuc-voi-cuoc-song.jpg', '2024-01-01', 'Tiếng việt', '2', 'Tiểu học', 90, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Toán 2 - Tập 1', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Toán lớp 2 tập 1, bao gồm các nội dung đại số cơ bản.', 19.000, 'https://product.hstatic.net/200000280811/product/toan-lop-2-tap-1-ket-noi-tri-thuc-02_783ccf99dfff4c6ea7aa8530103689f2_6966bd0e0aae4f45bd1bce7060838601_master.jpg', '2024-01-01', 'Toán', '2', 'Tiểu học', 120, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Vở bài tập Toán 2 - Tập 1', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Toán lớp 2 tập 1, bao gồm các nội dung đại số cơ bản.', 20.000, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/445/986/products/1-compressed-jpg-v-1-0-1-fe4c0b6e-89ed-420a-9d63-e04f58fed6bb.jpg?v=1686630804240', '2024-01-01', 'Toán', '2', 'Tiểu học', 120, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Toán 2 - Tập 2', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Toán lớp 2 tập 2, bao gồm các nội dung đại số cơ bản.', 23.000, 'https://hieusach24h.com/wp-content/uploads/2023/05/toan-2-tap-2-ket-noi-tri-thuc-voi-cuoc-song.jpg', '2024-01-01', 'Toán', '2', 'Tiểu học', 120, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Vở bài tập Toán 2 - Tập 2', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Toán lớp 2 tập 2, bao gồm các nội dung đại số cơ bản.', 24.000, 'https://salt.tikicdn.com/cache/750x750/ts/product/70/7a/3a/f6b7d2198cccbfdbfe1bffde1f551f7a.jpg.webp', '2024-01-01', 'Toán', '2', 'Tiểu học', 120, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
-- ('Toán 3 - Tập 2', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Toán lớp 3 tập 2, bao gồm các nội dung đại số cơ bản.', 25.000, 'https://sytu.vn//images/bookimg/sgk-toan-3-tap-lop-2-ket-noi-tri-thuc-voi-cuoc-song-83.jpg', 'Toán','3','Tiểu học', 120, 'Nhà Xuất Bản Giáo Dục Việt Nam');
('Âm nhạc', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Âm nhạc lớp 3, bao gồm các kiến thức cơ bản về âm nhạc.', 15.000, 'https://sytu.vn//images/bookimg/sgk-am-nhac-lop-3-ket-noi-tri-thuc-voi-cuoc-song-53.jpg','2024-01-01', 'Âm nhạc','3','Tiểu học', 90, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
-- ('Tin học', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Âm nhạc lớp 3, bao gồm các kiến thức cơ bản về tin học.', 18.000, 'https://sytu.vn//images/bookimg/sgk-tin-hoc-lop-3-ket-noi-tri-thuc-voi-cuoc-song-78.jpg', 'Tin học','3','Tiểu học', 90, 'Nhà Xuất Bản Giáo Dục Việt Nam'),
('Giáo dục thể chất', 'Bộ Giáo dục và Đào tạo Việt Nam', 'Sách giáo khoa Giáo dục thể chất lớp 3, bao gồm các kiến thức cơ bản về thể chất.', 16.000, 'https://sytu.vn//images/bookimg/sgk-giao-duc-the-chat-lop-3-ket-noi-tri-thuc-voi-cuoc-song-59.jpg','2024-01-01', 'Giáo dục thể chất','3','Tiểu học', 90, 'Nhà Xuất Bản Giáo Dục Việt Nam');


INSERT INTO Carts (user_id, quantity, total_amount)
VALUES 
( 1, 2, 500000),
( 2, 1, 500000);
-- insert into Orders 
-- (user_id,recipient_name,recipient_phone,recipient_email,shipping_address,payment_method,payment_status,total_price)
-- values 
-- (1,"Khanh",0345755059,"khanh@gmail.com","Ha noi","Thanh toan khi nhan hang","Chua thanh toan",9000000),
-- (2,"Admin",0345755059,"khanh@gmail.com","Ha noi","Thanh toan khi nhan hang","Chua thanh toan",9000000);

-- insert into Order_Items
-- (order_id,book_id,quantity,price_per_item,total_price)
-- values
-- (1,1,2,1000,2000),
-- (2,2,2,1000,2000),
-- (3,3,2,1000,2000),
-- (1,4,2,1000,2000),
-- (1,5,2,1000,2000);

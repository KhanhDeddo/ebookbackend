from app import db

class User(db.Model):
    __tablename__ = 'Users'  # Đảm bảo bảng có tên đúng trong DB
    user_id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    user_name = db.Column(db.String(100), nullable=False)
    user_email = db.Column(db.String(100), nullable=False, unique=True)
    user_password = db.Column(db.String(100), nullable=False)
    user_phone = db.Column(db.String(20), nullable=False)
    user_date_of_birth = db.Column(db.String(20), nullable=False)
    user_gender = db.Column(db.String(10), nullable=False)
    user_is_admin = db.Column(db.Boolean, nullable=False)
    def to_dict(self):
        return {
            "id": self.user_id,
            "name": self.user_name,
            "email": self.user_email,
            "phone": self.user_phone,
            "date_of_birth": self.user_date_of_birth,
            "gender": self.user_gender,
            "is_admin": self.user_is_admin,
            "password": self.user_password
        }

class Book(db.Model):
    __tablename__ = 'Books'  # Đảm bảo bảng có tên đúng trong DB
    book_id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    title = db.Column(db.String(100), nullable=False)
    author = db.Column(db.String(100), nullable=False)
    description = db.Column(db.Text)
    price = db.Column(db.Numeric(10, 3), nullable=False)
    url_book = db.Column(db.String(255))  # URL của sách (nếu có)
    publication_date = db.Column(db.Date)
    category = db.Column(db.String(100), nullable=False)
    stock_quantity = db.Column(db.Integer, nullable=False, default=0)
    publisher = db.Column(db.String(100))
    created_at = db.Column(db.DateTime, default=db.func.current_timestamp())
    updated_at = db.Column(db.DateTime, default=db.func.current_timestamp(), onupdate=db.func.current_timestamp())
    def to_dict(self):
        return {
            "id": self.book_id,
            "title": self.title,
            "author": self.author,
            "description": self.description,
            "price": str(self.price),
            "url": self.url_book,
            "publication_date": self.publication_date,
            "category": self.category,
            "stock_quantity": self.stock_quantity,
            "publisher": self.publisher,
            "created_at": self.created_at,
            "updated_at": self.updated_at
        }

class Order(db.Model):
    __tablename__ = 'Orders'
    order_id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    user_id = db.Column(db.Integer, db.ForeignKey('Users.user_id'), nullable=False)  # Đảm bảo tên bảng là 'Users'
    order_date = db.Column(db.Date, nullable=False)
    status = db.Column(db.String(100), nullable=False)
    total_price = db.Column(db.Numeric(10, 2), nullable=False)
    shipping_address = db.Column(db.String(255), nullable=False)
    payment_method = db.Column(db.String(100), nullable=False)
    payment_status = db.Column(db.String(100), nullable=False)
    shipping_date = db.Column(db.Date)
    delivery_date = db.Column(db.Date)
    user = db.relationship('User', backref=db.backref('orders', lazy=True))  # Mối quan hệ giữa User và Orders

    def to_dict(self):
        return {
            "order_id": self.order_id,
            "user_id": self.user_id,
            "order_date": self.order_date,
            "status": self.status,
            "total_price": str(self.total_price),
            "shipping_address": self.shipping_address,
            "payment_method": self.payment_method,
            "payment_status": self.payment_status,
            "shipping_date": self.shipping_date,
            "delivery_date": self.delivery_date
        }

class OrderItem(db.Model):
    __tablename__ = 'Order_Items'

    order_id = db.Column(db.Integer, db.ForeignKey('Orders.order_id'), primary_key=True)  # Khóa ngoại đến Orders
    book_id = db.Column(db.Integer, db.ForeignKey('Books.book_id'), primary_key=True)    # Khóa ngoại đến Books
    quantity = db.Column(db.Integer, nullable=False)
    price_per_item = db.Column(db.Numeric(10, 2), nullable=False)
    total_price = db.Column(db.Numeric(10, 2), nullable=False)

    # Mối quan hệ với bảng Order và Book
    order = db.relationship('Order', backref=db.backref('order_items', lazy=True))
    book = db.relationship('Book', backref=db.backref('order_items', lazy=True))

    def to_dict(self):
        return {
            "order_id": self.order_id,
            "book_id": self.book_id,
            "quantity": self.quantity,
            "price_per_item": str(self.price_per_item),
            "total_price": str(self.total_price)
        }

# class CartShop(db.Model):
#     __tablename__ = 'Cart_Shop'

#     cart_id = db.Column(db.Integer, primary_key=True, autoincrement=True)  # Khóa chính tự động tăng
#     user_id = db.Column(db.Integer, db.ForeignKey('Users.user_id'), nullable=False)  # Khóa ngoại liên kết với Users
#     book_id = db.Column(db.Integer, db.ForeignKey('Books.book_id'), nullable=False)  # Khóa ngoại liên kết với Books
#     quantity = db.Column(db.Integer, nullable=False, default=1)  # Số lượng sách trong giỏ
#     added_at = db.Column(db.DateTime, default=db.func.current_timestamp())  # Thời gian thêm vào giỏ

#     # Mối quan hệ với bảng User và Book
#     user = db.relationship('User', backref=db.backref('cart_shop', lazy=True))
#     book = db.relationship('Book', backref=db.backref('cart_shop', lazy=True))

#     def to_dict(self):
#         return {
#             "cart_id": self.cart_id,
#             "user_id": self.user_id,
#             "book_id": self.book_id,
#             "quantity": self.quantity,
#             "added_at": self.added_at
#         }
class CartShop(db.Model):
    __tablename__ = 'Cart_Shop'

    user_id = db.Column(db.Integer, db.ForeignKey('Users.user_id'), primary_key=True)  # Khóa chính
    book_id = db.Column(db.Integer, db.ForeignKey('Books.book_id'), primary_key=True)  # Khóa chính
    quantity = db.Column(db.Integer, nullable=False, default=1)  # Số lượng sách trong giỏ
    added_at = db.Column(db.DateTime, default=db.func.current_timestamp())  # Thời gian thêm vào giỏ

    # Mối quan hệ với bảng User và Book
    user = db.relationship('User', backref=db.backref('cart_shop', lazy=True))
    book = db.relationship('Book', backref=db.backref('cart_shop', lazy=True))

    def to_dict(self):
        return {
            "user_id": self.user_id,
            "book_id": self.book_id,
            "quantity": self.quantity,
            "added_at": self.added_at
        }



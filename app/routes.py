from flask import Blueprint, jsonify
from app import db
from .models import Book, User, Order
api_bp = Blueprint('api', __name__)

# Route cho trang chủ
@api_bp.route('/', methods=['GET'])
def home():
    return "Welcome to the E-Book API!"

# Route để lấy danh sách sách
@api_bp.route('/books', methods=['GET'])
def get_books():
    books = Book.query.all()  # Lấy tất cả sách từ cơ sở dữ liệu
    books_list = [book.to_dict() for book in books]  # Chuyển mỗi book thành dict
    return jsonify(books_list), 200

# Route để lấy danh sách người dùng
@api_bp.route('/users', methods=['GET'])
def get_users():
    users = User.query.all()  # Lấy tất cả người dùng từ cơ sở dữ liệu
    users_list = [user.to_dict() for user in users]  # Chuyển mỗi user thành dict
    return jsonify(users_list), 200

# Route để lấy danh sách đơn hàng
@api_bp.route('/orders', methods=['GET'])
def get_orders():
    orders = Order.query.all()
    orders_list = [order.to_dict() for order in orders]
    return jsonify(orders_list),200

# Route để lấy thông tin sách theo ID
@api_bp.route('/books/<int:book_id>', methods=['GET'])
def get_book_by_id(book_id):
    """
    Lấy thông tin sách dựa vào ID từ cơ sở dữ liệu và trả về dưới dạng JSON.
    """
    book = Book.query.get(book_id)  # Tìm sách theo ID
    if not book:
        return jsonify({"error": "Book not found"}), 404  # Trả về lỗi nếu không tìm thấy sách
    return jsonify(book.to_dict()), 200  # Trả về thông tin sách dưới dạng JSON

@api_bp.route('/orders/<int:user_id>', methods=['GET'])
def get_orders_by_user_id(user_id):
    """
    Lấy thông tin sách dựa vào ID từ cơ sở dữ liệu và trả về dưới dạng JSON.
    """
    order = Order.query.get(user_id)  # Tìm sách theo ID
    if not order:
        return jsonify({"error": "Book not found"}), 404  # Trả về lỗi nếu không tìm thấy sách
    return jsonify(order.to_dict()), 200  # Trả về thông tin sách dưới dạng JSON

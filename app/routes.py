from flask import Blueprint, jsonify
from app import db
from flask import request
from .models import Book, User, Order, CartShop
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

@api_bp.route('/carts',methods=['GET'])
def get_cart_items():
    cartItems = CartShop.query.all()
    cartItems_list = [items.to_dict() for items in cartItems]
    if not cartItems:
         return jsonify({"error": "Book not found"}), 404 
    return jsonify(cartItems_list), 200

@api_bp.route('/carts/<int:user_id>', methods=['GET'])
def get_user_cart(user_id):
    cart_items = CartShop.query.filter_by(user_id=user_id).all()
    if not cart_items:
        return jsonify({"error": "No items found for this user"}), 404
    return jsonify([item.to_dict() for item in cart_items]), 200

@api_bp.route('/carts/<int:user_id>/<int:book_id>', methods=['DELETE'])
def delete_cart_item(user_id, book_id):
    cart_item = CartShop.query.filter_by(user_id=user_id, book_id=book_id).first()
    if not cart_item:
        return jsonify({"error": "Cart item not found"}), 404
    db.session.delete(cart_item)
    db.session.commit()
    return jsonify({"message": "Item deleted successfully"}), 200
@api_bp.route('/carts', methods=['POST'])
def add_or_update_cart_item():
    # Lấy dữ liệu từ request JSON
    data = request.get_json()
    user_id = data.get('user_id')
    book_id = data.get('book_id')
    quantity = data.get('quantity', 1)

    # Kiểm tra thông tin hợp lệ
    if not user_id or not book_id:
        return jsonify({"error": "Missing user_id or book_id"}), 400

    try:
        # Tìm kiếm mục giỏ hàng có sẵn
        cart_item = CartShop.query.filter_by(user_id=user_id, book_id=book_id).first()

        if cart_item:
            # Nếu mục đã tồn tại, cập nhật số lượng
            cart_item.quantity += quantity
            cart_item.added_at = db.func.current_timestamp()
            message = "Cart item updated successfully"
        else:
            # Nếu mục chưa tồn tại, thêm mục mới
            cart_item = CartShop(user_id=user_id, book_id=book_id, quantity=quantity)
            db.session.add(cart_item)
            message = "Cart item added successfully"

        # Lưu thay đổi vào database
        db.session.commit()
        return jsonify({"message": message, "cart_item": cart_item.to_dict()}), 201
    except Exception as e:
        db.session.rollback()
        return jsonify({"error": str(e)}), 500

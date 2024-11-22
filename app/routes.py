# Tập tin định nghĩa các API endpoint
from flask import Blueprint, jsonify
from app import db
from .models import Book

api_bp = Blueprint('api', __name__)

# Route cho trang chủ
@api_bp.route('/', methods=['GET'])
def home():
    return "Welcome to the E-Book API!"


@api_bp.route('/books', methods=['GET'])
def get_books():
    """
    Lấy tất cả các cuốn sách từ cơ sở dữ liệu và trả về dưới dạng JSON.
    """
    books = Book.query.all()  # Lấy tất cả sách từ cơ sở dữ liệu
    books_list = [book.to_dict() for book in books]  # Chuyển mỗi book thành dict
    return jsonify(books_list), 200

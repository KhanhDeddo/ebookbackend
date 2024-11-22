from . import db

class Book(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(100), nullable=False)
    price = db.Column(db.Integer, nullable=False)

    def to_dict(self):
        return {
            "id": self.id,
            "title": self.title,
            "price": self.price
        }
# from app import db

# class Book(db.Model):
#     __tablename__ = 'book'

#     book_id = db.Column(db.Integer, primary_key=True)
#     title = db.Column(db.String(200), nullable=False)
#     price = db.Column(db.Integer, nullable=False)

#     def __init__(self, title, price):
#         self.title = title
#         self.price = price

#     def to_dict(self):
#         # Chuyển đối tượng thành dictionary để trả về dạng JSON
#         return {
#             'book_id': self.book_id,
#             'title': self.title,
#             'price': self.price
#         }
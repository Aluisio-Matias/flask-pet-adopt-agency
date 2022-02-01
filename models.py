from email.policy import default
from flask_sqlalchemy import SQLAlchemy

DEFAULT_IMAGE = "https://mylostpetalert.com/wp-content/themes/mlpa-child/images/nophoto.gif"

db = SQLAlchemy()

class Pet(db.Model):
    '''Pet class model for pet adoption agency'''

    __tablename__ = "pets"

    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.Text, nullable=False)
    species = db.Column(db.Text, nullable=False)
    photo_url = db.Column(db.Text)
    age = db.Column(db.Text)
    notes = db.Column(db.Text)
    available = db.Column(db.Boolean, nullable=False, default=True)

    def image_url(self):
        '''Return an image for pet'''
        return self.photo_url or DEFAULT_IMAGE

    
def connect_db(app):
    '''Connect this database to provided Flask app'''
    db.app = app
    db.init_app(app)

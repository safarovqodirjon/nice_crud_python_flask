from flask import Flask, render_template, request, redirect, url_for, flash
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.secret_key = "Secret Key"

# SqlAlchemy Database Configuration With Mysql
# SqlAlchemy Database Configuration With Mysql
app.config['SQLALCHEMY_DATABASE_URI'] = "mysql://root:@localhost:3306/crud"
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)


class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100))
    email = db.Column(db.String(100))
    address = db.Column(db.String(100))

    def __init__(self, name, email, address):
        self.name = name
        self.email = email
        self.address = address


@app.route("/")
def index():
    # return "Hello from Flask"
    all_data = User.query.all()

    return render_template("index.html", employees = all_data)




@app.route("/insert", methods=['POST'])
def insert():
    if request.method == 'POST':
        name = request.form['name']
        email = request.form['email']
        address = request.form['address']

        my_data = User(name, email, address)
        db.session.add(my_data)
        db.session.commit()
        flash("User added successfully")

        return redirect(url_for("index"))


@app.route('/update', methods=['GET', 'POST'])
def update():
    if request.method == 'POST':
        my_data = User.query.get(request.form.get('id'))

        my_data.name = request.form['name']
        my_data.email = request.form['email']
        my_data.address = request.form['address']

        db.session.commit()
        flash("Employee Updated Successfully")

        return redirect(url_for('index'))


@app.route('/delete/<id>/', methods=['GET', 'POST'])
def delete(id):
    my_data = User.query.get(id)
    db.session.delete(my_data)
    db.session.commit()
    flash("Employee Deleted Successfully")

    return redirect(url_for('index'))

if __name__ == "__main__":
    app.run(host="localhost", port=3355, debug=True)

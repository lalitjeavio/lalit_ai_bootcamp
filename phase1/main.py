from dotenv import dotenv_values

from flask import Flask, request
# from flask_restx import Api, Resource, fields

app = Flask(__name__)
app.config['RESTX_VALIDATE'] = True
# api = Api(app)

if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)

# test_hello.py

import unittest
from hello import app

def test_hello():
    response = app.test_client().get('/')

    assert response.status_code == 200
    assert response.data == 'Hello World!'

if __name__ == '__main__':
    unittest.main()

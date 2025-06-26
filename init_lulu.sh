#!/bin/bash

echo "🧠 Initializing LuLu AI setup on this MacBook..."

# Create folder
mkdir -p ~/LuLu
cd ~/LuLu || exit

# Create minimal virtualenv
python3 -m venv venv
source venv/bin/activate

# Create a sample Flask backend
mkdir backend
cat <<EOF > backend/app.py
from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return "LuLu-Sentinel Online. Originator Confirmed."

if __name__ == "__main__":
    app.run(port=8123)
EOF

# Create requirements file
echo "flask" > requirements.txt

# Install dependencies
pip install -r requirements.txt

# Done
echo "✅ LuLu AI installed and ready. Run it with: python backend/app.py"

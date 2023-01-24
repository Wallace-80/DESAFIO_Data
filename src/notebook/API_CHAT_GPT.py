import os
import openai
import json
from flask import Flask, request
openai.api_key = "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"

app = Flask(__name__)

@app.route("https://chat.openai.com/chat", methods=["GET"])
def chat():
    # Recibir pregunta del usuario
    question = request.json["question"]

    
    response = openai.Completion.create(
        engine="text-davinci-002",
        prompt=(f"{question}\n"),
        max_tokens=2048
    )

    
    return json.dumps(response)

if __name__ == '__main__':
    app.run(debug=True)
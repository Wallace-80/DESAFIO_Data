from flask import Flask
from flask import request
import jsonify 
import json
import requests

app = Flask(__name__)

# Define la ruta para el endpoint
@app.route('/chatbot', methods=['POST'])
def chatbot():
    # Recoge la pregunta en formato JSON de la solicitud
    question = request.json['question']
    
    # Construye la solicitud a la API de ChatGPT
    url = 'https://api.openai.com/v1/engines/davinci-codex/completions'
    headers = {'Content-Type': 'application/json',
               'Authorization': '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'}
    data = {'prompt': question, 'max_tokens': 100}
    data_json = json.dumps(data)
    
    # Envía la solicitud y recoge la respuesta
    response = requests.post(url, headers=headers, data=data_json)
    answer = response.json()['choices'][0]['text']
    
    # Devuelve la respuesta en formato JSON
    return jsonify({'answer': answer})

if __name__ == '__main__':
    app.run()






from flask import Flask, render_template, request, jsonify

app = Flask(__name__)

# In-memory storage for demo
tasks = []

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/api/tasks', methods=['GET'])
def get_tasks():
    return jsonify(tasks)

@app.route('/api/tasks', methods=['POST'])
def add_task():
    data = request.json
    task = {
        'id': len(tasks) + 1,
        'text': data.get('text', ''),
        'completed': False
    }
    tasks.append(task)
    return jsonify(task), 201

@app.route('/api/tasks/<int:task_id>', methods=['DELETE'])
def delete_task(task_id):
    global tasks
    tasks = [t for t in tasks if t['id'] != task_id]
    return '', 204

if __name__ == '__main__':
    app.run(debug=True, port=5000)

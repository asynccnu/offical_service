from flask import Flask , request, send_file

app = Flask(__name__)

@app.route("/")
def index():
    platform = request.user_agent.platform
    if platform in ["android", "iphone", "ipad"]:
        return send_file('offical_site/mobile-index.html')
    else:
        return send_file('offical_site/index.html')

if __name__ == '__main__':
    app.run()

import flask
from scrape import scrape
from flask import jsonify

app = flask.Flask(__name__)
app.config['DEBUG'] = True


@app.route('/', methods=['GET'])
def home():
    result = []
    url = {'3060': 'https://www.bestbuy.ca/en-ca/product/nvidia-geforce-rtx-3060-ti-8gb-gddr6-video-card/15166285', '3070': 'https://www.bestbuy.ca/en-ca/product/nvidia-geforce-rtx-3070-8gb-gddr6-video-card-only-at-best-buy/15078017'}
    cards = ['3060', '3070']
    for card in cards:
        item = {}
        status = scrape(url[card])
        item['Item'] = 'GTX' + card
        item['Store'] = 'Bestbuy'
        item['Status'] = status
        result.append(item)
    return jsonify(result)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
import flask
from scrape import scrape
from flask import jsonify

app = flask.Flask(__name__)
app.config['DEBUG'] = True


@app.route('/', methods=['GET'])
def home():
    result = []
    url = {'1060': 'https://www.bestbuy.ca/en-ca/product/nvidia-geforce-rtx-3060-ti-8gb-gddr6-video-card/15166285', '1070': 'https://www.bestbuy.ca/en-ca/product/nvidia-geforce-rtx-3070-8gb-gddr6-video-card-only-at-best-buy/15078017'}
    cards = ['1060', '1070']
    for card in cards:
        item = {}
        status = scrape(url[card])
        item['Item'] = 'GTX' + card
        item['Store'] = 'Bestbuy'
        item['Status'] = status
        result.append(item)
    return jsonify(result)

app.run()
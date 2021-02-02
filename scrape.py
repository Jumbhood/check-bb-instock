from bs4 import BeautifulSoup
import requests
from fake_useragent import UserAgent
import subprocess

def scrape(url):
    ua = UserAgent()
    headers = {'User-Agent': ua.random}
    r = requests.get(url, headers=headers)
    html_doc = r.text
    soup = BeautifulSoup(html_doc,'lxml')
    item = soup.find('span', class_='availabilityMessage_ig-s5')
    return item.text

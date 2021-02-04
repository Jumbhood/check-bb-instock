import requests

request = requests.get('http://192.168.3.25:80').json()
path_3060 = './3060'
path_3070 = './3070'
for item in request:
    if item['Item'] == 'GTX3060':
        myfile = open(path_3060, 'w')
        myfile.write(item['Status'])
        myfile.close()
    if item['Item'] == 'GTX3070':
        myfile = open(path_3070, 'w')
        myfile.write(item['Status'])
        myfile.close()
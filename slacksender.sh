#!/bin/bash
while true; do
	stock3060=$(cat 3060)
	stock3070=$(cat 3070)
	slack_message_ep = ""
	if [ "${stock3060}" != "Coming soon" ]; then
		curl -X POST -H 'Content-type: application/json' \
		--data '{
			"text":"Hey <!everyone>! GTX3060 is: `'"$stock3060"'` :alert:<https://www.bestbuy.ca/en-ca/product/nvidia-geforce-rtx-3060-ti-8gb-gddr6-video-card/15166285|*Purchase Link*>:alert:"
		}' \
		${slack_message_ep}
	fi
	if [ "${stock3070}" != "Coming soon" ]; then
		curl -X POST -H 'Content-type: application/json' \
		--data '{
		"text":"Hey <!everyone>! GTX3070 is: `'"$stock3070"'` :alert:<https://www.bestbuy.ca/en-ca/product/nvidia-geforce-rtx-3070-8gb-gddr6-video-card-only-at-best-buy/15078017|*Purchase Link*>:alert:"
		}' \
	    ${slack_message_ep}
	fi
	sleep 10
done

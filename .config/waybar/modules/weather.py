#!/usr/bin/env python

from lxml import html
import requests

resp = requests.get("https://darksky.net/forecast/45.5813,-122.6343/us12/en")
tree = html.fromstring(resp.content)

summary = tree.cssselect("span.summary.swap")

print(summary[0].text_content())

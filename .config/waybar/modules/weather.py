#!/usr/bin/env python

from lxml import html
import requests
import json

lat = "45.58"
lng = "-122.63"

resp = requests.get("https://darksky.net/forecast/{},{}/us12/en".format(lat, lng))
tree = html.fromstring(resp.content)

summary = tree.cssselect("span.summary.swap")
high = tree.cssselect("a[data-day=\"0\"] span.maxTemp")
low = tree.cssselect("a[data-day=\"1\"] span.minTemp")

# resp = requests.get("http://www.airnowapi.org/aq/observation/zipCode/current/?format=application/json&API_KEY=B76E0432-60B4-4AF5-ACC4-BAC0C1CD7A03&zipCode=97211")
# quality = json.loads(resp.content)

print(
        summary[0].text_content(),
        " ",
        "↑" + high[0].text_content(),
        "↓" + low[0].text_content())

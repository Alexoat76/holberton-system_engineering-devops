#!/usr/bin/python3
# File: 0-subs.py
# Author: Alex Orland Arévalo Tribaldos
# email: <3915@holbertonschool.com>

"""
Query Reddit API for number of subscribers for a given subreddit
NOTE: Get user agent:
            https://stackoverflow.com/questions/10606133/ -->
            sending-user-agent-using-requests-library-in-python
"""
import requests


def number_of_subscribers(subreddit):
    """
    Return number of subscribers for a given subreddit
    return 0 if invalid subreddit given
    """
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {
        "User-Agent": "linux:0x16.api.advanced:v1.0.0 (by /u/Alexoat76)"
    }
    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code == 404:
        return 0
    results = response.json().get("data")
    return results.get("subscribers")

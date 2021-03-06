#!/usr/bin/python3
# File: 2-recurse.py
# Author: Alex Orland Arévalo Tribaldos
# email: <3915@holbertonschool.com>

"""
Query Reddit API recursively for all hot articles of a given subreddit
NOTE: Get user agent:
            https://stackoverflow.com/questions/10606133/ -->
            sending-user-agent-using-requests-library-in-python
"""
import requests


def recurse(subreddit, hot_list=[], after="", count=0):
    """
    Return all hot articles for a given subreddit
    Return None if invalid subreddit given
    """
    url = "https://www.reddit.com/r/{}/hot/.json".format(subreddit)
    headers = {
        "User-Agent": "linux:0x16.api.advanced:v1.0.0 (by /u/Alexoat76)"
    }
    params = {
        "after": after,
        "count": count,
        "limit": 100
    }
    response = requests.get(url, headers=headers, params=params,
                            allow_redirects=False)
    if response.status_code == 404:
        return None

    results = response.json().get("data")
    after = results.get("after")
    count += results.get("dist")
    for c in results.get("children"):
        hot_list.append(c.get("data").get("title"))

    if after is not None:
        return recurse(subreddit, hot_list, after, count)
    return hot_list

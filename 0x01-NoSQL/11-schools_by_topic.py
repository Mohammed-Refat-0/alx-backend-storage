#!/usr/bin/env python3
'''schools_by_topic module.
'''

from pymongo.collection import Collection


def schools_by_topic(mongo_collection: Collection, topic: str) -> list:
    ''' returns the list of school having a specific topic
    '''
    return list(mongo_collection.find({"topics": topic}))

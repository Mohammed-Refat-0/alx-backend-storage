#!/usr/bin/env python3
'''insert_school mosule
'''


def insert_school(mongo_collection, **kwargs):
    '''inserts a new document in a collection based on kwargs'''
    id = mongo_collection.insert_one(kwargs)
    return id.inserted_id

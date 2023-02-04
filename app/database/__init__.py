import sqlite3
from flask import g #g is the global context object imported from flask. It enables access to information from other routes or modules.


DATABASE_URL = "main.db" #defines database url. This will connect to a sqlite db we create later.


def get_db(): ##This function corrects some issues with the db such as multithreading etc.
    db = getattr(g, "_database", None)#if flask g has _database, connect. If already connected, return. So as to not have multiple connections to the same db.
    if not db:
        db = g._database = sqlite3.connect(DATABASE_URL)
    return db
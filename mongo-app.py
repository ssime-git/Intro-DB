from pymongo import MongoClient

# Connect to MongoDB
client = MongoClient('mongodb://admin:password@localhost:27017/')
db = client['sampledb']
collection = db['samplecollection']

# Insert sample data
sample_data = [
    {"name": "John", "age": 25},
    {"name": "Jane", "age": 30},
    {"name": "Bob", "age": 35}
]
result = collection.insert_many(sample_data)
print("Sample data inserted successfully")

# Query the collection
documents = collection.find({})
print("Documents in the collection:")
for document in documents:
    print(document)

client.close()
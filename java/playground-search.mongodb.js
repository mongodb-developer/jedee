// Select the database to use.
use('library');

db.getCollection('books').aggregate([
    {$search: {
        index: "default",
        text: {
            query: "Charity",
            path: ["title"]
        }
    }
    }
]);

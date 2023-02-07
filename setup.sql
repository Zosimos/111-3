-- Create task table

CREATE TABLE task (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    summary VARCHAR(128),
    description TEXT,
    IS_ACTIVE boolean default 1
);

-- Dummy data

INSERT INTO task (
    summary,
    description
) VALUES (
    "Wash the car",
    "Take the car to the car wash or DIY"
);

INSERT INTO task (
    summary,
    description
)  VALUES (
    "Make or buy dinner",
    "Prepare a meal for the family or order pizza"
);
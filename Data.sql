-- Example of using the procedures

-- Insert a new plant
EXEC InsertPlant 'Rose', 'Rosa damascena', 15.99, 1;
EXEC InsertPlant 'Sunflower', 'Helianthus annuus', 10.99, 1;
EXEC InsertPlant 'Tomato', 'Solanum lycopersicum', 13.99, 1;
EXEC InsertPlant 'Orchid', 'Orchidaceae', 15.99, 1;
EXEC InsertPlant 'Maple Tree', 'Acer saccharum', 15.99, 1;
EXEC InsertPlant 'Bamboo', 'Bambusa vulgaris', 15.99, 1;

-- Retrieve all plants
EXEC GetPlants;

-- Retrieve a plant by ID
DECLARE @PlantID INT = 6;
EXEC GetPlantByID @PlantID;


-- Retrieve all plants after the update
EXEC GetPlants;


-- Update a plant
EXEC UpdatePlant @PlantID, 'Lily', 'Lilium', 12.50, 1;


-- Retrieve all plants
EXEC GetPlants;


-- Delete a plant
-- EXEC DeletePlant @PlantID;
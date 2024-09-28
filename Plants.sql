DROP TABLE Plants;
DROP PROCEDURE IF EXISTS [InsertPlant];
DROP PROCEDURE IF EXISTS [GetPlants];
DROP PROCEDURE IF EXISTS [GetPlantByID];
DROP PROCEDURE IF EXISTS [UpdatePlant];
DROP PROCEDURE IF EXISTS [DeletePlant];

CREATE TABLE Plants (
    PlantID INT PRIMARY KEY IDENTITY(1,1),
    PlantName NVARCHAR(100) NOT NULL,
    Species NVARCHAR(100),
    Price DECIMAL(10, 2),
    InStock INT
);

-- CRUD

GO
-- Create procedure for inserting a new plant
CREATE PROCEDURE InsertPlant
    @PlantName NVARCHAR(100),
    @Species NVARCHAR(100),
    @Price DECIMAL(10, 2),
    @InStock INT
AS
BEGIN
    INSERT INTO Plants (PlantName, Species, Price, InStock)
    VALUES (@PlantName, @Species, @Price, @InStock);
END;

GO
-- Create procedure for retrieving all plants
CREATE PROCEDURE GetPlants
AS
BEGIN
    SELECT PlantID, PlantName, Species, Price, InStock
    FROM Plants;
END;

GO
-- Create procedure for retrieving a specific plant by ID
CREATE PROCEDURE GetPlantByID
    @PlantID INT
AS
BEGIN
    SELECT PlantID, PlantName, Species, Price, InStock
    FROM Plants
    WHERE PlantID = @PlantID;
END;

GO
-- Create procedure for updating a plant
CREATE PROCEDURE UpdatePlant
    @PlantID INT,
    @PlantName NVARCHAR(100),
    @Species NVARCHAR(100),
    @Price DECIMAL(10, 2),
    @InStock INT
AS
BEGIN
    UPDATE Plants
    SET PlantName = @PlantName,
        Species = @Species,
        Price = @Price,
        InStock = @InStock
    WHERE PlantID = @PlantID;
END;

GO

-- Create procedure for deleting a plant
CREATE PROCEDURE DeletePlant
    @PlantID INT
AS
BEGIN
    DELETE FROM Plants
    WHERE PlantID = @PlantID;
END;

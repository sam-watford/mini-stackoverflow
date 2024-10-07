#!/bin/sh

# Run Prisma migration
echo "Running Prisma migration..."
docker exec -it stackoverfaux-backend-1 npx prisma migrate dev --name init

# Run seed script
echo "Running seed script..."
docker exec -it stackoverfaux-backend-1 npm run seed

echo "Setup complete!"
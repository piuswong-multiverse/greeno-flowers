# base image
FROM node:18

# source files (outside image, inside image)
COPY . /app

# working directory inside image
WORKDIR /app

# how to set up; runs during image build
RUN npm install

# expose port; should match with project
EXPOSE 3000

# starting command after image is build
CMD ["npm", "start"]
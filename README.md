[![wakatime](https://wakatime.com/badge/user/7992ed07-43da-4cbe-a745-5dc9416335df/project/018d06cc-0a5d-4b1d-88e4-9401d5e5f7c0.svg)](https://wakatime.com/badge/user/7992ed07-43da-4cbe-a745-5dc9416335df/project/018d06cc-0a5d-4b1d-88e4-9401d5e5f7c0)

# My Harmony
Discover a selection of my favorite Gospel artists in Kenya whose performances and heartfelt solo expressions span various styles that enrich your soul.

## Installation Steps
The project uses [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/) for easy setup.

### How to run the app
#### Prerequisites

Make sure you have the following installed on your machine:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)
  
#### 1. Clone the repository
```bash
git clone https://github.com/Njoguu/my-harmony.git
```

#### 2. cd into the project root folder
```bash
cd my-harmony
```

#### 3. Build and Run the project 
```bash
docker compose up --build -d
```

![docker-build](https://github.com/Njoguu/my-harmony/assets/60213982/80683d4d-65df-4478-ad30-a79e745965de)

![finish-build](https://github.com/Njoguu/my-harmony/assets/60213982/7d448ce8-9de3-452b-b0c8-112fdf5c5bea)

#### 4. Login to PHPMYADMIN
After the build is completed and all services are up and running, navigate to your local [PHPMYADMIN](http://localhost:8082/) and  login with these default credentials.

```text
username: root
password: shroot
```

![login-phpmyadmin](https://github.com/Njoguu/my-harmony/assets/60213982/8a5cda9a-0d01-4771-876c-0046cd865e1c)

#### 5. Import sample data
For the app to run correctly in local development, you need to import sample data to the database to view its complete functionality.
To do this, follow these steps:

1. When logged in, click on the `Import` tab at the top of the page.

![import-1](https://github.com/Njoguu/my-harmony/assets/60213982/6cb63e14-00f8-40e2-8681-d70043c17331)

2. Click on `Choose File`.

![import-2](https://github.com/Njoguu/my-harmony/assets/60213982/400a7dd2-15f1-41dc-9b94-28ffde3ce934)

3. Select the file named `my_harmony.sql` from the `data_dump` folder.


4. After selecting the file, scroll down then click on `Import`.

![import-4](https://github.com/Njoguu/my-harmony/assets/60213982/4a4db5b0-59fe-42a7-9a8c-e47953f000aa)

5. After successful import, you will be able to view the sample database, tables and data on the far left.


#### 6. Run the app
After successful import, open a new tab and navigate to [index](http://localhost:8081/) where you will be able to view and interact with the app.

















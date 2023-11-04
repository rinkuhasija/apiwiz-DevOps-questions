1. Linux:

    1. Provide steps to create a directory inside a directory where the parent directory does not exist.
    -> mkdir -p my_parent_directory/my_directory

    2. How to install a package on a Linux server when there is no internet connection?
    -> 

    3. How to access specific folders of Server A from Server B and Server C?
    -> 

    4. How to check all the running processes from a server?
    -> ps  |||  ps aux   |||  htop (dynamic interactive mode all processes)  ||| top (dynamic, realtime)

    5. Provide the command to delete all the files older than X days inside a specific directory.
    ->  
        ```console
        find /myfolder -type f -mtime +X -exec rm {} \;
        
        ```


### -----------

2. Docker:

    1. ## What is docker and why do we need it?

    -> Docker is a platform and tool designed to help developers and system administrators build, package, and distribute applications as containers. Containers are lightweight, standalone, and executable packages that include everything needed to run a piece of software, including the code, runtime, libraries, and system tools.  which offers several benefits: 

        1. Portability
        2. Isolation
        3. Efficiency
        4. Scalability
        5. Consistency
        6. VC
        7. DevOps and Continuous Integration/Continuous Deployment (CI/CD)
        8. Microservices Architecture
        9. Simplified Development Environment Setup


	2. ## Write a docker file for a sample Java/python application.

    ->  

        # Use an official Python runtime as a parent image
        FROM python:3.8-slim

        # Set the working directory inside the container
        WORKDIR /app

        # Copy the current directory contents into the container at /app
        COPY . /app

        # Install any needed packages specified in requirements.txt
        COPY requirements.txt requirements.txt
        RUN pip install --no-cache-dir -r requirements.txt

        # Make port 80 available to the world outside this container
        EXPOSE 80

        # Define environment variable
        ENV NAME World

        # Run app.py when the container launches
        CMD ["python", "app.py"]

	3. ## What is the docker lifecycle?
    ->      

            The Docker container lifecycle consists of several key stages or states that a Docker container goes through during its lifetime. Understanding these stages is essential for managing and working with Docker containers effectively. Here are the main stages in the Docker container lifecycle:

            Image: The initial stage of a Docker container's lifecycle starts with creating a Docker image. An image is a snapshot of a file system that includes the application code, dependencies, libraries, and configuration needed to run the application. Images are typically defined by a Dockerfile and can be built and stored in a registry.

            Run: At the "run" stage, you create a container from a Docker image. Running a container means creating an instance of the image, and this instance is a separate and isolated environment. When you run a container, you can specify various options and settings, such as environment variables, port mappings, and volume mounts.

            Start: After a container is created, it can be started using the docker start command. Starting a container initiates the execution of the application or process within the container.

            Exec: You can execute commands inside a running container using the docker exec command. This allows you to interact with a container's environment, run additional processes, and troubleshoot issues.

            Pause and Unpause: Docker allows you to pause and unpause containers using the docker pause and docker unpause commands. Pausing a container temporarily stops its processes, and unpausing resumes them.

            Stop: Stopping a container means terminating its processes gracefully. You can use the docker stop command to stop a running container. Stopping a container allows it to save its state, which can be useful for data preservation or for capturing logs.

            Kill: If a container does not respond to a stop request, you can forcefully terminate it using the docker kill command. This action does not allow the container to save its state and is equivalent to killing a process.

            Restart: You can restart a container that has been previously stopped or paused using the docker restart command. Restarting a container preserves its configuration and any changes made to its filesystem.

            Remove: Containers are not meant to be permanent, and you can remove them using the docker rm command. Removing a container deletes its instance, but it does not remove the underlying image. If you want to remove both the container and its associated image, you can use the docker rmi command.

            Registry and Push/Pull: Docker images can be pushed to and pulled from Docker image registries like Docker Hub. This is essential for sharing and distributing images across different systems or environments.

            The Docker container lifecycle allows you to create, manage, and interact with containers efficiently. Containers are typically designed to be ephemeral, with their state often preserved in external volumes or data sources, making them easy to recreate and scale as needed. Understanding these lifecycle stages is crucial for effectively working with Docker containers and orchestrating them in production environments.



	4. ## What is the difference between an image and a container?
    ->      
            In the context of Docker and containerization, there are two fundamental concepts: images and containers. They serve distinct purposes and have key differences:

            Docker Image:

            An image is a read-only, standalone package that contains an application's code, runtime, libraries, and system tools required to run the application.
            It serves as a blueprint for creating containers. Think of an image as a snapshot or template of a file system.
            Images are created from a Dockerfile, which specifies the instructions for building the image. Docker images are often versioned.
            Images are typically stored in a registry, like Docker Hub, and can be pulled (downloaded) to a local machine or a Docker host.
            Images are immutable, meaning they cannot be modified. If changes are required, a new image version must be built.
            Multiple containers can be created from the same image, each running in isolation.
            Docker Container:

            A container is a runnable instance of a Docker image. It is a lightweight, isolated environment that contains the image's code and runtime.
            Containers can be started, stopped, paused, and terminated. They encapsulate a specific process or set of processes.
            Containers are transient and disposable. When a container is stopped or removed, any changes made within it are lost unless data is persisted using volumes.
            Containers are an executable form of an image, with their own file system that can be layered on top of the image. Any changes made while the container is running are stored in this container layer.
            Containers can communicate with each other and the outside world via networks and ports.
            Containers are designed to be scalable and are suitable for microservices architectures.
            In summary, images serve as templates for containers. Images are static and used for packaging applications and their dependencies, while containers are dynamic and run instances of these images. Containers are where the application's processes are executed and where any runtime changes are isolated. This separation of concerns is a core principle of containerization, allowing for easy deployment and scalability while ensuring consistency and isolation.



	5. ## How to check docker container logs? Provide the command for the same
    ->  
            
            docker logs --tail 50 CONTAINER_NAME_OR_ID
            docker logs -f CONTAINER_NAME_OR_ID







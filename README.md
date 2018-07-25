# Overview
Most projects in this repo are tech interviews I had over the years. The time frame was usually 8 - 10 hours.

I put all the projects in one docker container so they could run the same in any environments. 

To run the code, please do the following:
1. Install Docker
2. Setup the code repository locally:
```
$ git clone https://github.com/YiouZuo/Portfolio.git
```
3. Build the base containers for development:

```
$ make container
```
4. Use Jupyter to checkout my notebooks.
```
$ make jupyter

```
The terminal output from this command will include a URL for your local jupyter server. You can copy and paste the URL to a browser and start to work on it.

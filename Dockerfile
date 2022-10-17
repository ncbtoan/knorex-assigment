FROM python:3.7.3-stretch

## Step 1:
# Create a working directory

WORKDIR /tmp/knorex

## Step 2:
# Copy source code to working directory
COPY ./required_package/ /tmp/knorex/
## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN python3 -m pip install --user virtualenv && \
    python3 -m virtualenv --python=/usr/local/bin/python3 .devops && \
    . .devops/bin/activate && \
    make install

## Step 4:
# Expose port 80
EXPOSE 80/tcp
## Step 5:
# Run app.py at container launch
CMD . .devops/bin/activate && \
    python3 app.py

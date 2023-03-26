FROM smartcontract/chainlink:1.12.0

# Create the chainlink node root path
USER root
RUN mkdir /chainlink

# Arg for api user email
ENV API_USER_EMAIL=$API_USER_EMAIL

# Arg for api user password(16-50 characters, miniumun 3 CAPS letters)
ENV API_USER_PASSWORD=$API_USER_PASSWORD

# Arg for node wallet password, (16-50 characters, miniumun 3 CAPS letters)
ENV WALLET_PASSWORD=$WALLET_PASSWORD

# Create chainlink node required values to initialize with
RUN echo $API_USER_EMAIL > /chainlink/.api
RUN echo $API_USER_PASSWORD >> /chainlink/.api
RUN echo $WALLET_PASSWORD > /chainlink/.password
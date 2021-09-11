FROM mcr.microsoft.com/dotnet/runtime:3.1-alpine
RUN apk upgrade ; mkdir /f8lure
WORKDIR /f8lure
RUN wget https://f8lure.mouselike.org/examples/reversef8lure-v20210724-2255.zip -O rping.zip ; unzip rping.zip ; rm -f rping.zip
WORKDIR /f8lure/reversef8lure
ENTRYPOINT dotnet reversef8lure.dll $TID
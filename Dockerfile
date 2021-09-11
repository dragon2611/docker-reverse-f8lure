FROM mcr.microsoft.com/dotnet/runtime:3.1-alpine
RUN apk upgrade ; mkdir /f8lure
WORKDIR /f8lure
RUN wget https://f8lure.mouselike.org/examples/reversef8lure-v20210724-2255.zip -O rping.zip ; unzip rping.zip ; rm -f rping.zip
WORKDIR /f8lure/reversef8lure
RUN chmod +x reversef8lure
#ENTRYPOINT tail -f /dev/null
ENTRYPOINT dotnet reversef8lure.dll $TID
FROM amazoncorretto:17-alpine
ENV VERSION 5.8
RUN wget https://languagetool.org/download/LanguageTool-$VERSION.zip && unzip LanguageTool-$VERSION.zip && rm LanguageTool-$VERSION.zip
RUN mkdir ngrams && cd ngrams && wget -O - https://languagetool.org/download/ngram-data/ngrams-en-20150817.zip | jar -x
WORKDIR /LanguageTool-$VERSION/
COPY languagetool.sh /
CMD ["/languagetool.sh"]
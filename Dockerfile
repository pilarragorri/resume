FROM ruby:2.7

WORKDIR /home/app

COPY Gemfile* ./
COPY startup.sh ./

RUN bundle install

COPY . .
RUN chmod +x ./startup.sh
CMD ["sh" , "./startup.sh"]
#CMD [ "bundle", "exec", "jekyll", "serve", " --host 0.0.0.0" , "--verbose" ]
EXPOSE 4000






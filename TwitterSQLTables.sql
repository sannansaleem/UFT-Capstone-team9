CREATE TABLE "Twitter_News_News_tweets" (
    "ids" varchar   NOT NULL,
    "content" varchar   NOT NULL,
    "date" date   NOT NULL,
    "hashtags" varchar   NOT NULL,
    "likeCount" int   NOT NULL,
    "quoteCount" int   NOT NULL,
    "replyCount" int   NOT NULL,
    "retweetedTweet" varchar   NOT NULL,
    "sourceLabel" varchar   NOT NULL,
    "username" varchar   NOT NULL,
    "country" varchar   NOT NULL,
    "country_cd" varchar   NOT NULL,
    "quoted_content" varchar   NOT NULL,
    CONSTRAINT "pk_Twitter_News_News_tweets" PRIMARY KEY (
        "ids"
     )
);

CREATE TABLE "Twitter_News_news_tweeters" (
    "created" varchar   NOT NULL,
    "description" varchar   NOT NULL,
    "favouritesCount" int   NOT NULL,
    "followersCount" int   NOT NULL,
    "friendsCount" int   NOT NULL,
    "location" varchar   NOT NULL,
    "mediaCount" int   NOT NULL,
    "username" varchar   NOT NULL,
    "verified" varchar  NOT NULL,
    CONSTRAINT "pk_Twitter_News_news_tweeters" PRIMARY KEY (
        "username"
     )
);

CREATE TABLE "ticker_data" (
    "ticker" varchar   NOT NULL,
    "sentimentScore" int   NOT NULL,
    "positiveSentimentPercent" float   NOT NULL,
    "neutralSentimentPercent" float   NOT NULL,
    "negativeSentimentPercent" float   NOT NULL,
    CONSTRAINT "pk_ticker_data" PRIMARY KEY (
        "ticker"
     )
);

ALTER TABLE "Twitter_News_News_tweets" ADD CONSTRAINT "fk_Twitter_News_News_tweets_username" FOREIGN KEY("username")
REFERENCES "Twitter_News_news_tweeters" ("username");


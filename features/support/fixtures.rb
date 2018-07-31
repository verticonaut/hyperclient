require 'json'

module Spinach
  module Fixtures
    def root_response
      '{
          "_links": {
              "self": { "href": "/" },
              "posts": { "href": "/posts" },
              "search": { "href": "/search{?q}", "templated": true },
              "tagged": { "href": "/search{?tags*}", "templated": true },
              "api:authors": { "href": "/authors" },
              "next": { "href": "/page2" }
          }
      }'
    end

    def posts_response
      '{
          "data": [
            {
              "title": "My first blog post",
              "body":  "Lorem ipsum dolor sit amet",
              "authors": [
                {
                  "name": "Author1",
                  "_links": {
                    "self": { "href": "/authors/1" }
                  },
                }
              ],
              "_links": {
                "self": { "href": "/posts/1" },
                "authors": { "href": "/posts/1/authors" },
              }
            },
            {
              "title": "My second blog post",
              "body":  "Lorem ipsum dolor sit amet",
              "authors": [
                {
                  "name": "Author1",
                  "_links": {
                    "self": { "href": "/authors/1" }
                  },
                },
                {
                  "name": "Author2",
                  "_links": {
                    "self": { "href": "/authors/2" }
                  },
                }
              ],
              "_links": {
                "self": { "href": "/posts/2" }
                "authors": { "href": "/posts/2/authors" }
              }
            }
          ],
          "_links": {
            "self": { "href": "/posts" },
            "last_post": {"href": "/posts/1"}
          },
          "_meta": {
            "type": post,
            "total_posts": "2",
            "editablility": {
              "title": false,
              "body":  true
            }
          }
      }'
    end

    def post_response
      '{
          "data": {
            "title": "My second blog post",
            "body":  "Lorem ipsum dolor sit amet",
            "authors": [
              {
                "name": "Author1",
                "_links": {
                  "self": { "href": "/authors/1" }
                },
              },
              {
                "name": "Author2",
                "_links": {
                  "self": { "href": "/authors/2" }
                },
              }
            ]
          },
          "_links": {
            "self": { "href": "/posts/1" }
            "authors": { "href": "/posts/1/authors" }
          }
      }'
    end

    def page2_response
      '{
          "_links": {
              "self": { "href": "/page2" },
              "posts": { "href": "/posts_of_page2" },
              "next": { "href": "/page3" }
          }
      }'
    end

    def page3_response
      '{
          "_links": {
              "self": { "href": "/page3" },
              "posts": { "href": "/posts_of_page3" },
              "api:authors": { "href": "/authors" }
          }
      }'
    end
  end
end

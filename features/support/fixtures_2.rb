# singular resource 
{
  data: {
    attr1: 'ffg1',
    attr2: 'ffg2',
    attr3: 'ffg2',
    attr4: 'ffg4',
  },
  _links: {
    authors: {
      rel: 'self',
      href: "http:…/authors"
    }
  },
  _meta: {

  }
}

# singular resource - nested
{
  data: {
    attr1: 'ffg1',
    attr2: 'ffg2',
    attr3: 'ffg2',
    attr4: 'ffg4',
    publisher: {
      data: { name: 'Publisher 1'},
      _meta: {
        type: 'publisher'
      }
    },
    authors: [
      {
        data: {
          name: 'Author1'
        },
        _links: {
          authors: {
            rel: 'self',
            href: "http:…/author/1"
          }
        },
        _meta: {        
          type: 'author'
        }
      },
      {
        data: {
          name: 'Author2'
        },
        _links: {
          authors: {
            rel: 'self',
            href: "http:…/author/1"
          }
        },
        _meta: {        
          type: 'author'
        }
      }
    ]
  },
  _links: {
    authors: {
      rel: 'self',
      href: "http:…/authors"
    }
  },
  _meta: {
    type: 'resource_type'
  }
}

# js-compact
{
  attr1: 'ffg1',
  attr2: 'ffg2',
  attr3: 'ffg2',
  attr4: 'ffg4',
  publisher: { name: 'Publisher 1'},
  authors: [
    { name: 'Author1' },
    { name: 'Author2' }
  ]
}


# articles?_include="{authors: 'person'},publisher"
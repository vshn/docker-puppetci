# build

`docker build -t local/puppetci:4 -f Dockerfile4 .`   
`docker build -t local/puppetci:3 -f Dockerfile3 .`

# run

`docker run -ti -v $(pwd):/module_name local/puppetci:4 bash`

# `.gitlab-ci.yml` example

```
puppet3:
  stage: test
  image: vshn/puppetci:latest-3
  script:
    - test_parser_validate.sh
    - puppet-check --style .

puppet3-future:
  stage: test
  image: vshn/puppetci:latest-3
  variables:
    STRICT_VARIABLES: 'yes'
    FUTURE_PARSER: 'yes'
  script:
    - test_parser_validate.sh
    - puppet-check --style --future .

puppet4:
  stage: test
  image: vshn/puppetci:latest-4
  script:
    - test_parser_validate.sh
    - puppet-check --style .
```

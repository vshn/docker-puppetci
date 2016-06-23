# build

`docker build -t local/puppetci:4 -f Dockerfile4 .`
`docker build -t local/puppetci:3 -f Dockerfile3 .`

# run

`docker run -ti -v $(pwd):/module_name local/puppetci:4 bash`

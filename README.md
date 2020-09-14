
Creating a Docker container Github Action, Just for learning :)

# Hello world docker Github Action

This action prints "Hello World" or "Hello" + the name of a person to greet to the log.

## Inputs

### `who-to-greet`

**Required** The name of the person to greet. Default `"World"`.

## Outputs

### `time`

The time we greeted you.

## Example usage

uses: actions/hello-world-docker-action@v6
with:
  who-to-greet: 'Shaiju'

## Example workflow file to put in your repo

on: [push]

jobs:
  hello_world_job:
    runs-on: ubuntu-latest
    name: A job to say hello
    steps:
    - name: Hello world action step
      id: hello
      uses: shaijut/hello-world-docker-action@v6
      with:
        who-to-greet: 'Shaijut test GH Action'
    # Use the output from the `hello` step
    - name: Get the output time
      run: echo "The time was ${{ steps.hello.outputs.time }}"

This [Code Ocean](https://codeocean.com) Compute Capsule will allow you to run and reproduce the results of [Pre-Mutect2](https://apps.codeocean.com/capsule/3226774/tree) on your local machine<sup>1</sup>. Follow the instructions below, or consult [our knowledge base](https://help.codeocean.com/user-manual/sharing-and-finding-published-capsules/exporting-capsules-and-reproducing-results-on-your-local-machine) for more information. Don't hesitate to reach out via live chat or [email](mailto:support@codeocean.com) if you have any questions.

<sup>1</sup> You may need access to additional hardware and/or software licenses.

# Prerequisites

- [Docker Community Edition (CE)](https://www.docker.com/community-edition)

# Instructions

## Download attached Data Assets

In order to fetch the Data Asset(s) this Capsule depends on, download them into the Capsule's `data` folder:
* [Hg38-Mutect2](https://apps.codeocean.com/data-assets/e63baad5-aeeb-4a57-b98a-5f8c0c125dfe) should be downloaded to `data/Alignment`

## Log in to the Docker registry

In your terminal, execute the following command, providing your password or API key when prompted for it:
```shell
docker login -u stephen@codeocean.com registry.apps.codeocean.com
```

## Run the Capsule to reproduce the results

In your terminal, navigate to the folder where you've extracted the Capsule and execute the following command, adjusting parameters as needed:
```shell
docker run --platform linux/amd64 --rm \
  --workdir /code \
  --volume "$PWD/code":/code \
  --volume "$PWD/data":/data \
  --volume "$PWD/results":/results \
  registry.apps.codeocean.com/capsule/f70cf89d-0417-49cb-ba68-4aba404d1998 \
  bash run
```

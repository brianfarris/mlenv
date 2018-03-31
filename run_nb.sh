docker run -it --rm -p 8888:8888 -v $(pwd)/src:/src bfarris/mlenv:v1 /bin/bash -c "jupyter lab --ip=* --port=8888 --no-browser --allow-root"


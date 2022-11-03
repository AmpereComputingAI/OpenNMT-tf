cd $( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
git clone -b r0.18 https://github.com/tensorflow/addons.git; cd addons; python3 setup.py bdist_wheel; pip3 install dist/*; cd ..
python3 setup.py bdist_wheel; pip3 install dist/*
wget https://opennmt-models.s3.amazonaws.com/averaged-ende-ckpt500k-v2.tar.gz; tar xf averaged-ende-ckpt500k-v2.tar.gz; rm averaged-ende-ckpt500k-v2.tar.gz; cd averaged-ende-ckpt500k-v2; wget https://opennmt-trainingdata.s3.amazonaws.com/wmtende.model; cd ..
python3 download_sacrebleu.py

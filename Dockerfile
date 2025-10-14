FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    clang \
    llvm \
    build-essential \
    wget \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/bin/clang /usr/local/bin/clang && \
    ln -s /usr/bin/opt /usr/local/bin/opt

WORKDIR /workspace

COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY . .

ENV PATH="/usr/local/bin:$PATH"

RUN clang --version && opt --version

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
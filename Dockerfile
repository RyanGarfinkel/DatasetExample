FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install LLVM 18 from official repository
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    build-essential \
    wget \
    curl \
    git \
    lsb-release \
    software-properties-common \
    gnupg \
    && rm -rf /var/lib/apt/lists/*

# Add LLVM 18 repository and install
RUN wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && \
    add-apt-repository "deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-18 main" && \
    apt-get update && \
    apt-get install -y \
    clang-18 \
    llvm-18 \
    llvm-18-dev \
    llvm-18-tools \
    && rm -rf /var/lib/apt/lists/*

# Create symlinks for LLVM tools
RUN ln -s /usr/bin/clang-18 /usr/local/bin/clang && \
    ln -s /usr/bin/opt-18 /usr/local/bin/opt && \
    ln -s /usr/bin/llvm-dis-18 /usr/local/bin/llvm-dis

WORKDIR /workspace

COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY . .

ENV PATH="/usr/local/bin:$PATH"

RUN clang --version && opt --version

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
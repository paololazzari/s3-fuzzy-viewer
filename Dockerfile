FROM ubuntu

ENV fzf_version="0.37.0"
ENV awscli_version="1.27.60"

RUN apt-get update && \
    apt-get install -y curl python3.10 python3-pip tmux && \
    curl -sOL "https://github.com/junegunn/fzf/releases/download/${fzf_version}/fzf-${fzf_version}-linux_amd64.tar.gz" && tar -xvzf "fzf-${fzf_version}-linux_amd64.tar.gz" && cp fzf /usr/local/bin/fzf && chmod +x /usr/local/bin/fzf && \
    pip install "awscli==${awscli_version}"

ADD s3-fuzzy-viewer .
RUN chmod +x s3-fuzzy-viewer
ENTRYPOINT ["./s3-fuzzy-viewer"]
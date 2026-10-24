FROM texlive/texlive:latest-small AS base

RUN tlmgr update --self && \
    tlmgr install \
        moderncv \
        fontawesome6 \
        cm-super

WORKDIR /src

FROM base AS builder
COPY . .
RUN latexmk -pdf -interaction=nonstopmode -halt-on-error resume.tex

FROM scratch AS export
COPY --from=builder /src/resume.pdf /

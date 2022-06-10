# libreoffice_sandbox

- build
　　- doc ディレクトリに以下からダウンロードした blank-inception-deck1-ja.ppt を置く
      - https://github.com/agile-samurai-ja/support/blob/master/blank-inception-deck/blank-inception-deck1-ja.ppt
　　- doc ディレクトリにsample.docxファイルを置く
　　- `docker build . -t libre:1.0`
- run
    - `docker run -it --rm libre:1.0`
        - マウントすると動かなくなる
    - `libreoffice7.2 --headless  --convert-to pdf:writer_pdf_Export ./blank-inception-deck1-ja.ppt`
    - `libreoffice7.2 --headless  --convert-to pdf:writer_pdf_Export ./sample.docx`
    - `libreoffice7.2 --headless  --cat ./sample.docx`
    - `libreoffice7.2 --headless  --cat ./blank-inception-deck1-ja.ppt`
        - この組み合わせはエラーになる
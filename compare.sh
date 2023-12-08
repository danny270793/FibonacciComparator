set -e

desired=30

echo 'building'
cd bun && bun build index.ts --compile && cd ..
cd go && go build && cd ..
cd rust && cargo build && cd ..
cd java && /opt/gradle/bin/gradle build && cd ..

echo 'comparing'
hyperfine\
    "cd ./bun && bun index.ts ${desired}"\
    "cd ./node && node index.js ${desired}"\
    "cd ./go && go run index.go ${desired}"\
    "cd ./rust && cargo run -- ${desired}"\
    "cd ./python && python3 index.py ${desired}"\
    "cd ./java && /opt/gradle/bin/gradle run --args=\"${desired}\""

hyperfine\
    "cd ./bun && ./index ${desired}"\
    "cd ./node && node index.js ${desired}"\
    "cd ./go && ./test ${desired}"\
    "cd ./rust && ./target/debug/rust ${desired}"\
    "cd ./python && python3 index.py ${desired}"\
    "cd ./java && java -jar app/build/libs/app.jar ${desired}"

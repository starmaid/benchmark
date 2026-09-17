#include <iostream>
#include <vector>
#include <thread>
#include <cmath>
#include <chrono>
#include <string>

double float_add(long long n) {
    double a = 1.1;
    double b = 2.2;

    for (long long i = 0; i < n; ++i)
        a += b;

    return a;
}

double float_mul(long long n) {
    double a = 1.000001;

    for (long long i = 0; i < n; ++i)
        a *= 1.0000001;

    return a;
}

double float_mix(long long n) {
    double a = 1.1;
    double b = 2.2;

    for (long long i = 0; i < n; ++i)
        a = a * 1.0000001 + b;

    return a;
}

uint64_t integer_mix(long long n) {
    uint64_t a = 1100000;
    uint64_t b = 2200000;

    for (long long i = 0; i < n; ++i) {
        a = a * 1000001 + b;
        a ^= 0x12345678;
    }

    return a;
}




// Core workload: floating-point operations
void do_work(long long iterations) {
    float_add(iterations);
    float_mul(iterations);
    float_mix(iterations);
    integer_mix(iterations);
}

int main(int argc, char* argv[]) {
    if (argc < 3) {
        std::cerr << "Usage: " << argv[0] << " <iterations> <single|multi>\n";
        return 1;
    }

    long long iterations = std::stoll(argv[1]);
    std::string mode = argv[2];

    auto start = std::chrono::high_resolution_clock::now();

    if (mode == "single") {
        do_work(iterations);
    } else if (mode == "multi") {
        unsigned int cores = std::thread::hardware_concurrency();
        if (cores == 0) cores = 4;

        std::vector<std::thread> threads;
        for (unsigned int i = 0; i < cores; ++i) {
            threads.emplace_back([iterations]() {
                do_work(iterations);
            });
        }

        for (auto& t : threads) {
            t.join();
        }
    } else if (mode == "nproc") {
        std::cout << std::thread::hardware_concurrency() << std::endl;
    } else {
        std::cerr << "Invalid mode. Use 'single' or 'multi'.\n";
        return 1;
    }

    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed = end - start;

    // Output ONLY the raw execution time in seconds
    std::cout << elapsed.count() << std::endl;

    return 0;
}
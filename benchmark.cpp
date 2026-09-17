#include <iostream>
#include <vector>
#include <thread>
#include <cmath>
#include <chrono>
#include <string>

// Core workload: floating-point operations
double do_work(long long iterations) {
    double result = 0.0;
    for (long long i = 1; i <= iterations; ++i) {
        result += std::sqrt(i * 1.0);
    }
    return result;
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
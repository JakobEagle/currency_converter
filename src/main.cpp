#include "../include/currency_converter/root_certificates.hpp"
#include "../include/currency_converter/client.hpp"

#include <iostream>
#include <string>

int main(int argc, char const *argv[])
{

    try
    {
        Client::Client client;

        client.write();
        client.read();
        client.output();
    }
    catch (const std::exception &e)
    {
        std::cerr << "Error: " << e.what() << std::endl;
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}

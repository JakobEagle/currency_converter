#ifndef __CLIENT__
#define __CLIENT__

#include "./root_certificates.hpp"

#include <iostream>

#include <boost/beast/core.hpp>
#include <boost/beast/http.hpp>
#include <boost/beast/ssl.hpp>
#include <boost/beast/version.hpp>
#include <boost/asio/connect.hpp>
#include <boost/asio/ip/tcp.hpp>
#include <boost/asio/ssl/error.hpp>
#include <boost/asio/ssl/stream.hpp>

namespace beast = boost::beast;
namespace http = boost::beast::http;
namespace net = boost::asio;
namespace ssl = net::ssl;
using tcp = net::ip::tcp;

class Client
{
public:
    // initializing HTTP client
    Client()
        : ctx(ssl::context::tlsv12_client), resolver(ioc), stream(ioc, ctx)
    {
        // This holds the root certificate used for verification
        load_root_certificates(ctx);

        // Verify the remote server's certificate
        ctx.set_verify_mode(ssl::verify_peer);

        // Set SNI Hostname (many hosts need this to handshake successfully)
        if (!SSL_set_tlsext_host_name(stream.native_handle(), host))
        {
            beast::error_code ec{static_cast<int>(::ERR_get_error()), net::error::get_ssl_category()};
            throw beast::system_error{ec};
        }

        // Look up the domain name
        auto const results = resolver.resolve(host, port);

        // Make the connection on the IP address we get from a lookup
        beast::get_lowest_layer(stream).connect(results);

        // Perform the SSL handshake
        stream.handshake(ssl::stream_base::client);

        // Set up an HTTP GET request message
        request.set(http::field::host, host);
        request.set(http::field::user_agent, BOOST_BEAST_VERSION_STRING);
    }

    // closing stream when destructor is called
    ~Client()
    {
        beast::error_code ec;
        stream.shutdown(ec);
        if (ec == net::error::eof)
        {
            // Not necessarily an error, happens when the stream is already closed
            ec = {};
        }
        if (ec)
        {
            std::cerr << "Error during stream shutdown: " << ec.message() << std::endl;
        }
    }

    void write()
    {
        http::write(stream, request);
    }

    void read()
    {
        http::read(stream, buffer, response);
    }

    void output()
    {
        std::cout << response << std::endl;
    }

private:
    const char *host = "api.frankfurter.app";
    const char *port = "443";
    const char *target = "/latest";
    int version = 11;

    // The io_context is required for all I/O
    net::io_context ioc;

    // The SSL context is required, and holds certificates
    ssl::context ctx;

    // request object
    http::request<http::string_body> request{http::verb::get, target, version};

    // container that will hold the response
    http::response<http::dynamic_body> response;

    // These objects perform our I/O
    tcp::resolver resolver;
    beast::ssl_stream<beast::tcp_stream> stream;

    // This buffer is used for reading and must be persisted
    beast::flat_buffer buffer;
};

#endif
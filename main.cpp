#include <iostream>
#include <boost/program_options.hpp>

int main(int argc, char* argv[])
{
  // Declare the supported options.
  boost::program_options::options_description d("Allowed options for [my_program]");
  d.add_options()
      ("help",
        "produce this help message")
      ("filename",
         boost::program_options::value<std::string>(),
         "load from file 'arg'");

  boost::program_options::variables_map m;
  boost::program_options::store(
    boost::program_options::parse_command_line(
      argc, argv, d), m);
  boost::program_options::notify(m);

  //If one of the options is set to 'help'...
  if (m.count("help"))
  {
    //Display the options_description
    std::cout << d << "\n";
  }

  if (m.count("filename"))
  {
    std::cout
      << "Filename is set to '"
      << m["filename"].as<std::string>()
      << "'\n";
  }
  else
  {
    std::cout
      << "No filename set\n";
  }
}

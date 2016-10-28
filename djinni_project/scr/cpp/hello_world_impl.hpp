//
//  hello_world_impl.hpp
//  
//
//  Created by steve on 2016/10/27.
//
//

#ifndef hello_world_impl_hpp
#define hello_world_impl_hpp

#include <stdio.h>
#include "hello_world.hpp"

#endif /* hello_world_impl_hpp */

namespace helloworld {
    
    class HelloWorldImpl : public helloworld::HelloWorld {
        
    public:
        
        // Constructor
        HelloWorldImpl();
        
        // Our method that returns a string
        std::string get_hello_world();
        
        std::string _name;
        
        std::string get_name();
        
        void set_name(const std::string & name);
    };
    
}

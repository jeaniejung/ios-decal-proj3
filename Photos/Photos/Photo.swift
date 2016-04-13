//
//  Photo.swift
//  Photos
//
//  Created by Gene Yoo on 11/3/15.

//  Copyright © 2015 iOS DeCal. All rights reserved.
//

import Foundation

class Photo {
    /* The number of likes the photo has. */
    var likes : Int!
    /* The string of the url to the photo file. */
    var url : String!
    /* The username of the photographer. */
    var username : String!

    /* Parses a NSDictionary and creates a photo object. */
    init (data: NSDictionary) {
        // FILL ME IN
        // HINT: use nested .valueForKey() calls, and then cast using 'as! TYPE'
        ///////////////////////////////
        let newdata = data.valueForKey("data")
        url = newdata!.valueForKey("link") as! String!
        likes = newdata!.valueForKey("likes")!.valueForKey("count") as! Int!
        let usersInPhoto = newdata!.valueForKey("users_in_photo")
        let user = usersInPhoto!.valueForKey("user")
        username = user!.valueForKey("username") as! String!
    }

}

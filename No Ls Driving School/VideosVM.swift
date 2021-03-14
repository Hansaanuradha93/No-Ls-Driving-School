import Foundation

final class VideosVM {
    
    // MARK: Properties
    lazy var youtubeArray = [
        YoutubeLink(name: "Click for No L's YouTube Channel", urlString: "https://www.youtube.com/channel/UC0Dvn-F6wZ5dqP49GZovXcA"),
        YoutubeLink(name: "Controls", urlString: "https://youtube.com/watch?v=kf5ovkHAXSo&feature=share"),
        YoutubeLink(name: "Move Off & Stop", urlString: "https://youtu.be/UVqNggSjNuc"),
        YoutubeLink(name: "Changing Gear", urlString: "https://youtu.be/hmbqXmCh39U"),
        YoutubeLink(name: "Pull Push Steering", urlString: "https://youtu.be/1gqMxU35AJU"),
        
        YoutubeLink(name: "Steering for Driving Test", urlString: "https://youtu.be/NAd8KTn-3P4"),
        YoutubeLink(name: "Clutch control", urlString: "https://youtu.be/3w2aXj-81Ws"),
        YoutubeLink(name: "Pull up on the Left", urlString: "https://youtu.be/JYQWCWKM3I0"),
        YoutubeLink(name: "Hazard Drill & Junctions", urlString: "https://youtu.be/7MTmU71VKno"),
        YoutubeLink(name: "T Junctions", urlString: "https://youtu.be/24Qm7YULffI"),
        
        YoutubeLink(name: "Junctions Open or Closed", urlString: "https://youtu.be/tKJtvgzF8xA"),
        YoutubeLink(name: "Giving Way", urlString: "https://youtu.be/8NeJZFiMwzQ"),
        YoutubeLink(name: "Crossroads", urlString: "https://youtu.be/KPEu85ksGnk"),
        YoutubeLink(name: "Normal Driving Position", urlString: "https://youtu.be/zA6sawiIRDU"),
        YoutubeLink(name: "Meeting Traffic", urlString: "https://youtu.be/jT6KxrjH7vk"),
        
        YoutubeLink(name: "Cockpit Drill", urlString: "https://youtu.be/0SynvJKXgYI"),
        YoutubeLink(name: "Emerging Busy Junctions", urlString: "https://youtu.be/qhiO4t9myY4"),
        YoutubeLink(name: "https://youtu.be/qhiO4t9myY4", urlString: "https://youtu.be/77HDwEmw0mg"),
        YoutubeLink(name: "Traffic Signals Pedestrian Crossings", urlString: "https://youtu.be/W_2A_Q-ijCk"),
        YoutubeLink(name: "Traffic Light Sensors", urlString: "https://youtu.be/vAiu23qfWw4"),
        
        YoutubeLink(name: "Turning Offside and Nearside", urlString: "https://youtu.be/vAiu23qfWw4v"),
        YoutubeLink(name: "Awareness Planning", urlString: "https://youtu.be/kzWXPs1SeKk"),
        YoutubeLink(name: "When to go - Roundabouts", urlString: "https://youtu.be/TuJc22m3kj4"),
        YoutubeLink(name: "When to go - Roundabouts 2", urlString: "https://youtu.be/PirgrfzDRBY"),
        YoutubeLink(name: "Limit Point Analysis", urlString: "https://youtu.be/CSSEkhwVap8"),
        
        YoutubeLink(name: "Limit Points", urlString: "https://youtu.be/OWD7SNU4eXs"),
        YoutubeLink(name: "Independent Drive", urlString: "https://youtu.be/N5SQCCnqSJU"),
        YoutubeLink(name: "SatNav TomTom", urlString: "https://youtu.be/zUtG_XZMZJw"),
        YoutubeLink(name: "Queens Roundabout", urlString: "https://youtu.be/wShx7ISV3b4"),
        YoutubeLink(name: "Spiral Roundabouts", urlString: "https://youtu.be/lQVfMBzEotg"),
        
        YoutubeLink(name: "Independent Driving", urlString: "https://youtu.be/_nXUyKHl5k4"),
        YoutubeLink(name: "Emergency Stop", urlString: "https://youtu.be/MyYWe6wXESs"),
        YoutubeLink(name: "Dual Carriageways", urlString: "https://youtu.be/SlfVHoTx_9Y"),
        YoutubeLink(name: "Reverse Right", urlString: "https://youtu.be/4QK3Sg9Yv5E"),
        YoutubeLink(name: "Reverse Left", urlString: "https://youtu.be/-WjXFcygZbY"),
        
        YoutubeLink(name: "Roundabouts & Mini Roundabouts", urlString: "https://youtu.be/JkEdx6Fk77s"),
        YoutubeLink(name: "Parallel Parking", urlString: "https://youtu.be/ZE2r9p8AIuw"),
        YoutubeLink(name: "Bay Parking 45 degrees", urlString: "https://youtu.be/szpOhshmjqY"),
        YoutubeLink(name: "Driving Forward into Bay", urlString: "https://youtu.be/VL2w01eP51M"),
        YoutubeLink(name: "Reversing out of Bay", urlString: "https://youtu.be/PCSuZDMFVNc"),
        
        YoutubeLink(name: "Pull Up Right Reverse  Pull Up Right & Reverse Turn in Road", urlString: "https://youtu.be/lW7def6BT48"),
        YoutubeLink(name: "Tell Me BMW", urlString: "https://youtu.be/UBF9OjmZ8s8"),
        YoutubeLink(name: "Show Me BMW", urlString: "https://youtu.be/J74gsbb0bPg"),
        YoutubeLink(name: "New Show Me Tell Me", urlString: "https://youtu.be/YDUxPDC96Yg"),
        YoutubeLink(name: "Show Me Tell Me Ford Fiesta", urlString: "https://youtu.be/PxjrsJFOBNc"),
        
        YoutubeLink(name: "Show Me Tell Me Yaris", urlString: "https://youtu.be/P-THDb9mzpE"),
        YoutubeLink(name: "Show Me Tell Me Mini Cooper 1", urlString: "https://youtu.be/pHE5K2y1enU"),
        YoutubeLink(name: "Show Me Tell Me Mini Cooper 2", urlString: "https://youtu.be/OVYQGq9vG-8"),
        YoutubeLink(name: "How to Questions", urlString: "https://youtu.be/QWqaJAOqf3Q"),
        YoutubeLink(name: "The Tells", urlString: "https://youtu.be/EIXU7lcAObY"),
        
        YoutubeLink(name: "The Shows", urlString: "https://youtu.be/vjmsN5gOSKs"),
        YoutubeLink(name: "Commentary Driving", urlString: "https://youtu.be/y5h6-69FZSA"),
        YoutubeLink(name: "Advanced Driving", urlString: "https://youtu.be/DAFH8dTH5ns"),
        YoutubeLink(name: "Introduction Braking", urlString: "https://youtu.be/PkE0q1s-lng"),
        YoutubeLink(name: "Avoiding Brake Gear Overlap", urlString: "https://youtu.be/92zNVC_qKBE"),
        
        YoutubeLink(name: "Advanced Bends and Limit Points", urlString: "https://youtu.be/TpdhmA5W1e0"),
        YoutubeLink(name: "Advanced Town & Country", urlString: "https://youtu.be/IJrFBGPA9jk"),
        YoutubeLink(name: "Advanced Night Driving", urlString: "https://youtu.be/IJrFBGPA9jk"),
        YoutubeLink(name: "Progressive and Eco Driving", urlString: "https://youtu.be/dU7275fJO78"),
        YoutubeLink(name: "Blue Light Aware", urlString: "https://youtu.be/btRHvQEIkcU"),
        YoutubeLink(name: "Hazard Perception Defensive Driving", urlString: "https://youtu.be/EDbvx25xi1s"),
        YoutubeLink(name: "Acceleration Sense", urlString: "https://youtu.be/cn85aXnuhs8"),
    ]
}

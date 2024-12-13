import React from "react";
import { Link } from "react-router-dom";

function L9Banner() {
    return (
        <div className="bg-info text-dark text-center p-2">
            <h4>Level 9 Games</h4>
            <div className="mt-2">
                {/* Navigation Links */}
                <Link to="/"> Home</Link> | <Link to="/nintendo">Nintendo</Link> | <Link to="/playstation">PlayStation</Link> | <Link to="/xbox">Xbox</Link>
            </div>
        </div>
    );
}

export default L9Banner

import React from "react";
import { Link } from "react-router-dom";

function L9Banner() {
    return (
        <nav class="navbar navbar-expand-lg navbar-dark gradient-custom">
        <div class="containter-fluid">
        <Link class="navbar-brand" to="/"><b class="site-title">Level9 Games</b></Link>
        <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-mbd-target="#navbarSupportedContent"
            aria-controls="#navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation">
                <i class="fas fa-bars text light"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbaSupportedContent">
                <ul class="navbar-nav me-auto d-flex flex-row mt-3 mt-lg-0">
                    <li class="nav-item text-center mx-2 mx-lg-1">
                        <Link class="nav-link active" aria-current="page" to="/"><div>
                    <i class="fas fa-home fa-lg mb-1"></i>
                    </div>Home</Link></li>
                  
                    <li class="nav-item text-center mx-2 mx-lg-1">
                        <Link class="nav-link" to="/nintendo">Nintendo</Link>
                    </li>
                    <li class="nav-item text-center mx-2 mx-lg-1">
                        <Link class="nav-link" to="/sega">Sega</Link>
                    </li>
                    <li class="nav-item text-center mx-2 mx-lg-1">
                        <Link class="nav-link" to="/playstation">Playstation</Link>
                    </li>
                    <li class="nav-item text-center mx-2 mx-lg-1">
                        <Link class="nav-link" to="/xbox">Xbox</Link>
                    </li>
                </ul>         

            </div>   
            
        </div>
        </nav>
    );
}

export default L9Banner;

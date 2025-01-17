import React, { useState, useEffect } from "react";
import { Link } from 'react-router-dom';
import axios from "axios";

function PostList() {
    const [posts, setPosts] = useState([]);
    const [isLoading, setIsLoading] = useState(true);
    const [error, setError] = useState('');
    const [currentPage, setCurrentPage] = useState(1);
    const [totalPosts, setTotalPosts] = useState(0);
    const postsPerPage = 4;

    useEffect(() => {
        const fetchPosts = async () => {
            setIsLoading(true);
            setError(''); // Reset error before fetching
            try {
                // Log the URL being fetched for debugging purposes
                console.log(`Fetching posts from URL: ${process.env.REACT_APP_API_BASE_URL}/api/posts.php?page=${currentPage}`);
                const response = await axios.get(`${process.env.REACT_APP_API_BASE_URL}/api/posts.php?page=${currentPage}`);
                
                // Log the response for further inspection
                console.log('API Response:', response);

                // Check if the response structure is valid and update state accordingly
                if (response.data && Array.isArray(response.data.posts)) {
                    setPosts(response.data.posts);
                    setTotalPosts(response.data.totalPosts || 0);
                } else {
                    throw new Error('Invalid response structure');
                }
            } catch (error) {
                // Handle any errors by logging them and setting an error message
                console.error(error);
                const errorMessage = error.response?.data?.message || 'Failed to load posts' || 'Network error, please check your connection';
                setError(errorMessage);
            } finally {
                setIsLoading(false);
            }
        };

        fetchPosts();
    }, [currentPage]);  // Fetch posts whenever currentPage changes

    const totalPages = Math.ceil(totalPosts / postsPerPage);

    const goToPreviousPage = () => {
        if (currentPage > 1) setCurrentPage(currentPage - 1);
    };

    const goToNextPage = () => {
        if (currentPage < totalPages) setCurrentPage(currentPage + 1);
    };

    return (
        <div className="container mt-5">
            <h2 className="mb-4">All Posts</h2>
            {error && <div className="alert alert-danger">{error}</div>}
            <div className="row">
                {isLoading ? (
                    <p>Loading posts...</p>
                ) : posts.length > 0 ? (
                    posts.map((post) => (
                        <div className="col-12" key={post.id}> {/* Change col-md-6 to col-12 */}
                            <div className="card mb-4">
                                <div className="card-body">
                                    <h5 className="card-title">{post.title}</h5>
                                    <p className="card-text">
                                        By {post.author} on{' '}
                                        {new Date(post.publish_date).toLocaleDateString()}
                                    </p>
                                    <p>{post.content}</p> {/* Display full post content */}
                                </div>
                            </div>
                        </div>
                    ))
                ) : (
                    <p>No posts available.</p>
                )}
            </div>

            {totalPages > 1 && (
    <nav aria-label="Page navigation">
        <ul className="pagination">
            <li className={`page-item ${currentPage === 1 ? 'disabled' : ''}`}>
                <button className="page-link btn-info" onClick={goToPreviousPage}>
                    Previous
                </button>
            </li>
            {Array.from({ length: totalPages }, (_, index) => (
                <li
                    key={index}
                    className={`page-item ${index + 1 === currentPage ? 'active' : ''}`}
                >
                    <button
                        className={`page-link ${index + 1 === currentPage ? 'btn-info' : ''}`}
                        onClick={() => setCurrentPage(index + 1)}
                    >
                        {index + 1}
                    </button>
                </li>
            ))}
            <li className={`page-item ${currentPage === totalPages ? 'disabled' : ''}`}>
                <button className="page-link btn-info" onClick={goToNextPage}>
                    Next
                </button>
            </li>
        </ul>
    </nav>
)}
            <Link to="/create-post" className="btn btn-info text-white">Make a New Post!</Link>
        </div>
    );
}

export default PostList;

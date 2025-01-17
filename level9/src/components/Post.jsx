import React, { useState, useEffect } from "react";
import { useParams } from "react-router-dom";
import axios from "axios";

const Post = () => {
    const { id } = useParams();
    const [post, setPost] = useState(null);

    const fetchPost = async () => {
        try {
            const response = await axios.get(`${process.env.REACT_APP_API_BASE_URL}/api/post.php/${id}`);
            const post = response.data.data;
            setPost(post);
        } catch (error) {
            console.error(error);
            alert("An error occurred while fetching the post.");
        }
    };

    useEffect(() => {
        fetchPost();
    }, [id]); // Added 'id' as dependency

    if (!post) {
        return <div>Loading...</div>;
    }

    return (
        <div className="container my-4"> {/* Fixed typo */}
            <h1 className="mb-4">{post.title}</h1>
            <p>{post.content}</p>
            <hr />
            <div className="d-flex justify-content-between">
                <div>
                    <small className="text-muted">
                        Posted by {post.author} on {post.date}
                    </small>
                </div>
            </div>
        </div>
    );
};

export default Post;
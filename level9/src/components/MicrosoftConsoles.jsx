import React, { useEffect, useState } from 'react';

const MicrosoftConsoles = () => {
    const [consoles, setConsoles] = useState([]);
    const [error, setError] = useState(null);

    useEffect(() => {
        // Fetch consoles from the API
        fetch('http://localhost/level9reactapi/api/getmicrosoftconsoles.php') 
            .then((response) => {
                if (!response.ok) {
                    throw new Error('Failed to fetch consoles');
                }
                return response.json();
            })
            .then((data) => setConsoles(data.posts))
            .catch((error) => setError(error.message));
    }, []);

    if (error) {
        return <div>Error: {error}</div>;
    }
// TODO: Make this bit prettier!
    return (
        <div class="xbox">
            <h1>Microsoft Xbox Consoles</h1>
            <br/>
            {consoles.length > 0 ? (
                <ul>
                {consoles.map((console) => (
                    <li key={console.consoleID}>
                        <h6><strong>{console.consoleName}</strong></h6>
                        Released in {console.consoleReleaseYear}
                        <br />
                        Current market price: - ${console.consolePrice}
                        <br /><br />
                    </li>
                    ))}
                </ul>
            ) : (
                <p>Loading consoles...</p>
            )}
        </div>
    );
};

export default MicrosoftConsoles;
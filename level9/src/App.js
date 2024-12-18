import './App.css';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import L9Banner from './L9Banner';

function App() {
  return (
    <Router>
      <L9Banner />
      <Routes>
        {/* Home Route */}
        <Route path="/" element={
          <div className="home">
            <h1><b>This is the Home page</b></h1>
          </div>
        } />

        {/* Nintendo Route */}
        <Route path="/nintendo" element={
          <div className="nintendo">
            <h1><b>This is the Nintendo page</b></h1>
          </div>
        } />

        {/* PlayStation Route */}
        <Route path="/playstation" element={
          <div className="playstation">
            <h1><b>This is the PlayStation page</b></h1>
          </div>
        } />

        {/* Xbox Route */}
        <Route path="/xbox" element={
          <div className="xbox">
            <h1><b>This is the Xbox page</b></h1>
          </div>
        } />
        
      </Routes>
    </Router>
  );
}

export default App;

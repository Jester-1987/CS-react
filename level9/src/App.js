import './App.css';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import L9Banner from './components/L9Banner';
import NintendoConsoles from './components/NintendoConsoles';
import SonyConsoles from './components/SonyConsoles';
import MicrosoftConsoles from './components/MicrosoftConsoles';
import SegaConsoles from './components/SegaConsoles';
import L9Footer from './components/L9Footer';

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
        <Route path="/nintendo" element={<NintendoConsoles />} />

        {/* PlayStation Route */}
        <Route path="/playstation" element={<SonyConsoles />} />       

        {/* PlayStation Route */}
        <Route path="/xbox" element={<MicrosoftConsoles />} />

         {/* Sega Route */}
         <Route path="/sega" element={<SegaConsoles />} />
        
      </Routes>
      {/* Footer component */}
      <L9Footer />
    </Router>
    
  );
}

export default App;

import './App.css';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import L9Banner from './components/L9Banner';
import Home from './components/Home';
import NintendoConsoles from './components/NintendoConsoles';
import SonyConsoles from './components/SonyConsoles';
import MicrosoftConsoles from './components/MicrosoftConsoles';
import SegaConsoles from './components/SegaConsoles';
import CreatePost from './components/CreatePost';
import Post from './components/Post';
import PostList from './components/PostList';
import L9Footer from './components/L9Footer';

function App() {
  return (
    <Router>
      <L9Banner />
      <Routes>
        {/* Home Route */}
        <Route path={"/"} element={<Home />} />
        
        {/* Create Posts Route*/}
        <Route path={"/post-list"} element={<PostList />} />
        <Route path={"/create-post"} element={<CreatePost />} />
        <Route path={"/post/:id"} element={<Post />} />

        {/* Nintendo Route */}
        <Route path={"/nintendo"} element={<NintendoConsoles />} />

        {/* PlayStation Route */}
        <Route path={"/playstation"} element={<SonyConsoles />} />       

        {/* PlayStation Route */}
        <Route path={"/xbox"} element={<MicrosoftConsoles />} />

         {/* Sega Route */}
         <Route path={"/sega"} element={<SegaConsoles />} />
        
      </Routes>
      {/* Footer component */}
      <L9Footer />
    </Router>
    
  );
}

export default App;

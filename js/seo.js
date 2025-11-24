// seo.js

/**
 * Initialize SEO content for the page
 */
function initSEO() {
    const path = window.location.pathname.split('/').pop();

    if (path === 'index.html' || path === '') {
        setHomePageSEO();
    } else if (path === 'list.html') {
        setListPageSEO();
    } else if (path === 'detail.html') {
        setDetailPageSEO();
    }
}

/**
 * Set SEO meta tags for homepage
 */
function setHomePageSEO() {
    if (!gamesData.homeGame) return;

    const game = gamesData.homeGame;
    const description = game.description || 'Play free online games at Poki.Love';

    // Update meta tags
    updateMetaTags({
        title: `Play ${game.title} and More Free Online Games - Poki.Love`,
        description: `${description} - Enjoy hundreds of free online games at Poki.Love`,
        keywords: `${game.title}, online game, free game, ${game.author}, ${generateKeywords(game.title)}`
    });

    // Add schema markup for featured game
    addSchemaMarkup(game, true);
}

/**
 * Set SEO meta tags for list page
 */
function setListPageSEO() {
    if (!gamesData.gameList) return;

    const keywords = gamesData.gameList.slice(0, 5).map(game => game.title).join(', ');

    updateMetaTags({
        title: `All Free Online Games - Poki.Love`,
        description: `Browse our complete collection of free online games including ${keywords} and many more. New games added regularly!`,
        keywords: `online games, free games, ${keywords}, game collection`
    });

    // Add schema markup for game list
    addSchemaMarkup(gamesData.gameList, false);
}

/**
 * Set SEO meta tags for detail page
 */
function setDetailPageSEO() {
    const urlParams = new URLSearchParams(window.location.search);
    const gameId = urlParams.get('id');
    if (!gameId || !gamesData.gameList) return;

    const game = gamesData.gameList.find(g => g.folder === gameId);
    if (!game) return;

    const description = game.description || `Play ${game.title} for free at Poki.Love`;

    updateMetaTags({
        title: `Play ${game.title} Online - Free Game by ${game.author} | Poki.Love`,
        description: description,
        keywords: `${game.title}, online game, free game, ${game.author}, ${generateKeywords(game.title)}`
    });

    // Add schema markup for single game
    addSchemaMarkup(game, true);

    // Add canonical URL
    addCanonicalLink();
}

/**
 * Update meta tags in head
 */
function updateMetaTags({title, description, keywords}) {
    // Update title
    document.title = title;

    // Get or create meta tags
    let metaDesc = document.querySelector('meta[name="description"]');
    let metaKeywords = document.querySelector('meta[name="keywords"]');
    let metaOgTitle = document.querySelector('meta[property="og:title"]');
    let metaOgDesc = document.querySelector('meta[property="og:description"]');

    if (!metaDesc) {
        metaDesc = document.createElement('meta');
        metaDesc.name = 'description';
        document.head.appendChild(metaDesc);
    }

    if (!metaKeywords) {
        metaKeywords = document.createElement('meta');
        metaKeywords.name = 'keywords';
        document.head.appendChild(metaKeywords);
    }

    if (!metaOgTitle) {
        metaOgTitle = document.createElement('meta');
        metaOgTitle.setAttribute('property', 'og:title');
        document.head.appendChild(metaOgTitle);
    }

    if (!metaOgDesc) {
        metaOgDesc = document.createElement('meta');
        metaOgDesc.setAttribute('property', 'og:description');
        document.head.appendChild(metaOgDesc);
    }

    // Set content
    metaDesc.content = description;
    metaKeywords.content = keywords;
    metaOgTitle.content = title;
    metaOgDesc.content = description;
}

/**
 * Generate keywords from game title
 */
function generateKeywords(title) {
    if (!title) return '';
    const words = title.toLowerCase().split(/[\s-]+/);
    return words.join(', ') + ', ' + words.map(word => `${word} game`).join(', ');
}

/**
 * Add schema.org markup for games
 */
function addSchemaMarkup(gameData, isSingle) {
    let script = document.querySelector('script[type="application/ld+json"]');
    if (!script) {
        script = document.createElement('script');
        script.type = 'application/ld+json';
        document.head.appendChild(script);
    }

    let schemaData;

    if (isSingle) {
        // Single game schema
        schemaData = {
            "@context": "https://schema.org",
            "@type": "VideoGame",
            "name": gameData.title,
            "description": gameData.description || `Play ${gameData.title} online for free`,
            "author": {
                "@type": "Organization",
                "name": gameData.author || "Poki.Love"
            },
            "gamePlatform": "Web Browser",
            "applicationCategory": "Game",
            "operatingSystem": "Any",
            "offers": {
                "@type": "Offer",
                "price": "0",
                "priceCurrency": "USD"
            }
        };
    } else {
        // Game collection schema
        const games = gameData.slice(0, 5).map(game => ({
            "@type": "VideoGame",
            "name": game.title,
            "url": `${window.location.origin}/detail.html?id=${game.folder}`,
            "author": {
                "@type": "Organization",
                "name": game.author || "Poki.Love"
            }
        }));

        schemaData = {
            "@context": "https://schema.org",
            "@type": "ItemList",
            "itemListElement": games.map((game, index) => ({
                "@type": "ListItem",
                "position": index + 1,
                "item": game
            }))
        };
    }

    script.textContent = JSON.stringify(schemaData);
}

/**
 * Add canonical URL for detail page
 */
function addCanonicalLink() {
    const urlParams = new URLSearchParams(window.location.search);
    const gameId = urlParams.get('id');
    if (!gameId) return;

    let link = document.querySelector('link[rel="canonical"]');
    if (!link) {
        link = document.createElement('link');
        link.rel = 'canonical';
        document.head.appendChild(link);
    }

    link.href = `${window.location.origin}/detail.html?id=${gameId}`;
}

// Initialize SEO when games data is loaded
window.addEventListener('gamesDataLoaded', initSEO);
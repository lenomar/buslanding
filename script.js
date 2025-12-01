// 游戏数据存储
let gamesData = {};

/**
 * 加载游戏数据
 */
async function loadGamesData() {
    try {
        console.log('开始加载游戏数据...');
        const response = await fetch('games/games.json');

        if (!response.ok) {
            throw new Error(`HTTP错误! 状态码: ${response.status}`);
        }

        gamesData = await response.json();
        console.log('游戏数据加载成功:', gamesData);

        // 验证数据格式
        if (!gamesData.homeGame || !gamesData.gameList) {
            throw new Error('游戏数据格式不正确，缺少必要字段');
        }

        // 触发数据加载完成事件
        const event = new Event('gamesDataLoaded');
        window.dispatchEvent(event);

        initPage();
    } catch (error) {
        console.error('加载游戏数据失败:', error);
        showErrorMessage('Failed to load game list, please try again later');
    }
}

/**
 * 显示错误信息
 * @param {string} message - 错误信息(英文)
 */
function showErrorMessage(message) {
    console.error('显示错误信息:', message);
    const errorContainer = document.createElement('div');
    errorContainer.className = 'error-message';
    errorContainer.innerHTML = `
        <p>${message}</p>
        <button onclick="location.reload()">Reload</button>
    `;

    // 尝试添加到其他游戏容器，如果不存在则添加到body
    const otherGamesContainer = document.getElementById('other-games-container') || document.body;
    otherGamesContainer.appendChild(errorContainer);
}

/**
 * 初始化页面
 */
function initPage() {
    console.log('初始化页面...');
    const path = window.location.pathname.split('/').pop();
    console.log('当前路径:', path);

    if (path === 'index.html' || path === '') {
        initHomePage();
    } else if (path === 'list.html') {
        initListPage();
    } else if (path === 'detail.html') {
        initDetailPage();
    }
}

/**
 * 初始化首页
 */
function initHomePage() {
    console.log('初始化首页...');

    // 加载推荐游戏
    const featuredContainer = document.getElementById('featured-game-container');
    if (featuredContainer) {
        console.log('加载推荐游戏:', gamesData.homeGame.title);
        featuredContainer.innerHTML = '';

        const iframe = document.createElement('iframe');
        // iframe.src = '/images/banner.png';
        iframe.src = gamesData.homeGame.index;
        iframe.frameBorder = '0';
        iframe.style.width = '100%';
        iframe.style.height = '100%';
        iframe.title = gamesData.homeGame.title;
        featuredContainer.appendChild(iframe);
        // 增加点击事件绑定
        // featuredContainer.addEventListener('click', function () {
        //     if (gamesData.homeGame) {
        //         console.log('加载推荐游戏:', gamesData.homeGame.title);
        //         featuredContainer.innerHTML = '';

        //         const iframe = document.createElement('iframe');
        //         // iframe.src = '/images/banner.png';
        //         iframe.src = gamesData.homeGame.index;
        //         iframe.frameBorder = '0';
        //         iframe.style.width = '100%';
        //         iframe.style.height = '100%';
        //         iframe.title = gamesData.homeGame.title;
        //         featuredContainer.appendChild(iframe);
        //     } else {
        //         console.warn('没有找到推荐游戏数据');
        //     }
        // });
    }

    // 加载其他游戏
    const otherGamesContainer = document.getElementById('other-games-container');
    if (otherGamesContainer) {
        console.log('准备加载其他游戏...');
        otherGamesContainer.innerHTML = '';

        if (!gamesData.gameList || gamesData.gameList.length === 0) {
            console.warn('游戏列表为空');
            otherGamesContainer.innerHTML = '<p class="no-games">No other games available</p>';
            return;
        }

        // 过滤掉首页推荐游戏
        const otherGames = gamesData.homeGame
            ? gamesData.gameList.filter(game => game.folder !== gamesData.homeGame.folder)
            : [...gamesData.gameList];

        console.log(`找到${otherGames.length}个其他游戏`, otherGames);

        if (otherGames.length === 0) {
            otherGamesContainer.innerHTML = '<p class="no-games">No other games available</p>';
        } else {
            otherGames.forEach((game, index) => {
                console.log(`添加游戏 ${index + 1}: ${game.title}`);
                const gameCard = createGameCard(game);
                otherGamesContainer.appendChild(gameCard);
            });
        }
    }
}

/**
 * 初始化列表页
 */
function initListPage() {
    console.log('初始化列表页...');
    const allGamesContainer = document.getElementById('all-games-container');

    if (allGamesContainer) {
        allGamesContainer.innerHTML = '';

        if (!gamesData.gameList || gamesData.gameList.length === 0) {
            console.warn('游戏列表为空');
            allGamesContainer.innerHTML = '<p class="no-games">No games available</p>';
            return;
        }

        console.log(`加载全部 ${gamesData.gameList.length} 个游戏`);
        gamesData.gameList.forEach((game, index) => {
            console.log(`添加游戏 ${index + 1}: ${game.title}`);
            const gameCard = createGameCard(game);
            allGamesContainer.appendChild(gameCard);
        });
    }
}

/**
 * 初始化详情页
 */
function initDetailPage() {
    console.log('初始化详情页...');
    const urlParams = new URLSearchParams(window.location.search);
    const gameId = urlParams.get('id');
    console.log('游戏ID:', gameId);

    if (!gameId) {
        console.warn('没有提供游戏ID，跳转到列表页');
        window.location.href = 'list.html';
        return;
    }

    const game = gamesData.gameList.find(g => g.folder === gameId);
    if (!game) {
        console.warn(`未找到ID为${gameId}的游戏，跳转到列表页`);
        window.location.href = 'list.html';
        return;
    }

    console.log('加载游戏详情:', game.title);

    // 设置游戏信息
    document.getElementById('game-title').textContent = game.title;
    document.getElementById('game-author').textContent = game.author || 'Unknown';
    document.getElementById('game-rating').textContent = game.rating || '0';
    document.getElementById('game-popularity').textContent = game.popularity || '0';
    document.getElementById('game-description').textContent = game.description || 'No description available.';

    // 加载游戏
    const gameContainer = document.getElementById('game-container');
    if (gameContainer) {
        gameContainer.innerHTML = '';
        const iframe = document.createElement('iframe');
        iframe.src = game.index;
        iframe.frameBorder = '0';
        iframe.style.width = '100%';
        iframe.style.height = '100%';
        iframe.title = game.title;
        gameContainer.appendChild(iframe);
    }

    // 加载相关游戏
    const relatedContainer = document.getElementById('related-games-container');
    if (relatedContainer && gamesData.gameList) {
        relatedContainer.innerHTML = '';

        const relatedGames = gamesData.gameList.filter(
            g => g.folder !== gameId
        ).slice(0, 5); // 最多显示5个相关游戏

        if (relatedGames.length > 0) {
            relatedGames.forEach(relatedGame => {
                const card = createGameCard(relatedGame);
                relatedContainer.appendChild(card);
            });
        } else {
            relatedContainer.innerHTML = '<p class="no-games">No related games</p>';
        }
    }
}

/**
 * 创建游戏卡片
 * @param {Object} game - 游戏对象
 * @returns {HTMLElement} 游戏卡片元素
 */
function createGameCard(game) {
    console.log(`创建游戏卡片: ${game.title}`);
    const card = document.createElement('div');
    card.className = 'game-card';
    card.onclick = () => {
        console.log(`点击游戏: ${game.title}`);
        window.location.href = `detail.html?id=${game.folder}`;
    };

    const img = document.createElement('img');
    img.src = game.icon;
    img.alt = game.title;
    img.onerror = () => {
        console.warn(`无法加载游戏图标: ${game.icon}`);
        img.src = 'images/default-game-icon.png';
    };

    const title = document.createElement('h3');
    title.textContent = game.title;

    // 添加作者信息
    const author = document.createElement('p');
    author.className = 'game-author';
    author.textContent = `Author: ${game.author || 'Unknown'}`;

    // 添加评分星星
    const rating = document.createElement('div');
    rating.className = 'game-rating';
    const starCount = Math.round(game.rating || 0);

    for (let i = 1; i <= 5; i++) {
        const star = document.createElement('i');
        star.className = `fas fa-star ${i <= starCount ? 'filled' : 'empty'}`;
        rating.appendChild(star);
    }

    // 添加人气/热度
    const popularity = document.createElement('p');
    popularity.className = 'game-popularity';
    popularity.textContent = `Popularity: ${game.popularity || 0}`;

    card.appendChild(img);
    card.appendChild(title);
    card.appendChild(author);
    card.appendChild(rating);
    card.appendChild(popularity);

    return card;
}

// 页面加载完成后执行
document.addEventListener('DOMContentLoaded', () => {
    console.log('DOM内容已加载');
    loadGamesData();
});

// 添加全局错误处理
window.addEventListener('error', (event) => {
    console.error('全局错误:', event.error);
    showErrorMessage('An unexpected error occurred, please refresh the page');
});

// 导出函数用于测试
if (typeof module !== 'undefined' && module.exports) {
    module.exports = {
        loadGamesData,
        createGameCard,
        initPage
    };
}
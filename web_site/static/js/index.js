document.addEventListener('DOMContentLoaded', function() {
    // 获取元素
    const navItems = document.querySelectorAll('.nav-case li');
    const caseItems = document.querySelectorAll('.case-item');
  
    // 默认激活"全部"
    document.querySelector('.nav-case li').classList.add('active');
  
    // 点击导航处理
    navItems.forEach(item => {
      item.addEventListener('click', function(e) {
        e.preventDefault();
        
        // 移除其他激活状态
        navItems.forEach(li => li.classList.remove('active'));
        this.classList.add('active');
  
        // 获取当前分类
        const filter = this.textContent.trim();
        
        // 筛选图片
        caseItems.forEach(img => {
          if (filter === '全部' || img.dataset.category === filter) {
            img.style.display = 'block';
          } else {
            img.style.display = 'none';
          }
        });
      });
    });
  });

  


    // 获取按钮元素
    const backToTopBtn = document.getElementById('backToTopBtn');

    // 监听页面滚动事件
    window.addEventListener('scroll', () => {
      // 检查页面是否已滚动到最顶部
      if (window.pageYOffset > 0) {
        // 如果不是最顶部，则添加scroll类到body元素以显示按钮
        document.body.classList.add('scroll');
      } else {
        // 如果是最顶部，则移除scroll类以隐藏按钮
        document.body.classList.remove('scroll');
      }
    });
  
    // 添加点击事件监听器到按钮
    backToTopBtn.addEventListener('click', () => {
      // 滚动页面到最顶部
      window.scrollTo({
        top: 0,
        behavior: 'smooth' // 平滑滚动
      });
    });
const backToTop = () => {
    const arrow = document.querySelector(".arrow-up")
    const topPage = document.getElementById('landing-page')

    arrow.addEventListener('click', (e) => {
        topPage.scrollIntoView({
            behavior: "smooth"
        });
    })
}

export { backToTop }
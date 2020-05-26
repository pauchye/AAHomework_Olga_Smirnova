export const fetchSearchGiphys = searchTerm => (
    $.ajax({
        method: 'get',
        url: `http://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=cCvezBSLyU0TqAOrSP894SOA0yekJB09&limit=2`
    })
)
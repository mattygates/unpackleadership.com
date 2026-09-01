module Jekyll
  module SeoTagFilters
    # jekyll-seo-tag always appends its own <script type="application/ld+json">
    # block with no way to disable it via tag parameters. Its JSON-LD has known
    # semantic issues for this site (publisher name resolves to the post
    # author's raw front-matter string, every non-post page is typed
    # WebSite/WebPage inconsistently). We keep {% seo %} for its excellent,
    # well-tested meta tags (title, description, canonical, OG, Twitter,
    # image sizing, GSC/Bing verification hooks) and strip only the trailing
    # ld+json script, replacing it with hand-authored, consolidated schema
    # per layout.
    def strip_json_ld(html)
      html.to_s.sub(%r{\s*<script type="application/ld\+json">.*?</script>}m, "")
    end
  end
end

Liquid::Template.register_filter(Jekyll::SeoTagFilters)

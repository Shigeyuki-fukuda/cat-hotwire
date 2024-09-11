module ApplicationHelper
  def sidebar_link_to(path, emoji, text)
    classes = %w[my-1 nav-link text-white]
    classes << "active" if current_page?(path)

    link_to(path, class: classes) do
      # tag.spanは RailsのHTMLタグを生成するヘルパーメソッド
      # https://qiita.com/jkr_2255/items/a2d153c0c8198f492084
      tag.span(class: "me-2") { emoji } + tag.span { text }
    end
  end
end

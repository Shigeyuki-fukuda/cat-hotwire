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

  def icon(icon_name)
    tag.i(class: [ "bi", "bi-#{icon_name}" ])
  end

  def icon_with_text(icon_name, text)
    tag.span(icon(icon_name), class: "me-2") + tag.span(text)
  end

  def turbo_stream_flash
    # 複数Toastを同時に表示できるようにappendを使う
    turbo_stream.append "flashes", partial: "flash"
  end
end

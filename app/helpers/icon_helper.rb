module IconHelper
  ICONS = {
    "search" => '<circle cx="11" cy="11" r="7"/><path d="m20 20-4-4"/>',
    "pin" => '<path d="M20 10c0 5-8 11-8 11S4 15 4 10a8 8 0 1 1 16 0Z"/><circle cx="12" cy="10" r="2"/>',
    "calendar" => '<rect x="3" y="5" width="18" height="16" rx="2"/><path d="M16 3v4M8 3v4M3 10h18"/>',
    "scissors" => '<circle cx="6" cy="7" r="3"/><circle cx="6" cy="17" r="3"/><path d="m8.6 8.5 11 6.5M8.6 15.5 20 9"/>',
    "sparkles" => '<path d="m12 3 1.4 4.1L17 9l-3.6 1.9L12 15l-1.4-4.1L7 9l3.6-1.9L12 3ZM5 14l.8 2.2L8 17l-2.2.8L5 20l-.8-2.2L2 17l2.2-.8L5 14Z"/>',
    "face" => '<circle cx="12" cy="12" r="9"/><path d="M9 10h.01M15 10h.01M8.5 15c2 1.5 5 1.5 7 0"/>',
    "waves" => '<path d="M4 6c2 0 2 2 4 2s2-2 4-2 2 2 4 2 2-2 4-2M4 12c2 0 2 2 4 2s2-2 4-2 2 2 4 2 2-2 4-2M4 18c2 0 2 2 4 2s2-2 4-2 2 2 4 2 2-2 4-2"/>',
    "flower" => '<circle cx="12" cy="12" r="2"/><path d="M12 10c-4-1-5-5-2-7 3 1 4 4 2 7Zm2 2c1-4 5-5 7-2-1 3-4 4-7 2Zm-2 2c4 1 5 5 2 7-3-1-4-4-2-7Zm-2-2c-1 4-5 5-7 2 1-3 4-4 7-2Z"/>',
    "brush" => '<path d="m14 4 6 6-8 8-6 1 1-6 7-9Z"/><path d="m12 6 6 6"/>',
    "eye" => '<path d="M2 12s4-6 10-6 10 6 10 6-4 6-10 6S2 12 2 12Z"/><circle cx="12" cy="12" r="2.5"/>',
    "grid" => '<circle cx="6" cy="6" r="1.5"/><circle cx="12" cy="6" r="1.5"/><circle cx="18" cy="6" r="1.5"/><circle cx="6" cy="12" r="1.5"/><circle cx="12" cy="12" r="1.5"/><circle cx="18" cy="12" r="1.5"/><circle cx="6" cy="18" r="1.5"/><circle cx="12" cy="18" r="1.5"/><circle cx="18" cy="18" r="1.5"/>',
    "heart" => '<path d="M20.8 4.6a5.5 5.5 0 0 0-7.8 0L12 5.7l-1.1-1.1a5.5 5.5 0 0 0-7.8 7.8l1.1 1.1L12 21l7.8-7.5 1.1-1.1a5.5 5.5 0 0 0-.1-7.8Z"/>',
    "filter" => '<path d="M4 6h16M7 12h10M10 18h4"/>',
    "share" => '<circle cx="18" cy="5" r="2"/><circle cx="6" cy="12" r="2"/><circle cx="18" cy="19" r="2"/><path d="m8 11 8-5M8 13l8 5"/>',
    "clock" => '<circle cx="12" cy="12" r="9"/><path d="M12 7v5l3 2"/>'
  }.freeze

  def icon(name, class_name: "size-5")
    tag.svg(ICONS.fetch(name).html_safe, class: class_name, viewBox: "0 0 24 24", fill: "none",
      stroke: "currentColor", stroke_width: 1.7, stroke_linecap: "round", stroke_linejoin: "round", aria: { hidden: true })
  end
end

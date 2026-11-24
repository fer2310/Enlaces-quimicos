import flet as ft

URL_DONATIVO = "https://tu-enlace-de-donativos.com"
TEXTO_DONATIVO = "Dona por favor, nos ayudaría mucho para seguir dándole más actualización"


def crear_boton_donativos(page: ft.Page) -> ft.Control:
    def ir_a_donar(e):
        page.launch_url(URL_DONATIVO)

    return ft.Container(
        content=ft.Text(
            TEXTO_DONATIVO,
            size=11.5,
            weight=ft.FontWeight.BOLD,
            color="#ffffff",
            max_lines=2,
            overflow=ft.TextOverflow.ELLIPSIS,
        ),
        bgcolor="#16a34a",
        border=ft.border.all(1.5, "#4ade80"),
        border_radius=12,
        padding=ft.padding.symmetric(horizontal=12, vertical=8),
        shadow=ft.BoxShadow(
            spread_radius=0,
            blur_radius=14,
            color="#6622c55e",
            offset=ft.Offset(0, 2),
        ),
        on_click=ir_a_donar,
    )

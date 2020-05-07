! GDK_AVAILABLE_IN_ALL
!GType gtk_cell_renderer_progress_get_type (void) G_GNUC_CONST;
function gtk_cell_renderer_progress_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_cell_renderer_progress_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkCellRenderer* gtk_cell_renderer_progress_new (void);
function gtk_cell_renderer_progress_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_renderer_progress_new
end function

! GDK_AVAILABLE_IN_ALL
!GQuark gtk_icon_theme_error_quark (void);
function gtk_icon_theme_error_quark() bind(c)
  use iso_c_binding, only: c_int32_t
  integer(c_int32_t) :: gtk_icon_theme_error_quark
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_icon_theme_get_type (void) G_GNUC_CONST;
function gtk_icon_theme_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_icon_theme_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkIconTheme *gtk_icon_theme_new (void);
function gtk_icon_theme_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_icon_theme_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkIconTheme *gtk_icon_theme_get_for_display (GdkDisplay *display);
function gtk_icon_theme_get_for_display(display) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_icon_theme_get_for_display
  type(c_ptr), value :: display
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_theme_set_search_path (GtkIconTheme *self, const char * const *path);
subroutine gtk_icon_theme_set_search_path(self, path) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: path
end subroutine

! GDK_AVAILABLE_IN_ALL
!char ** gtk_icon_theme_get_search_path (GtkIconTheme *self);
function gtk_icon_theme_get_search_path(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_icon_theme_get_search_path
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_theme_add_search_path (GtkIconTheme *self, const char *path);
subroutine gtk_icon_theme_add_search_path(self, path) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: path
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_theme_set_resource_path (GtkIconTheme *self, const char * const *path);
subroutine gtk_icon_theme_set_resource_path(self, path) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: path
end subroutine

! GDK_AVAILABLE_IN_ALL
!char ** gtk_icon_theme_get_resource_path (GtkIconTheme *self);
function gtk_icon_theme_get_resource_path(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_icon_theme_get_resource_path
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_theme_add_resource_path (GtkIconTheme *self, const char *path);
subroutine gtk_icon_theme_add_resource_path(self, path) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: path
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_theme_set_theme_name (GtkIconTheme *self, const char *theme_name);
subroutine gtk_icon_theme_set_theme_name(self, theme_name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: theme_name
end subroutine

! GDK_AVAILABLE_IN_ALL
!char * gtk_icon_theme_get_theme_name (GtkIconTheme *self);
function gtk_icon_theme_get_theme_name(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_icon_theme_get_theme_name
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_icon_theme_has_icon (GtkIconTheme *self, const gchar *icon_name);
function gtk_icon_theme_has_icon(self, icon_name) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_icon_theme_has_icon
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: icon_name
end function

! GDK_AVAILABLE_IN_ALL
!gint *gtk_icon_theme_get_icon_sizes (GtkIconTheme *self, const gchar *icon_name);
function gtk_icon_theme_get_icon_sizes(self, icon_name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_icon_theme_get_icon_sizes
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: icon_name
end function

! GDK_AVAILABLE_IN_ALL
!GtkIconPaintable *gtk_icon_theme_lookup_icon (GtkIconTheme *self, const char *icon_name, const char *fallbacks[], gint size, gint scale, GtkTextDirection direction, GtkIconLookupFlags flags);
function gtk_icon_theme_lookup_icon(self, icon_name, fallbacks, size, scale,&
& direction, flags) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int
  type(c_ptr) :: gtk_icon_theme_lookup_icon
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: icon_name
  character(kind=c_char), dimension(*) :: fallbacks
  integer(c_int), value :: size
  integer(c_int), value :: scale
  integer(c_int), value :: direction
  integer(c_int), value :: flags
end function

! GDK_AVAILABLE_IN_ALL
!GtkIconPaintable *gtk_icon_theme_lookup_by_gicon (GtkIconTheme *self, GIcon *icon, gint size, gint scale, GtkTextDirection direction, GtkIconLookupFlags flags);
function gtk_icon_theme_lookup_by_gicon(self, icon, size, scale, direction,&
& flags) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_icon_theme_lookup_by_gicon
  type(c_ptr), value :: self
  type(c_ptr), value :: icon
  integer(c_int), value :: size
  integer(c_int), value :: scale
  integer(c_int), value :: direction
  integer(c_int), value :: flags
end function

! GDK_AVAILABLE_IN_ALL
!GtkIconPaintable *gtk_icon_paintable_new_for_file (GFile *file, gint size, gint scale);
function gtk_icon_paintable_new_for_file(file, size, scale) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_icon_paintable_new_for_file
  type(c_ptr), value :: file
  integer(c_int), value :: size
  integer(c_int), value :: scale
end function

! GDK_AVAILABLE_IN_ALL
!char ** gtk_icon_theme_get_icon_names (GtkIconTheme *self);
function gtk_icon_theme_get_icon_names(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_icon_theme_get_icon_names
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_icon_paintable_get_type (void) G_GNUC_CONST;
function gtk_icon_paintable_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_icon_paintable_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GFile * gtk_icon_paintable_get_file (GtkIconPaintable *self);
function gtk_icon_paintable_get_file(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_icon_paintable_get_file
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_icon_paintable_get_icon_name (GtkIconPaintable *self);
function gtk_icon_paintable_get_icon_name(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_icon_paintable_get_icon_name
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_icon_paintable_is_symbolic (GtkIconPaintable *self);
function gtk_icon_paintable_is_symbolic(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_paintable_is_symbolic
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_window_group_get_type (void) G_GNUC_CONST;
function gtk_window_group_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_window_group_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWindowGroup * gtk_window_group_new (void);
function gtk_window_group_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_window_group_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_window_group_add_window (GtkWindowGroup *window_group, GtkWindow *window);
subroutine gtk_window_group_add_window(window_group, window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: window_group
  type(c_ptr), value :: window
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_window_group_remove_window (GtkWindowGroup *window_group, GtkWindow *window);
subroutine gtk_window_group_remove_window(window_group, window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: window_group
  type(c_ptr), value :: window
end subroutine

! GDK_AVAILABLE_IN_ALL
!GList * gtk_window_group_list_windows (GtkWindowGroup *window_group);
function gtk_window_group_list_windows(window_group) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_window_group_list_windows
  type(c_ptr), value :: window_group
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_drag_source_get_type (void) G_GNUC_CONST;
function gtk_drag_source_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_drag_source_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkDragSource *gtk_drag_source_new (void);
function gtk_drag_source_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_drag_source_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_drag_source_set_content (GtkDragSource *source, GdkContentProvider *content);
subroutine gtk_drag_source_set_content(source, content) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: source
  type(c_ptr), value :: content
end subroutine

! GDK_AVAILABLE_IN_ALL
!GdkContentProvider *gtk_drag_source_get_content (GtkDragSource *source);
function gtk_drag_source_get_content(source) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_drag_source_get_content
  type(c_ptr), value :: source
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_drag_source_set_actions (GtkDragSource *source, GdkDragAction actions);
subroutine gtk_drag_source_set_actions(source, actions) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: source
  integer(c_int), value :: actions
end subroutine

! GDK_AVAILABLE_IN_ALL
!GdkDragAction gtk_drag_source_get_actions (GtkDragSource *source);
function gtk_drag_source_get_actions(source) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_drag_source_get_actions
  type(c_ptr), value :: source
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_drag_source_set_icon (GtkDragSource *source, GdkPaintable *paintable, int hot_x, int hot_y);
subroutine gtk_drag_source_set_icon(source, paintable, hot_x, hot_y) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: source
  type(c_ptr), value :: paintable
  integer(c_int), value :: hot_x
  integer(c_int), value :: hot_y
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_drag_source_drag_cancel (GtkDragSource *source);
subroutine gtk_drag_source_drag_cancel(source) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: source
end subroutine

! GDK_AVAILABLE_IN_ALL
!GdkDrag * gtk_drag_source_get_drag (GtkDragSource *source);
function gtk_drag_source_get_drag(source) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_drag_source_get_drag
  type(c_ptr), value :: source
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_drag_check_threshold (GtkWidget *widget, int start_x, int start_y, int current_x, int current_y);
function gtk_drag_check_threshold(widget, start_x, start_y, current_x,&
& current_y) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_drag_check_threshold
  type(c_ptr), value :: widget
  integer(c_int), value :: start_x
  integer(c_int), value :: start_y
  integer(c_int), value :: current_x
  integer(c_int), value :: current_y
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_event_controller_focus_get_type (void) G_GNUC_CONST;
function gtk_event_controller_focus_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_event_controller_focus_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkEventController *gtk_event_controller_focus_new (void);
function gtk_event_controller_focus_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_event_controller_focus_new
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_event_controller_focus_contains_focus (GtkEventControllerFocus *self);
function gtk_event_controller_focus_contains_focus(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_event_controller_focus_contains_focus
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_event_controller_focus_is_focus (GtkEventControllerFocus *self);
function gtk_event_controller_focus_is_focus(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_event_controller_focus_is_focus
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GQuark gtk_builder_error_quark (void);
function gtk_builder_error_quark() bind(c)
  use iso_c_binding, only: c_int32_t
  integer(c_int32_t) :: gtk_builder_error_quark
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_builder_get_type (void) G_GNUC_CONST;
function gtk_builder_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_builder_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkBuilder* gtk_builder_new (void);
function gtk_builder_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_builder_new
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_builder_add_from_file (GtkBuilder *builder, const gchar *filename, GError **error);
function gtk_builder_add_from_file(builder, filename, error) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_builder_add_from_file
  type(c_ptr), value :: builder
  character(kind=c_char), dimension(*) :: filename
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_builder_add_from_resource (GtkBuilder *builder, const gchar *resource_path, GError **error);
function gtk_builder_add_from_resource(builder, resource_path, error) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_builder_add_from_resource
  type(c_ptr), value :: builder
  character(kind=c_char), dimension(*) :: resource_path
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_builder_add_from_string (GtkBuilder *builder, const gchar *buffer, gssize length, GError **error);
function gtk_builder_add_from_string(builder, buffer, length, error) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char, c_size_t
  integer(c_int) :: gtk_builder_add_from_string
  type(c_ptr), value :: builder
  character(kind=c_char), dimension(*) :: buffer
  integer(c_size_t), value :: length
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_builder_add_objects_from_file (GtkBuilder *builder, const gchar *filename, const char **object_ids, GError **error);
function gtk_builder_add_objects_from_file(builder, filename, object_ids,&
& error) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_builder_add_objects_from_file
  type(c_ptr), value :: builder
  character(kind=c_char), dimension(*) :: filename
  type(c_ptr), dimension(*) :: object_ids
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_builder_add_objects_from_resource(GtkBuilder *builder, const gchar *resource_path, const char **object_ids, GError **error);
function gtk_builder_add_objects_from_resource(builder, resource_path,&
& object_ids, error) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_builder_add_objects_from_resource
  type(c_ptr), value :: builder
  character(kind=c_char), dimension(*) :: resource_path
  type(c_ptr), dimension(*) :: object_ids
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_builder_add_objects_from_string (GtkBuilder *builder, const gchar *buffer, gssize length, const char **object_ids, GError **error);
function gtk_builder_add_objects_from_string(builder, buffer, length,&
& object_ids, error) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char, c_size_t
  integer(c_int) :: gtk_builder_add_objects_from_string
  type(c_ptr), value :: builder
  character(kind=c_char), dimension(*) :: buffer
  integer(c_size_t), value :: length
  type(c_ptr), dimension(*) :: object_ids
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!GObject* gtk_builder_get_object (GtkBuilder *builder, const gchar *name);
function gtk_builder_get_object(builder, name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_builder_get_object
  type(c_ptr), value :: builder
  character(kind=c_char), dimension(*) :: name
end function

! GDK_AVAILABLE_IN_ALL
!GSList* gtk_builder_get_objects (GtkBuilder *builder);
function gtk_builder_get_objects(builder) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_builder_get_objects
  type(c_ptr), value :: builder
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_builder_expose_object (GtkBuilder *builder, const gchar *name, GObject *object);
subroutine gtk_builder_expose_object(builder, name, object) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: builder
  character(kind=c_char), dimension(*) :: name
  type(c_ptr), value :: object
end subroutine

! GDK_AVAILABLE_IN_ALL
!GObject * gtk_builder_get_current_object (GtkBuilder *builder);
function gtk_builder_get_current_object(builder) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_builder_get_current_object
  type(c_ptr), value :: builder
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_builder_set_current_object (GtkBuilder *builder, GObject *current_object);
subroutine gtk_builder_set_current_object(builder, current_object) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: builder
  type(c_ptr), value :: current_object
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_builder_set_translation_domain (GtkBuilder *builder, const gchar *domain);
subroutine gtk_builder_set_translation_domain(builder, domain) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: builder
  character(kind=c_char), dimension(*) :: domain
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar* gtk_builder_get_translation_domain (GtkBuilder *builder);
function gtk_builder_get_translation_domain(builder) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_builder_get_translation_domain
  type(c_ptr), value :: builder
end function

! GDK_AVAILABLE_IN_ALL
!GtkBuilderScope *gtk_builder_get_scope (GtkBuilder *builder);
function gtk_builder_get_scope(builder) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_builder_get_scope
  type(c_ptr), value :: builder
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_builder_set_scope (GtkBuilder *builder, GtkBuilderScope *scope);
subroutine gtk_builder_set_scope(builder, scope) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: builder
  type(c_ptr), value :: scope
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_builder_get_type_from_name (GtkBuilder *builder, const char *type_name);
function gtk_builder_get_type_from_name(builder, type_name) bind(c)
  use iso_c_binding, only: c_size_t, c_ptr, c_char
  integer(c_size_t) :: gtk_builder_get_type_from_name
  type(c_ptr), value :: builder
  character(kind=c_char), dimension(*) :: type_name
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_builder_value_from_string (GtkBuilder *builder, GParamSpec *pspec, const gchar *string, GValue *value, GError **error);
function gtk_builder_value_from_string(builder, pspec, string, value, error)&
& bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_builder_value_from_string
  type(c_ptr), value :: builder
  type(c_ptr), value :: pspec
  character(kind=c_char), dimension(*) :: string
  type(c_ptr), value :: value
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_builder_value_from_string_type (GtkBuilder *builder, GType type, const gchar *string, GValue *value, GError **error);
function gtk_builder_value_from_string_type(builder, type, string, value,&
& error) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_size_t, c_char
  integer(c_int) :: gtk_builder_value_from_string_type
  type(c_ptr), value :: builder
  integer(c_size_t), value :: type
  character(kind=c_char), dimension(*) :: string
  type(c_ptr), value :: value
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!GtkBuilder * gtk_builder_new_from_file (const gchar *filename);
function gtk_builder_new_from_file(filename) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_builder_new_from_file
  character(kind=c_char), dimension(*) :: filename
end function

! GDK_AVAILABLE_IN_ALL
!GtkBuilder * gtk_builder_new_from_resource (const gchar *resource_path);
function gtk_builder_new_from_resource(resource_path) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_builder_new_from_resource
  character(kind=c_char), dimension(*) :: resource_path
end function

! GDK_AVAILABLE_IN_ALL
!GtkBuilder * gtk_builder_new_from_string (const gchar *string, gssize length);
function gtk_builder_new_from_string(string, length) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_size_t
  type(c_ptr) :: gtk_builder_new_from_string
  character(kind=c_char), dimension(*) :: string
  integer(c_size_t), value :: length
end function

! GDK_AVAILABLE_IN_ALL
!GClosure * gtk_builder_create_closure (GtkBuilder *builder, const char *function_name, GtkBuilderClosureFlags flags, GObject *object, GError **error);
function gtk_builder_create_closure(builder, function_name, flags, object,&
& error) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int
  type(c_ptr) :: gtk_builder_create_closure
  type(c_ptr), value :: builder
  character(kind=c_char), dimension(*) :: function_name
  integer(c_int), value :: flags
  type(c_ptr), value :: object
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_builder_extend_with_template (GtkBuilder *builder, GtkWidget *widget, GType template_type, const gchar *buffer, gssize length, GError **error);
function gtk_builder_extend_with_template(builder, widget, template_type,&
& buffer, length, error) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_size_t, c_char
  integer(c_int) :: gtk_builder_extend_with_template
  type(c_ptr), value :: builder
  type(c_ptr), value :: widget
  integer(c_size_t), value :: template_type
  character(kind=c_char), dimension(*) :: buffer
  integer(c_size_t), value :: length
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_font_chooser_dialog_get_type (void) G_GNUC_CONST;
function gtk_font_chooser_dialog_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_font_chooser_dialog_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_font_chooser_dialog_new (const gchar *title, GtkWindow *parent);
function gtk_font_chooser_dialog_new(title, parent) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_font_chooser_dialog_new
  character(kind=c_char), dimension(*) :: title
  type(c_ptr), value :: parent
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_gesture_pan_get_type (void) G_GNUC_CONST;
function gtk_gesture_pan_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_gesture_pan_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkGesture * gtk_gesture_pan_new (GtkOrientation orientation);
function gtk_gesture_pan_new(orientation) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_gesture_pan_new
  integer(c_int), value :: orientation
end function

! GDK_AVAILABLE_IN_ALL
!GtkOrientation gtk_gesture_pan_get_orientation (GtkGesturePan *gesture);
function gtk_gesture_pan_get_orientation(gesture) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gesture_pan_get_orientation
  type(c_ptr), value :: gesture
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_gesture_pan_set_orientation (GtkGesturePan *gesture, GtkOrientation orientation);
subroutine gtk_gesture_pan_set_orientation(gesture, orientation) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: gesture
  integer(c_int), value :: orientation
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_cell_renderer_accel_get_type (void) G_GNUC_CONST;
function gtk_cell_renderer_accel_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_cell_renderer_accel_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkCellRenderer *gtk_cell_renderer_accel_new (void);
function gtk_cell_renderer_accel_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_renderer_accel_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_layout_child_get_child_widget (GtkLayoutChild *layout_child);
function gtk_layout_child_get_child_widget(layout_child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_layout_child_get_child_widget
  type(c_ptr), value :: layout_child
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_widget_paintable_get_widget (GtkWidgetPaintable *self);
function gtk_widget_paintable_get_widget(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_paintable_get_widget
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_paintable_set_widget (GtkWidgetPaintable *self, GtkWidget *widget);
subroutine gtk_widget_paintable_set_widget(self, widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_accessible_get_type (void) G_GNUC_CONST;
function gtk_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_accessible_set_widget (GtkAccessible *accessible, GtkWidget *widget);
subroutine gtk_accessible_set_widget(accessible, widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: accessible
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_accessible_get_widget (GtkAccessible *accessible);
function gtk_accessible_get_widget(accessible) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_accessible_get_widget
  type(c_ptr), value :: accessible
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_pad_controller_get_type (void) G_GNUC_CONST;
function gtk_pad_controller_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_pad_controller_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkPadController *gtk_pad_controller_new (GActionGroup *group, GdkDevice *pad);
function gtk_pad_controller_new(group, pad) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_pad_controller_new
  type(c_ptr), value :: group
  type(c_ptr), value :: pad
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_pad_controller_set_action_entries (GtkPadController *controller, const GtkPadActionEntry *entries, gint n_entries);
subroutine gtk_pad_controller_set_action_entries(controller, entries,&
& n_entries) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: controller
  type(c_ptr), value :: entries
  integer(c_int), value :: n_entries
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_pad_controller_set_action (GtkPadController *controller, GtkPadActionType type, gint index, gint mode, const gchar *label, const gchar *action_name);
subroutine gtk_pad_controller_set_action(controller, type, index, mode, label,&
& action_name) bind(c)
  use iso_c_binding, only: c_ptr, c_int, c_char
  type(c_ptr), value :: controller
  integer(c_int), value :: type
  integer(c_int), value :: index
  integer(c_int), value :: mode
  character(kind=c_char), dimension(*) :: label
  character(kind=c_char), dimension(*) :: action_name
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_application_get_type (void) G_GNUC_CONST;
function gtk_application_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_application_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkApplication * gtk_application_new (const gchar *application_id, GApplicationFlags flags);
function gtk_application_new(application_id, flags) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int
  type(c_ptr) :: gtk_application_new
  character(kind=c_char), dimension(*) :: application_id
  integer(c_int), value :: flags
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_application_add_window (GtkApplication *application, GtkWindow *window);
subroutine gtk_application_add_window(application, window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: application
  type(c_ptr), value :: window
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_application_remove_window (GtkApplication *application, GtkWindow *window);
subroutine gtk_application_remove_window(application, window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: application
  type(c_ptr), value :: window
end subroutine

! GDK_AVAILABLE_IN_ALL
!GList * gtk_application_get_windows (GtkApplication *application);
function gtk_application_get_windows(application) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_application_get_windows
  type(c_ptr), value :: application
end function

! GDK_AVAILABLE_IN_ALL
!GMenuModel * gtk_application_get_app_menu (GtkApplication *application);
function gtk_application_get_app_menu(application) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_application_get_app_menu
  type(c_ptr), value :: application
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_application_set_app_menu (GtkApplication *application, GMenuModel *app_menu);
subroutine gtk_application_set_app_menu(application, app_menu) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: application
  type(c_ptr), value :: app_menu
end subroutine

! GDK_AVAILABLE_IN_ALL
!GMenuModel * gtk_application_get_menubar (GtkApplication *application);
function gtk_application_get_menubar(application) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_application_get_menubar
  type(c_ptr), value :: application
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_application_set_menubar (GtkApplication *application, GMenuModel *menubar);
subroutine gtk_application_set_menubar(application, menubar) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: application
  type(c_ptr), value :: menubar
end subroutine

! GDK_AVAILABLE_IN_ALL
!guint gtk_application_inhibit (GtkApplication *application, GtkWindow *window, GtkApplicationInhibitFlags flags, const gchar *reason);
function gtk_application_inhibit(application, window, flags, reason) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_application_inhibit
  type(c_ptr), value :: application
  type(c_ptr), value :: window
  integer(c_int), value :: flags
  character(kind=c_char), dimension(*) :: reason
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_application_uninhibit (GtkApplication *application, guint cookie);
subroutine gtk_application_uninhibit(application, cookie) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: application
  integer(c_int), value :: cookie
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWindow * gtk_application_get_window_by_id (GtkApplication *application, guint id);
function gtk_application_get_window_by_id(application, id) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_application_get_window_by_id
  type(c_ptr), value :: application
  integer(c_int), value :: id
end function

! GDK_AVAILABLE_IN_ALL
!GtkWindow * gtk_application_get_active_window (GtkApplication *application);
function gtk_application_get_active_window(application) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_application_get_active_window
  type(c_ptr), value :: application
end function

! GDK_AVAILABLE_IN_ALL
!gchar ** gtk_application_list_action_descriptions (GtkApplication *application);
function gtk_application_list_action_descriptions(application) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_application_list_action_descriptions
  type(c_ptr), value :: application
end function

! GDK_AVAILABLE_IN_ALL
!gchar ** gtk_application_get_accels_for_action (GtkApplication *application, const gchar *detailed_action_name);
function gtk_application_get_accels_for_action(application,&
& detailed_action_name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_application_get_accels_for_action
  type(c_ptr), value :: application
  character(kind=c_char), dimension(*) :: detailed_action_name
end function

! GDK_AVAILABLE_IN_ALL
!gchar ** gtk_application_get_actions_for_accel (GtkApplication *application, const gchar *accel);
function gtk_application_get_actions_for_accel(application, accel) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_application_get_actions_for_accel
  type(c_ptr), value :: application
  character(kind=c_char), dimension(*) :: accel
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_application_set_accels_for_action (GtkApplication *application, const gchar *detailed_action_name, const gchar * const *accels);
subroutine gtk_application_set_accels_for_action(application,&
& detailed_action_name, accels) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: application
  character(kind=c_char), dimension(*) :: detailed_action_name
  character(kind=c_char), dimension(*) :: accels
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_application_prefers_app_menu (GtkApplication *application);
function gtk_application_prefers_app_menu(application) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_application_prefers_app_menu
  type(c_ptr), value :: application
end function

! GDK_AVAILABLE_IN_ALL
!GMenu * gtk_application_get_menu_by_id (GtkApplication *application, const gchar *id);
function gtk_application_get_menu_by_id(application, id) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_application_get_menu_by_id
  type(c_ptr), value :: application
  character(kind=c_char), dimension(*) :: id
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_builder_cscope_add_callback_symbol (GtkBuilderCScope *self, const gchar *callback_name, GCallback callback_symbol);
subroutine gtk_builder_cscope_add_callback_symbol(self, callback_name,&
& callback_symbol) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_funptr
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: callback_name
  type(c_funptr), value :: callback_symbol
end subroutine

! GDK_AVAILABLE_IN_ALL
!GCallback gtk_builder_cscope_lookup_callback_symbol(GtkBuilderCScope *self, const gchar *callback_name);
function gtk_builder_cscope_lookup_callback_symbol(self, callback_name) bind(c)
  use iso_c_binding, only: c_funptr, c_ptr, c_char
  type(c_funptr) :: gtk_builder_cscope_lookup_callback_symbol
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: callback_name
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_tree_row_data_get_type (void) G_GNUC_CONST;
function gtk_tree_row_data_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_tree_row_data_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_tree_drag_source_get_type (void) G_GNUC_CONST;
function gtk_tree_drag_source_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_tree_drag_source_get_type
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_drag_source_row_draggable (GtkTreeDragSource *drag_source, GtkTreePath *path);
function gtk_tree_drag_source_row_draggable(drag_source, path) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_drag_source_row_draggable
  type(c_ptr), value :: drag_source
  type(c_ptr), value :: path
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_drag_source_drag_data_delete (GtkTreeDragSource *drag_source, GtkTreePath *path);
function gtk_tree_drag_source_drag_data_delete(drag_source, path) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_drag_source_drag_data_delete
  type(c_ptr), value :: drag_source
  type(c_ptr), value :: path
end function

! 
!GdkContentProvider * gtk_tree_drag_source_drag_data_get (GtkTreeDragSource *drag_source, GtkTreePath *path);
function gtk_tree_drag_source_drag_data_get(drag_source, path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_drag_source_drag_data_get
  type(c_ptr), value :: drag_source
  type(c_ptr), value :: path
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_tree_drag_dest_get_type (void) G_GNUC_CONST;
function gtk_tree_drag_dest_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_tree_drag_dest_get_type
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_drag_dest_drag_data_received (GtkTreeDragDest *drag_dest, GtkTreePath *dest, const GValue *value);
function gtk_tree_drag_dest_drag_data_received(drag_dest, dest, value) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_drag_dest_drag_data_received
  type(c_ptr), value :: drag_dest
  type(c_ptr), value :: dest
  type(c_ptr), value :: value
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_drag_dest_row_drop_possible (GtkTreeDragDest *drag_dest, GtkTreePath *dest_path, const GValue *value);
function gtk_tree_drag_dest_row_drop_possible(drag_dest, dest_path, value)&
& bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_drag_dest_row_drop_possible
  type(c_ptr), value :: drag_dest
  type(c_ptr), value :: dest_path
  type(c_ptr), value :: value
end function

! 
!GdkContentProvider * gtk_tree_create_row_drag_content (GtkTreeModel *tree_model, GtkTreePath *path);
function gtk_tree_create_row_drag_content(tree_model, path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_create_row_drag_content
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: path
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_get_row_drag_data (const GValue *value, GtkTreeModel **tree_model, GtkTreePath **path);
function gtk_tree_get_row_drag_data(value, tree_model, path) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_get_row_drag_data
  type(c_ptr), value :: value
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: path
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_border_get_type (void) G_GNUC_CONST;
function gtk_border_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_border_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkBorder *gtk_border_new (void) G_GNUC_MALLOC;
function gtk_border_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_border_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkBorder *gtk_border_copy (const GtkBorder *border_);
function gtk_border_copy(border_) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_border_copy
  type(c_ptr), value :: border_
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_border_free (GtkBorder *border_);
subroutine gtk_border_free(border_) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: border_
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_buildable_get_type (void) G_GNUC_CONST;
function gtk_buildable_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_buildable_get_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_buildable_set_name (GtkBuildable *buildable, const gchar *name);
subroutine gtk_buildable_set_name(buildable, name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: buildable
  character(kind=c_char), dimension(*) :: name
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_buildable_get_name (GtkBuildable *buildable);
function gtk_buildable_get_name(buildable) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_buildable_get_name
  type(c_ptr), value :: buildable
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_buildable_add_child (GtkBuildable *buildable, GtkBuilder *builder, GObject *child, const gchar *type);
subroutine gtk_buildable_add_child(buildable, builder, child, type) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: buildable
  type(c_ptr), value :: builder
  type(c_ptr), value :: child
  character(kind=c_char), dimension(*) :: type
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_buildable_set_buildable_property (GtkBuildable *buildable, GtkBuilder *builder, const gchar *name, const GValue *value);
subroutine gtk_buildable_set_buildable_property(buildable, builder, name,&
& value) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: buildable
  type(c_ptr), value :: builder
  character(kind=c_char), dimension(*) :: name
  type(c_ptr), value :: value
end subroutine

! GDK_AVAILABLE_IN_ALL
!GObject * gtk_buildable_construct_child (GtkBuildable *buildable, GtkBuilder *builder, const gchar *name);
function gtk_buildable_construct_child(buildable, builder, name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_buildable_construct_child
  type(c_ptr), value :: buildable
  type(c_ptr), value :: builder
  character(kind=c_char), dimension(*) :: name
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_buildable_custom_tag_start (GtkBuildable *buildable, GtkBuilder *builder, GObject *child, const gchar *tagname, GtkBuildableParser *parser, gpointer *data);
function gtk_buildable_custom_tag_start(buildable, builder, child, tagname,&
& parser, data) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_buildable_custom_tag_start
  type(c_ptr), value :: buildable
  type(c_ptr), value :: builder
  type(c_ptr), value :: child
  character(kind=c_char), dimension(*) :: tagname
  type(c_ptr), value :: parser
  type(c_ptr), value :: data
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_buildable_custom_tag_end (GtkBuildable *buildable, GtkBuilder *builder, GObject *child, const gchar *tagname, gpointer data);
subroutine gtk_buildable_custom_tag_end(buildable, builder, child, tagname,&
& data) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: buildable
  type(c_ptr), value :: builder
  type(c_ptr), value :: child
  character(kind=c_char), dimension(*) :: tagname
  type(c_ptr), value :: data
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_buildable_custom_finished (GtkBuildable *buildable, GtkBuilder *builder, GObject *child, const gchar *tagname, gpointer data);
subroutine gtk_buildable_custom_finished(buildable, builder, child, tagname,&
& data) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: buildable
  type(c_ptr), value :: builder
  type(c_ptr), value :: child
  character(kind=c_char), dimension(*) :: tagname
  type(c_ptr), value :: data
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_buildable_parser_finished (GtkBuildable *buildable, GtkBuilder *builder);
subroutine gtk_buildable_parser_finished(buildable, builder) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buildable
  type(c_ptr), value :: builder
end subroutine

! GDK_AVAILABLE_IN_ALL
!GObject * gtk_buildable_get_internal_child (GtkBuildable *buildable, GtkBuilder *builder, const gchar *childname);
function gtk_buildable_get_internal_child(buildable, builder, childname)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_buildable_get_internal_child
  type(c_ptr), value :: buildable
  type(c_ptr), value :: builder
  character(kind=c_char), dimension(*) :: childname
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_buildable_parse_context_push (GtkBuildableParseContext *context, const GtkBuildableParser *parser, gpointer user_data);
subroutine gtk_buildable_parse_context_push(context, parser, user_data) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: context
  type(c_ptr), value :: parser
  type(c_ptr), value :: user_data
end subroutine

! GDK_AVAILABLE_IN_ALL
!gpointer gtk_buildable_parse_context_pop (GtkBuildableParseContext *context);
function gtk_buildable_parse_context_pop(context) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_buildable_parse_context_pop
  type(c_ptr), value :: context
end function

! GDK_AVAILABLE_IN_ALL
!const char * gtk_buildable_parse_context_get_element (GtkBuildableParseContext *context);
function gtk_buildable_parse_context_get_element(context) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_buildable_parse_context_get_element
  type(c_ptr), value :: context
end function

! GDK_AVAILABLE_IN_ALL
!GPtrArray *gtk_buildable_parse_context_get_element_stack (GtkBuildableParseContext *context);
function gtk_buildable_parse_context_get_element_stack(context) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_buildable_parse_context_get_element_stack
  type(c_ptr), value :: context
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_buildable_parse_context_get_position (GtkBuildableParseContext *context, gint *line_number, gint *char_number);
subroutine gtk_buildable_parse_context_get_position(context, line_number,&
& char_number) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: context
  type(c_ptr), value :: line_number
  type(c_ptr), value :: char_number
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_text_tag_table_get_type (void) G_GNUC_CONST;
function gtk_text_tag_table_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_text_tag_table_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkTextTagTable *gtk_text_tag_table_new (void);
function gtk_text_tag_table_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_tag_table_new
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_tag_table_add (GtkTextTagTable *table, GtkTextTag *tag);
function gtk_text_tag_table_add(table, tag) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_tag_table_add
  type(c_ptr), value :: table
  type(c_ptr), value :: tag
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_tag_table_remove (GtkTextTagTable *table, GtkTextTag *tag);
subroutine gtk_text_tag_table_remove(table, tag) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: table
  type(c_ptr), value :: tag
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkTextTag *gtk_text_tag_table_lookup (GtkTextTagTable *table, const gchar *name);
function gtk_text_tag_table_lookup(table, name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_text_tag_table_lookup
  type(c_ptr), value :: table
  character(kind=c_char), dimension(*) :: name
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_tag_table_foreach (GtkTextTagTable *table, GtkTextTagTableForeach func, gpointer data);
subroutine gtk_text_tag_table_foreach(table, func, data) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: table
  type(c_funptr), value :: func
  type(c_ptr), value :: data
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_text_tag_table_get_size (GtkTextTagTable *table);
function gtk_text_tag_table_get_size(table) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_tag_table_get_size
  type(c_ptr), value :: table
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_search_bar_get_type (void) G_GNUC_CONST;
function gtk_search_bar_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_search_bar_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_search_bar_new (void);
function gtk_search_bar_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_search_bar_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_search_bar_connect_entry (GtkSearchBar *bar, GtkEditable *entry);
subroutine gtk_search_bar_connect_entry(bar, entry) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: bar
  type(c_ptr), value :: entry
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_search_bar_get_search_mode (GtkSearchBar *bar);
function gtk_search_bar_get_search_mode(bar) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_search_bar_get_search_mode
  type(c_ptr), value :: bar
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_search_bar_set_search_mode (GtkSearchBar *bar, gboolean search_mode);
subroutine gtk_search_bar_set_search_mode(bar, search_mode) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: bar
  integer(c_int), value :: search_mode
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_search_bar_get_show_close_button (GtkSearchBar *bar);
function gtk_search_bar_get_show_close_button(bar) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_search_bar_get_show_close_button
  type(c_ptr), value :: bar
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_search_bar_set_show_close_button (GtkSearchBar *bar, gboolean visible);
subroutine gtk_search_bar_set_show_close_button(bar, visible) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: bar
  integer(c_int), value :: visible
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_search_bar_set_key_capture_widget (GtkSearchBar *bar, GtkWidget *widget);
subroutine gtk_search_bar_set_key_capture_widget(bar, widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: bar
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_search_bar_get_key_capture_widget (GtkSearchBar *bar);
function gtk_search_bar_get_key_capture_widget(bar) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_search_bar_get_key_capture_widget
  type(c_ptr), value :: bar
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_container_get_type (void) G_GNUC_CONST;
function gtk_container_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_container_get_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_container_add (GtkContainer *container, GtkWidget *widget);
subroutine gtk_container_add(container, widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: container
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_container_remove (GtkContainer *container, GtkWidget *widget);
subroutine gtk_container_remove(container, widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: container
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_container_foreach (GtkContainer *container, GtkCallback callback, gpointer callback_data);
subroutine gtk_container_foreach(container, callback, callback_data) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: container
  type(c_funptr), value :: callback
  type(c_ptr), value :: callback_data
end subroutine

! GDK_AVAILABLE_IN_ALL
!GList* gtk_container_get_children (GtkContainer *container);
function gtk_container_get_children(container) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_container_get_children
  type(c_ptr), value :: container
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_container_set_focus_vadjustment (GtkContainer *container, GtkAdjustment *adjustment);
subroutine gtk_container_set_focus_vadjustment(container, adjustment) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: container
  type(c_ptr), value :: adjustment
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkAdjustment *gtk_container_get_focus_vadjustment (GtkContainer *container);
function gtk_container_get_focus_vadjustment(container) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_container_get_focus_vadjustment
  type(c_ptr), value :: container
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_container_set_focus_hadjustment (GtkContainer *container, GtkAdjustment *adjustment);
subroutine gtk_container_set_focus_hadjustment(container, adjustment) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: container
  type(c_ptr), value :: adjustment
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkAdjustment *gtk_container_get_focus_hadjustment (GtkContainer *container);
function gtk_container_get_focus_hadjustment(container) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_container_get_focus_hadjustment
  type(c_ptr), value :: container
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_container_child_type (GtkContainer *container);
function gtk_container_child_type(container) bind(c)
  use iso_c_binding, only: c_size_t, c_ptr
  integer(c_size_t) :: gtk_container_child_type
  type(c_ptr), value :: container
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_container_forall (GtkContainer *container, GtkCallback callback, gpointer callback_data);
subroutine gtk_container_forall(container, callback, callback_data) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: container
  type(c_funptr), value :: callback
  type(c_ptr), value :: callback_data
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_gesture_get_type (void) G_GNUC_CONST;
function gtk_gesture_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_gesture_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GdkDevice * gtk_gesture_get_device (GtkGesture *gesture);
function gtk_gesture_get_device(gesture) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_gesture_get_device
  type(c_ptr), value :: gesture
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_gesture_set_state (GtkGesture *gesture, GtkEventSequenceState state);
function gtk_gesture_set_state(gesture, state) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gesture_set_state
  type(c_ptr), value :: gesture
  integer(c_int), value :: state
end function

! 
!GtkEventSequenceState gtk_gesture_get_sequence_state (GtkGesture *gesture, GdkEventSequence *sequence);
function gtk_gesture_get_sequence_state(gesture, sequence) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gesture_get_sequence_state
  type(c_ptr), value :: gesture
  type(c_ptr), value :: sequence
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_gesture_set_sequence_state (GtkGesture *gesture, GdkEventSequence *sequence, GtkEventSequenceState state);
function gtk_gesture_set_sequence_state(gesture, sequence, state) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gesture_set_sequence_state
  type(c_ptr), value :: gesture
  type(c_ptr), value :: sequence
  integer(c_int), value :: state
end function

! GDK_AVAILABLE_IN_ALL
!GList * gtk_gesture_get_sequences (GtkGesture *gesture);
function gtk_gesture_get_sequences(gesture) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_gesture_get_sequences
  type(c_ptr), value :: gesture
end function

! GDK_AVAILABLE_IN_ALL
!GdkEventSequence * gtk_gesture_get_last_updated_sequence (GtkGesture *gesture);
function gtk_gesture_get_last_updated_sequence(gesture) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_gesture_get_last_updated_sequence
  type(c_ptr), value :: gesture
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_gesture_handles_sequence (GtkGesture *gesture, GdkEventSequence *sequence);
function gtk_gesture_handles_sequence(gesture, sequence) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gesture_handles_sequence
  type(c_ptr), value :: gesture
  type(c_ptr), value :: sequence
end function

! 
!GdkEvent * gtk_gesture_get_last_event (GtkGesture *gesture, GdkEventSequence *sequence);
function gtk_gesture_get_last_event(gesture, sequence) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_gesture_get_last_event
  type(c_ptr), value :: gesture
  type(c_ptr), value :: sequence
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_gesture_get_point (GtkGesture *gesture, GdkEventSequence *sequence, gdouble *x, gdouble *y);
function gtk_gesture_get_point(gesture, sequence, x, y) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gesture_get_point
  type(c_ptr), value :: gesture
  type(c_ptr), value :: sequence
  type(c_ptr), value :: x
  type(c_ptr), value :: y
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_gesture_get_bounding_box (GtkGesture *gesture, GdkRectangle *rect);
function gtk_gesture_get_bounding_box(gesture, rect) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gesture_get_bounding_box
  type(c_ptr), value :: gesture
  type(c_ptr), value :: rect
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_gesture_get_bounding_box_center (GtkGesture *gesture, gdouble *x, gdouble *y);
function gtk_gesture_get_bounding_box_center(gesture, x, y) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gesture_get_bounding_box_center
  type(c_ptr), value :: gesture
  type(c_ptr), value :: x
  type(c_ptr), value :: y
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_gesture_is_active (GtkGesture *gesture);
function gtk_gesture_is_active(gesture) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gesture_is_active
  type(c_ptr), value :: gesture
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_gesture_is_recognized (GtkGesture *gesture);
function gtk_gesture_is_recognized(gesture) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gesture_is_recognized
  type(c_ptr), value :: gesture
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_gesture_group (GtkGesture *group_gesture, GtkGesture *gesture);
subroutine gtk_gesture_group(group_gesture, gesture) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: group_gesture
  type(c_ptr), value :: gesture
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_gesture_ungroup (GtkGesture *gesture);
subroutine gtk_gesture_ungroup(gesture) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: gesture
end subroutine

! GDK_AVAILABLE_IN_ALL
!GList * gtk_gesture_get_group (GtkGesture *gesture);
function gtk_gesture_get_group(gesture) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_gesture_get_group
  type(c_ptr), value :: gesture
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_gesture_is_grouped_with (GtkGesture *gesture, GtkGesture *other);
function gtk_gesture_is_grouped_with(gesture, other) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gesture_is_grouped_with
  type(c_ptr), value :: gesture
  type(c_ptr), value :: other
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_search_entry_get_type (void) G_GNUC_CONST;
function gtk_search_entry_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_search_entry_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_search_entry_new (void);
function gtk_search_entry_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_search_entry_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_search_entry_set_key_capture_widget (GtkSearchEntry *entry, GtkWidget *widget);
subroutine gtk_search_entry_set_key_capture_widget(entry, widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: entry
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_search_entry_get_key_capture_widget (GtkSearchEntry *entry);
function gtk_search_entry_get_key_capture_widget(entry) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_search_entry_get_key_capture_widget
  type(c_ptr), value :: entry
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_orientable_get_type (void) G_GNUC_CONST;
function gtk_orientable_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_orientable_get_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_orientable_set_orientation (GtkOrientable *orientable, GtkOrientation orientation);
subroutine gtk_orientable_set_orientation(orientable, orientation) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: orientable
  integer(c_int), value :: orientation
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkOrientation gtk_orientable_get_orientation (GtkOrientable *orientable);
function gtk_orientable_get_orientation(orientable) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_orientable_get_orientation
  type(c_ptr), value :: orientable
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_popover_menu_get_type (void) G_GNUC_CONST;
function gtk_popover_menu_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_popover_menu_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_popover_menu_new_from_model (GMenuModel *model);
function gtk_popover_menu_new_from_model(model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_popover_menu_new_from_model
  type(c_ptr), value :: model
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_popover_menu_new_from_model_full (GMenuModel *model, GtkPopoverMenuFlags flags);
function gtk_popover_menu_new_from_model_full(model, flags) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_popover_menu_new_from_model_full
  type(c_ptr), value :: model
  integer(c_int), value :: flags
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_popover_menu_set_menu_model (GtkPopoverMenu *popover, GMenuModel *model);
subroutine gtk_popover_menu_set_menu_model(popover, model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: popover
  type(c_ptr), value :: model
end subroutine

! GDK_AVAILABLE_IN_ALL
!GMenuModel *gtk_popover_menu_get_menu_model (GtkPopoverMenu *popover);
function gtk_popover_menu_get_menu_model(popover) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_popover_menu_get_menu_model
  type(c_ptr), value :: popover
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_drop_target_get_type (void) G_GNUC_CONST;
function gtk_drop_target_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_drop_target_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkDropTarget * gtk_drop_target_new (GType type, GdkDragAction actions);
function gtk_drop_target_new(type, actions) bind(c)
  use iso_c_binding, only: c_ptr, c_size_t, c_int
  type(c_ptr) :: gtk_drop_target_new
  integer(c_size_t), value :: type
  integer(c_int), value :: actions
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_drop_target_set_gtypes (GtkDropTarget *self, GType *types, gsize n_types);
subroutine gtk_drop_target_set_gtypes(self, types, n_types) bind(c)
  use iso_c_binding, only: c_ptr, c_size_t
  type(c_ptr), value :: self
  type(c_ptr), value :: types
  integer(c_size_t), value :: n_types
end subroutine

! GDK_AVAILABLE_IN_ALL
!const GType * gtk_drop_target_get_gtypes (GtkDropTarget *self, gsize *n_types);
function gtk_drop_target_get_gtypes(self, n_types) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_drop_target_get_gtypes
  type(c_ptr), value :: self
  type(c_ptr), value :: n_types
end function

! GDK_AVAILABLE_IN_ALL
!GdkContentFormats * gtk_drop_target_get_formats (GtkDropTarget *self);
function gtk_drop_target_get_formats(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_drop_target_get_formats
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_drop_target_set_actions (GtkDropTarget *self, GdkDragAction actions);
subroutine gtk_drop_target_set_actions(self, actions) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: actions
end subroutine

! GDK_AVAILABLE_IN_ALL
!GdkDragAction gtk_drop_target_get_actions (GtkDropTarget *self);
function gtk_drop_target_get_actions(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_drop_target_get_actions
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_drop_target_set_preload (GtkDropTarget *self, gboolean preload);
subroutine gtk_drop_target_set_preload(self, preload) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: preload
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_drop_target_get_preload (GtkDropTarget *self);
function gtk_drop_target_get_preload(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_drop_target_get_preload
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GdkDrop * gtk_drop_target_get_drop (GtkDropTarget *self);
function gtk_drop_target_get_drop(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_drop_target_get_drop
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!const GValue * gtk_drop_target_get_value (GtkDropTarget *self);
function gtk_drop_target_get_value(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_drop_target_get_value
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_drop_target_reject (GtkDropTarget *self);
subroutine gtk_drop_target_reject(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_list_store_get_type (void) G_GNUC_CONST;
function gtk_list_store_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_list_store_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkListStore *gtk_list_store_newv (gint n_columns, GType *types);
function gtk_list_store_newv(n_columns, types) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_list_store_newv
  integer(c_int), value :: n_columns
  type(c_ptr), value :: types
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_list_store_set_column_types (GtkListStore *list_store, gint n_columns, GType *types);
subroutine gtk_list_store_set_column_types(list_store, n_columns, types)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: list_store
  integer(c_int), value :: n_columns
  type(c_ptr), value :: types
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_store_set_value (GtkListStore *list_store, GtkTreeIter *iter, gint column, GValue *value);
subroutine gtk_list_store_set_value(list_store, iter, column, value) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: list_store
  type(c_ptr), value :: iter
  integer(c_int), value :: column
  type(c_ptr), value :: value
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_store_set_valuesv (GtkListStore *list_store, GtkTreeIter *iter, gint *columns, GValue *values, gint n_values);
subroutine gtk_list_store_set_valuesv(list_store, iter, columns, values,&
& n_values) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: list_store
  type(c_ptr), value :: iter
  type(c_ptr), value :: columns
  type(c_ptr), value :: values
  integer(c_int), value :: n_values
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_store_set_valist (GtkListStore *list_store, GtkTreeIter *iter, va_list var_args);
subroutine gtk_list_store_set_valist(list_store, iter, var_args) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: list_store
  type(c_ptr), value :: iter
  type(c_ptr), value :: var_args
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_list_store_remove (GtkListStore *list_store, GtkTreeIter *iter);
function gtk_list_store_remove(list_store, iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_list_store_remove
  type(c_ptr), value :: list_store
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_list_store_insert (GtkListStore *list_store, GtkTreeIter *iter, gint position);
subroutine gtk_list_store_insert(list_store, iter, position) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: list_store
  type(c_ptr), value :: iter
  integer(c_int), value :: position
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_store_insert_before (GtkListStore *list_store, GtkTreeIter *iter, GtkTreeIter *sibling);
subroutine gtk_list_store_insert_before(list_store, iter, sibling) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: list_store
  type(c_ptr), value :: iter
  type(c_ptr), value :: sibling
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_store_insert_after (GtkListStore *list_store, GtkTreeIter *iter, GtkTreeIter *sibling);
subroutine gtk_list_store_insert_after(list_store, iter, sibling) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: list_store
  type(c_ptr), value :: iter
  type(c_ptr), value :: sibling
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_store_insert_with_valuesv (GtkListStore *list_store, GtkTreeIter *iter, gint position, gint *columns, GValue *values, gint n_values);
subroutine gtk_list_store_insert_with_valuesv(list_store, iter, position,&
& columns, values, n_values) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: list_store
  type(c_ptr), value :: iter
  integer(c_int), value :: position
  type(c_ptr), value :: columns
  type(c_ptr), value :: values
  integer(c_int), value :: n_values
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_store_prepend (GtkListStore *list_store, GtkTreeIter *iter);
subroutine gtk_list_store_prepend(list_store, iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: list_store
  type(c_ptr), value :: iter
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_store_append (GtkListStore *list_store, GtkTreeIter *iter);
subroutine gtk_list_store_append(list_store, iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: list_store
  type(c_ptr), value :: iter
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_store_clear (GtkListStore *list_store);
subroutine gtk_list_store_clear(list_store) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: list_store
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_list_store_iter_is_valid (GtkListStore *list_store, GtkTreeIter *iter);
function gtk_list_store_iter_is_valid(list_store, iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_list_store_iter_is_valid
  type(c_ptr), value :: list_store
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_list_store_reorder (GtkListStore *store, gint *new_order);
subroutine gtk_list_store_reorder(store, new_order) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: store
  type(c_ptr), value :: new_order
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_store_swap (GtkListStore *store, GtkTreeIter *a, GtkTreeIter *b);
subroutine gtk_list_store_swap(store, a, b) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: store
  type(c_ptr), value :: a
  type(c_ptr), value :: b
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_store_move_after (GtkListStore *store, GtkTreeIter *iter, GtkTreeIter *position);
subroutine gtk_list_store_move_after(store, iter, position) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: store
  type(c_ptr), value :: iter
  type(c_ptr), value :: position
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_store_move_before (GtkListStore *store, GtkTreeIter *iter, GtkTreeIter *position);
subroutine gtk_list_store_move_before(store, iter, position) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: store
  type(c_ptr), value :: iter
  type(c_ptr), value :: position
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_event_controller_motion_get_type (void) G_GNUC_CONST;
function gtk_event_controller_motion_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_event_controller_motion_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkEventController *gtk_event_controller_motion_new (void);
function gtk_event_controller_motion_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_event_controller_motion_new
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_event_controller_motion_contains_pointer (GtkEventControllerMotion *self);
function gtk_event_controller_motion_contains_pointer(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_event_controller_motion_contains_pointer
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_event_controller_motion_is_pointer (GtkEventControllerMotion *self);
function gtk_event_controller_motion_is_pointer(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_event_controller_motion_is_pointer
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!const char *gtk_file_chooser_native_get_accept_label (GtkFileChooserNative *self);
function gtk_file_chooser_native_get_accept_label(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_file_chooser_native_get_accept_label
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_file_chooser_native_set_accept_label (GtkFileChooserNative *self, const char *accept_label);
subroutine gtk_file_chooser_native_set_accept_label(self, accept_label) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: accept_label
end subroutine

! GDK_AVAILABLE_IN_ALL
!const char *gtk_file_chooser_native_get_cancel_label (GtkFileChooserNative *self);
function gtk_file_chooser_native_get_cancel_label(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_file_chooser_native_get_cancel_label
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_file_chooser_native_set_cancel_label (GtkFileChooserNative *self, const char *cancel_label);
subroutine gtk_file_chooser_native_set_cancel_label(self, cancel_label) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: cancel_label
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_shortcut_action_print (GtkShortcutAction *self, GString *string);
subroutine gtk_shortcut_action_print(self, string) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: string
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_shortcut_action_activate (GtkShortcutAction *self, GtkShortcutActionFlags flags, GtkWidget *widget, GVariant *args);
function gtk_shortcut_action_activate(self, flags, widget, args) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_shortcut_action_activate
  type(c_ptr), value :: self
  integer(c_int), value :: flags
  type(c_ptr), value :: widget
  type(c_ptr), value :: args
end function

! GDK_AVAILABLE_IN_ALL
!const char * gtk_signal_action_get_signal_name (GtkSignalAction *self);
function gtk_signal_action_get_signal_name(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_signal_action_get_signal_name
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!const char * gtk_named_action_get_action_name (GtkNamedAction *self);
function gtk_named_action_get_action_name(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_named_action_get_action_name
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_spin_button_get_type (void) G_GNUC_CONST;
function gtk_spin_button_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_spin_button_get_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_spin_button_configure (GtkSpinButton *spin_button, GtkAdjustment *adjustment, gdouble climb_rate, guint digits);
subroutine gtk_spin_button_configure(spin_button, adjustment, climb_rate,&
& digits) bind(c)
  use iso_c_binding, only: c_ptr, c_double, c_int
  type(c_ptr), value :: spin_button
  type(c_ptr), value :: adjustment
  real(c_double), value :: climb_rate
  integer(c_int), value :: digits
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_spin_button_new (GtkAdjustment *adjustment, gdouble climb_rate, guint digits);
function gtk_spin_button_new(adjustment, climb_rate, digits) bind(c)
  use iso_c_binding, only: c_ptr, c_double, c_int
  type(c_ptr) :: gtk_spin_button_new
  type(c_ptr), value :: adjustment
  real(c_double), value :: climb_rate
  integer(c_int), value :: digits
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_spin_button_new_with_range (gdouble min, gdouble max, gdouble step);
function gtk_spin_button_new_with_range(min, max, step) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr) :: gtk_spin_button_new_with_range
  real(c_double), value :: min
  real(c_double), value :: max
  real(c_double), value :: step
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_spin_button_set_adjustment (GtkSpinButton *spin_button, GtkAdjustment *adjustment);
subroutine gtk_spin_button_set_adjustment(spin_button, adjustment) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: spin_button
  type(c_ptr), value :: adjustment
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkAdjustment* gtk_spin_button_get_adjustment (GtkSpinButton *spin_button);
function gtk_spin_button_get_adjustment(spin_button) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_spin_button_get_adjustment
  type(c_ptr), value :: spin_button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_spin_button_set_digits (GtkSpinButton *spin_button, guint digits);
subroutine gtk_spin_button_set_digits(spin_button, digits) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: spin_button
  integer(c_int), value :: digits
end subroutine

! GDK_AVAILABLE_IN_ALL
!guint gtk_spin_button_get_digits (GtkSpinButton *spin_button);
function gtk_spin_button_get_digits(spin_button) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_spin_button_get_digits
  type(c_ptr), value :: spin_button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_spin_button_set_increments (GtkSpinButton *spin_button, gdouble step, gdouble page);
subroutine gtk_spin_button_set_increments(spin_button, step, page) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: spin_button
  real(c_double), value :: step
  real(c_double), value :: page
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_spin_button_get_increments (GtkSpinButton *spin_button, gdouble *step, gdouble *page);
subroutine gtk_spin_button_get_increments(spin_button, step, page) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: spin_button
  type(c_ptr), value :: step
  type(c_ptr), value :: page
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_spin_button_set_range (GtkSpinButton *spin_button, gdouble min, gdouble max);
subroutine gtk_spin_button_set_range(spin_button, min, max) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: spin_button
  real(c_double), value :: min
  real(c_double), value :: max
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_spin_button_get_range (GtkSpinButton *spin_button, gdouble *min, gdouble *max);
subroutine gtk_spin_button_get_range(spin_button, min, max) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: spin_button
  type(c_ptr), value :: min
  type(c_ptr), value :: max
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_spin_button_get_value (GtkSpinButton *spin_button);
function gtk_spin_button_get_value(spin_button) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_spin_button_get_value
  type(c_ptr), value :: spin_button
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_spin_button_get_value_as_int (GtkSpinButton *spin_button);
function gtk_spin_button_get_value_as_int(spin_button) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_spin_button_get_value_as_int
  type(c_ptr), value :: spin_button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_spin_button_set_value (GtkSpinButton *spin_button, gdouble value);
subroutine gtk_spin_button_set_value(spin_button, value) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: spin_button
  real(c_double), value :: value
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_spin_button_set_update_policy (GtkSpinButton *spin_button, GtkSpinButtonUpdatePolicy policy);
subroutine gtk_spin_button_set_update_policy(spin_button, policy) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: spin_button
  integer(c_int), value :: policy
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkSpinButtonUpdatePolicy gtk_spin_button_get_update_policy (GtkSpinButton *spin_button);
function gtk_spin_button_get_update_policy(spin_button) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_spin_button_get_update_policy
  type(c_ptr), value :: spin_button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_spin_button_set_numeric (GtkSpinButton *spin_button, gboolean numeric);
subroutine gtk_spin_button_set_numeric(spin_button, numeric) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: spin_button
  integer(c_int), value :: numeric
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_spin_button_get_numeric (GtkSpinButton *spin_button);
function gtk_spin_button_get_numeric(spin_button) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_spin_button_get_numeric
  type(c_ptr), value :: spin_button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_spin_button_spin (GtkSpinButton *spin_button, GtkSpinType direction, gdouble increment);
subroutine gtk_spin_button_spin(spin_button, direction, increment) bind(c)
  use iso_c_binding, only: c_ptr, c_int, c_double
  type(c_ptr), value :: spin_button
  integer(c_int), value :: direction
  real(c_double), value :: increment
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_spin_button_set_wrap (GtkSpinButton *spin_button, gboolean wrap);
subroutine gtk_spin_button_set_wrap(spin_button, wrap) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: spin_button
  integer(c_int), value :: wrap
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_spin_button_get_wrap (GtkSpinButton *spin_button);
function gtk_spin_button_get_wrap(spin_button) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_spin_button_get_wrap
  type(c_ptr), value :: spin_button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_spin_button_set_snap_to_ticks (GtkSpinButton *spin_button, gboolean snap_to_ticks);
subroutine gtk_spin_button_set_snap_to_ticks(spin_button, snap_to_ticks)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: spin_button
  integer(c_int), value :: snap_to_ticks
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_spin_button_get_snap_to_ticks (GtkSpinButton *spin_button);
function gtk_spin_button_get_snap_to_ticks(spin_button) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_spin_button_get_snap_to_ticks
  type(c_ptr), value :: spin_button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_spin_button_update (GtkSpinButton *spin_button);
subroutine gtk_spin_button_update(spin_button) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: spin_button
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_picture_new_for_paintable (GdkPaintable *paintable);
function gtk_picture_new_for_paintable(paintable) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_picture_new_for_paintable
  type(c_ptr), value :: paintable
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_picture_new_for_pixbuf (GdkPixbuf *pixbuf);
function gtk_picture_new_for_pixbuf(pixbuf) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_picture_new_for_pixbuf
  type(c_ptr), value :: pixbuf
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_picture_new_for_file (GFile *file);
function gtk_picture_new_for_file(file) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_picture_new_for_file
  type(c_ptr), value :: file
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_picture_new_for_filename (const gchar *filename);
function gtk_picture_new_for_filename(filename) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_picture_new_for_filename
  character(kind=c_char), dimension(*) :: filename
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_picture_new_for_resource (const gchar *resource_path);
function gtk_picture_new_for_resource(resource_path) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_picture_new_for_resource
  character(kind=c_char), dimension(*) :: resource_path
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_picture_set_paintable (GtkPicture *self, GdkPaintable *paintable);
subroutine gtk_picture_set_paintable(self, paintable) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: paintable
end subroutine

! GDK_AVAILABLE_IN_ALL
!GdkPaintable * gtk_picture_get_paintable (GtkPicture *self);
function gtk_picture_get_paintable(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_picture_get_paintable
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_picture_set_file (GtkPicture *self, GFile *file);
subroutine gtk_picture_set_file(self, file) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: file
end subroutine

! GDK_AVAILABLE_IN_ALL
!GFile * gtk_picture_get_file (GtkPicture *self);
function gtk_picture_get_file(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_picture_get_file
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_picture_set_filename (GtkPicture *self, const gchar *filename);
subroutine gtk_picture_set_filename(self, filename) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: filename
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_picture_set_resource (GtkPicture *self, const gchar *resource_path);
subroutine gtk_picture_set_resource(self, resource_path) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: resource_path
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_picture_set_pixbuf (GtkPicture *self, GdkPixbuf *pixbuf);
subroutine gtk_picture_set_pixbuf(self, pixbuf) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: pixbuf
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_picture_set_keep_aspect_ratio (GtkPicture *self, gboolean keep_aspect_ratio);
subroutine gtk_picture_set_keep_aspect_ratio(self, keep_aspect_ratio) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: keep_aspect_ratio
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_picture_get_keep_aspect_ratio (GtkPicture *self);
function gtk_picture_get_keep_aspect_ratio(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_picture_get_keep_aspect_ratio
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_picture_set_can_shrink (GtkPicture *self, gboolean can_shrink);
subroutine gtk_picture_set_can_shrink(self, can_shrink) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: can_shrink
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_picture_get_can_shrink (GtkPicture *self);
function gtk_picture_get_can_shrink(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_picture_get_can_shrink
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_picture_set_alternative_text (GtkPicture *self, const char *alternative_text);
subroutine gtk_picture_set_alternative_text(self, alternative_text) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: alternative_text
end subroutine

! GDK_AVAILABLE_IN_ALL
!const char * gtk_picture_get_alternative_text (GtkPicture *self);
function gtk_picture_get_alternative_text(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_picture_get_alternative_text
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_cell_renderer_text_get_type (void) G_GNUC_CONST;
function gtk_cell_renderer_text_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_cell_renderer_text_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkCellRenderer *gtk_cell_renderer_text_new (void);
function gtk_cell_renderer_text_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_renderer_text_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_renderer_text_set_fixed_height_from_font (GtkCellRendererText *renderer, gint number_of_rows);
subroutine gtk_cell_renderer_text_set_fixed_height_from_font(renderer,&
& number_of_rows) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: renderer
  integer(c_int), value :: number_of_rows
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_grid_layout_set_row_homogeneous (GtkGridLayout *grid, gboolean homogeneous);
subroutine gtk_grid_layout_set_row_homogeneous(grid, homogeneous) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: grid
  integer(c_int), value :: homogeneous
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_grid_layout_get_row_homogeneous (GtkGridLayout *grid);
function gtk_grid_layout_get_row_homogeneous(grid) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_grid_layout_get_row_homogeneous
  type(c_ptr), value :: grid
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_grid_layout_set_row_spacing (GtkGridLayout *grid, guint spacing);
subroutine gtk_grid_layout_set_row_spacing(grid, spacing) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: grid
  integer(c_int), value :: spacing
end subroutine

! GDK_AVAILABLE_IN_ALL
!guint gtk_grid_layout_get_row_spacing (GtkGridLayout *grid);
function gtk_grid_layout_get_row_spacing(grid) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_grid_layout_get_row_spacing
  type(c_ptr), value :: grid
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_grid_layout_set_column_homogeneous (GtkGridLayout *grid, gboolean homogeneous);
subroutine gtk_grid_layout_set_column_homogeneous(grid, homogeneous) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: grid
  integer(c_int), value :: homogeneous
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_grid_layout_get_column_homogeneous (GtkGridLayout *grid);
function gtk_grid_layout_get_column_homogeneous(grid) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_grid_layout_get_column_homogeneous
  type(c_ptr), value :: grid
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_grid_layout_set_column_spacing (GtkGridLayout *grid, guint spacing);
subroutine gtk_grid_layout_set_column_spacing(grid, spacing) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: grid
  integer(c_int), value :: spacing
end subroutine

! GDK_AVAILABLE_IN_ALL
!guint gtk_grid_layout_get_column_spacing (GtkGridLayout *grid);
function gtk_grid_layout_get_column_spacing(grid) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_grid_layout_get_column_spacing
  type(c_ptr), value :: grid
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_grid_layout_set_row_baseline_position (GtkGridLayout *grid, int row, GtkBaselinePosition pos);
subroutine gtk_grid_layout_set_row_baseline_position(grid, row, pos) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: grid
  integer(c_int), value :: row
  integer(c_int), value :: pos
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkBaselinePosition gtk_grid_layout_get_row_baseline_position (GtkGridLayout *grid, int row);
function gtk_grid_layout_get_row_baseline_position(grid, row) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_grid_layout_get_row_baseline_position
  type(c_ptr), value :: grid
  integer(c_int), value :: row
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_grid_layout_set_baseline_row (GtkGridLayout *grid, int row);
subroutine gtk_grid_layout_set_baseline_row(grid, row) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: grid
  integer(c_int), value :: row
end subroutine

! GDK_AVAILABLE_IN_ALL
!int gtk_grid_layout_get_baseline_row (GtkGridLayout *grid);
function gtk_grid_layout_get_baseline_row(grid) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_grid_layout_get_baseline_row
  type(c_ptr), value :: grid
end function

! GDK_AVAILABLE_IN_ALL
!int gtk_grid_layout_child_get_top_attach (GtkGridLayoutChild *child);
function gtk_grid_layout_child_get_top_attach(child) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_grid_layout_child_get_top_attach
  type(c_ptr), value :: child
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_grid_layout_child_set_left_attach (GtkGridLayoutChild *child, int attach);
subroutine gtk_grid_layout_child_set_left_attach(child, attach) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: child
  integer(c_int), value :: attach
end subroutine

! GDK_AVAILABLE_IN_ALL
!int gtk_grid_layout_child_get_left_attach (GtkGridLayoutChild *child);
function gtk_grid_layout_child_get_left_attach(child) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_grid_layout_child_get_left_attach
  type(c_ptr), value :: child
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_grid_layout_child_set_column_span (GtkGridLayoutChild *child, int span);
subroutine gtk_grid_layout_child_set_column_span(child, span) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: child
  integer(c_int), value :: span
end subroutine

! GDK_AVAILABLE_IN_ALL
!int gtk_grid_layout_child_get_column_span (GtkGridLayoutChild *child);
function gtk_grid_layout_child_get_column_span(child) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_grid_layout_child_get_column_span
  type(c_ptr), value :: child
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_grid_layout_child_set_row_span (GtkGridLayoutChild *child, int span);
subroutine gtk_grid_layout_child_set_row_span(child, span) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: child
  integer(c_int), value :: span
end subroutine

! GDK_AVAILABLE_IN_ALL
!int gtk_grid_layout_child_get_row_span (GtkGridLayoutChild *child);
function gtk_grid_layout_child_get_row_span(child) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_grid_layout_child_get_row_span
  type(c_ptr), value :: child
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_bin_get_type (void) G_GNUC_CONST;
function gtk_bin_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_bin_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_bin_get_child (GtkBin *bin);
function gtk_bin_get_child(bin) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_bin_get_child
  type(c_ptr), value :: bin
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_tree_model_sort_get_type (void) G_GNUC_CONST;
function gtk_tree_model_sort_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_tree_model_sort_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreeModel *gtk_tree_model_sort_new_with_model (GtkTreeModel *child_model);
function gtk_tree_model_sort_new_with_model(child_model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_model_sort_new_with_model
  type(c_ptr), value :: child_model
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreeModel *gtk_tree_model_sort_get_model (GtkTreeModelSort *tree_model);
function gtk_tree_model_sort_get_model(tree_model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_model_sort_get_model
  type(c_ptr), value :: tree_model
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreePath *gtk_tree_model_sort_convert_child_path_to_path (GtkTreeModelSort *tree_model_sort, GtkTreePath *child_path);
function gtk_tree_model_sort_convert_child_path_to_path(tree_model_sort,&
& child_path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_model_sort_convert_child_path_to_path
  type(c_ptr), value :: tree_model_sort
  type(c_ptr), value :: child_path
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_model_sort_convert_child_iter_to_iter (GtkTreeModelSort *tree_model_sort, GtkTreeIter *sort_iter, GtkTreeIter *child_iter);
function gtk_tree_model_sort_convert_child_iter_to_iter(tree_model_sort,&
& sort_iter, child_iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_model_sort_convert_child_iter_to_iter
  type(c_ptr), value :: tree_model_sort
  type(c_ptr), value :: sort_iter
  type(c_ptr), value :: child_iter
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreePath *gtk_tree_model_sort_convert_path_to_child_path (GtkTreeModelSort *tree_model_sort, GtkTreePath *sorted_path);
function gtk_tree_model_sort_convert_path_to_child_path(tree_model_sort,&
& sorted_path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_model_sort_convert_path_to_child_path
  type(c_ptr), value :: tree_model_sort
  type(c_ptr), value :: sorted_path
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_model_sort_convert_iter_to_child_iter (GtkTreeModelSort *tree_model_sort, GtkTreeIter *child_iter, GtkTreeIter *sorted_iter);
subroutine gtk_tree_model_sort_convert_iter_to_child_iter(tree_model_sort,&
& child_iter, sorted_iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_model_sort
  type(c_ptr), value :: child_iter
  type(c_ptr), value :: sorted_iter
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_model_sort_reset_default_sort_func (GtkTreeModelSort *tree_model_sort);
subroutine gtk_tree_model_sort_reset_default_sort_func(tree_model_sort) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_model_sort
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_model_sort_clear_cache (GtkTreeModelSort *tree_model_sort);
subroutine gtk_tree_model_sort_clear_cache(tree_model_sort) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_model_sort
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_model_sort_iter_is_valid (GtkTreeModelSort *tree_model_sort, GtkTreeIter *iter);
function gtk_tree_model_sort_iter_is_valid(tree_model_sort, iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_model_sort_iter_is_valid
  type(c_ptr), value :: tree_model_sort
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_gl_area_get_type (void) G_GNUC_CONST;
function gtk_gl_area_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_gl_area_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_gl_area_new (void);
function gtk_gl_area_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_gl_area_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_gl_area_set_use_es (GtkGLArea *area, gboolean use_es);
subroutine gtk_gl_area_set_use_es(area, use_es) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: area
  integer(c_int), value :: use_es
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_gl_area_get_use_es (GtkGLArea *area);
function gtk_gl_area_get_use_es(area) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gl_area_get_use_es
  type(c_ptr), value :: area
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_gl_area_set_required_version (GtkGLArea *area, gint major, gint minor);
subroutine gtk_gl_area_set_required_version(area, major, minor) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: area
  integer(c_int), value :: major
  integer(c_int), value :: minor
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_gl_area_get_required_version (GtkGLArea *area, gint *major, gint *minor);
subroutine gtk_gl_area_get_required_version(area, major, minor) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: area
  type(c_ptr), value :: major
  type(c_ptr), value :: minor
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_gl_area_get_has_depth_buffer (GtkGLArea *area);
function gtk_gl_area_get_has_depth_buffer(area) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gl_area_get_has_depth_buffer
  type(c_ptr), value :: area
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_gl_area_set_has_depth_buffer (GtkGLArea *area, gboolean has_depth_buffer);
subroutine gtk_gl_area_set_has_depth_buffer(area, has_depth_buffer) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: area
  integer(c_int), value :: has_depth_buffer
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_gl_area_get_has_stencil_buffer (GtkGLArea *area);
function gtk_gl_area_get_has_stencil_buffer(area) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gl_area_get_has_stencil_buffer
  type(c_ptr), value :: area
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_gl_area_set_has_stencil_buffer (GtkGLArea *area, gboolean has_stencil_buffer);
subroutine gtk_gl_area_set_has_stencil_buffer(area, has_stencil_buffer) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: area
  integer(c_int), value :: has_stencil_buffer
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_gl_area_get_auto_render (GtkGLArea *area);
function gtk_gl_area_get_auto_render(area) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gl_area_get_auto_render
  type(c_ptr), value :: area
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_gl_area_set_auto_render (GtkGLArea *area, gboolean auto_render);
subroutine gtk_gl_area_set_auto_render(area, auto_render) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: area
  integer(c_int), value :: auto_render
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_gl_area_queue_render (GtkGLArea *area);
subroutine gtk_gl_area_queue_render(area) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: area
end subroutine

! GDK_AVAILABLE_IN_ALL
!GdkGLContext * gtk_gl_area_get_context (GtkGLArea *area);
function gtk_gl_area_get_context(area) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_gl_area_get_context
  type(c_ptr), value :: area
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_gl_area_make_current (GtkGLArea *area);
subroutine gtk_gl_area_make_current(area) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: area
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_gl_area_attach_buffers (GtkGLArea *area);
subroutine gtk_gl_area_attach_buffers(area) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: area
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_gl_area_set_error (GtkGLArea *area, const GError *error);
subroutine gtk_gl_area_set_error(area, error) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: area
  type(c_ptr), value :: error
end subroutine

! GDK_AVAILABLE_IN_ALL
!GError * gtk_gl_area_get_error (GtkGLArea *area);
function gtk_gl_area_get_error(area) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_gl_area_get_error
  type(c_ptr), value :: area
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_center_box_get_type (void) G_GNUC_CONST;
function gtk_center_box_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_center_box_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_center_box_new (void);
function gtk_center_box_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_center_box_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_center_box_set_start_widget (GtkCenterBox *self, GtkWidget *child);
subroutine gtk_center_box_set_start_widget(self, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: child
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_center_box_set_center_widget (GtkCenterBox *self, GtkWidget *child);
subroutine gtk_center_box_set_center_widget(self, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: child
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_center_box_set_end_widget (GtkCenterBox *self, GtkWidget *child);
subroutine gtk_center_box_set_end_widget(self, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: child
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_center_box_get_start_widget (GtkCenterBox *self);
function gtk_center_box_get_start_widget(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_center_box_get_start_widget
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_center_box_get_center_widget (GtkCenterBox *self);
function gtk_center_box_get_center_widget(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_center_box_get_center_widget
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_center_box_get_end_widget (GtkCenterBox *self);
function gtk_center_box_get_end_widget(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_center_box_get_end_widget
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_center_box_set_baseline_position (GtkCenterBox *self, GtkBaselinePosition position);
subroutine gtk_center_box_set_baseline_position(self, position) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: position
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkBaselinePosition gtk_center_box_get_baseline_position (GtkCenterBox *self);
function gtk_center_box_get_baseline_position(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_center_box_get_baseline_position
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_gesture_rotate_get_type (void) G_GNUC_CONST;
function gtk_gesture_rotate_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_gesture_rotate_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkGesture * gtk_gesture_rotate_new (void);
function gtk_gesture_rotate_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_gesture_rotate_new
end function

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_gesture_rotate_get_angle_delta (GtkGestureRotate *gesture);
function gtk_gesture_rotate_get_angle_delta(gesture) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_gesture_rotate_get_angle_delta
  type(c_ptr), value :: gesture
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_css_provider_get_type (void) G_GNUC_CONST;
function gtk_css_provider_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_css_provider_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkCssProvider * gtk_css_provider_new (void);
function gtk_css_provider_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_css_provider_new
end function

! GDK_AVAILABLE_IN_ALL
!char * gtk_css_provider_to_string (GtkCssProvider *provider);
function gtk_css_provider_to_string(provider) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_css_provider_to_string
  type(c_ptr), value :: provider
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_css_provider_load_from_data (GtkCssProvider *css_provider, const gchar *data, gssize length);
subroutine gtk_css_provider_load_from_data(css_provider, data, length) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_size_t
  type(c_ptr), value :: css_provider
  character(kind=c_char), dimension(*) :: data
  integer(c_size_t), value :: length
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_css_provider_load_from_file (GtkCssProvider *css_provider, GFile *file);
subroutine gtk_css_provider_load_from_file(css_provider, file) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: css_provider
  type(c_ptr), value :: file
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_css_provider_load_from_path (GtkCssProvider *css_provider, const gchar *path);
subroutine gtk_css_provider_load_from_path(css_provider, path) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: css_provider
  character(kind=c_char), dimension(*) :: path
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_css_provider_load_from_resource (GtkCssProvider *css_provider, const gchar *resource_path);
subroutine gtk_css_provider_load_from_resource(css_provider, resource_path)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: css_provider
  character(kind=c_char), dimension(*) :: resource_path
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_css_provider_load_named (GtkCssProvider *provider, const char *name, const char *variant);
subroutine gtk_css_provider_load_named(provider, name, variant) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: provider
  character(kind=c_char), dimension(*) :: name
  character(kind=c_char), dimension(*) :: variant
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_cell_view_get_type (void) G_GNUC_CONST;
function gtk_cell_view_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_cell_view_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_cell_view_new (void);
function gtk_cell_view_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_view_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_cell_view_new_with_context (GtkCellArea *area, GtkCellAreaContext *context);
function gtk_cell_view_new_with_context(area, context) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_view_new_with_context
  type(c_ptr), value :: area
  type(c_ptr), value :: context
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_cell_view_new_with_text (const gchar *text);
function gtk_cell_view_new_with_text(text) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_cell_view_new_with_text
  character(kind=c_char), dimension(*) :: text
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_cell_view_new_with_markup (const gchar *markup);
function gtk_cell_view_new_with_markup(markup) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_cell_view_new_with_markup
  character(kind=c_char), dimension(*) :: markup
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_cell_view_new_with_texture (GdkTexture *texture);
function gtk_cell_view_new_with_texture(texture) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_view_new_with_texture
  type(c_ptr), value :: texture
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_view_set_model (GtkCellView *cell_view, GtkTreeModel *model);
subroutine gtk_cell_view_set_model(cell_view, model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: cell_view
  type(c_ptr), value :: model
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkTreeModel *gtk_cell_view_get_model (GtkCellView *cell_view);
function gtk_cell_view_get_model(cell_view) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_view_get_model
  type(c_ptr), value :: cell_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_view_set_displayed_row (GtkCellView *cell_view, GtkTreePath *path);
subroutine gtk_cell_view_set_displayed_row(cell_view, path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: cell_view
  type(c_ptr), value :: path
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkTreePath *gtk_cell_view_get_displayed_row (GtkCellView *cell_view);
function gtk_cell_view_get_displayed_row(cell_view) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_view_get_displayed_row
  type(c_ptr), value :: cell_view
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_cell_view_get_draw_sensitive (GtkCellView *cell_view);
function gtk_cell_view_get_draw_sensitive(cell_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_cell_view_get_draw_sensitive
  type(c_ptr), value :: cell_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_view_set_draw_sensitive (GtkCellView *cell_view, gboolean draw_sensitive);
subroutine gtk_cell_view_set_draw_sensitive(cell_view, draw_sensitive) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: cell_view
  integer(c_int), value :: draw_sensitive
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_cell_view_get_fit_model (GtkCellView *cell_view);
function gtk_cell_view_get_fit_model(cell_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_cell_view_get_fit_model
  type(c_ptr), value :: cell_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_view_set_fit_model (GtkCellView *cell_view, gboolean fit_model);
subroutine gtk_cell_view_set_fit_model(cell_view, fit_model) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: cell_view
  integer(c_int), value :: fit_model
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_window_get_type (void) G_GNUC_CONST;
function gtk_window_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_window_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_window_new (void);
function gtk_window_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_window_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_window_set_title (GtkWindow *window, const gchar *title);
subroutine gtk_window_set_title(window, title) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: window
  character(kind=c_char), dimension(*) :: title
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_window_get_title (GtkWindow *window);
function gtk_window_get_title(window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_window_get_title
  type(c_ptr), value :: window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_window_set_startup_id (GtkWindow *window, const gchar *startup_id);
subroutine gtk_window_set_startup_id(window, startup_id) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: window
  character(kind=c_char), dimension(*) :: startup_id
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_window_set_focus (GtkWindow *window, GtkWidget *focus);
subroutine gtk_window_set_focus(window, focus) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: window
  type(c_ptr), value :: focus
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_window_get_focus (GtkWindow *window);
function gtk_window_get_focus(window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_window_get_focus
  type(c_ptr), value :: window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_window_set_default_widget (GtkWindow *window, GtkWidget *default_widget);
subroutine gtk_window_set_default_widget(window, default_widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: window
  type(c_ptr), value :: default_widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_window_get_default_widget (GtkWindow *window);
function gtk_window_get_default_widget(window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_window_get_default_widget
  type(c_ptr), value :: window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_window_set_transient_for (GtkWindow *window, GtkWindow *parent);
subroutine gtk_window_set_transient_for(window, parent) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: window
  type(c_ptr), value :: parent
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWindow *gtk_window_get_transient_for (GtkWindow *window);
function gtk_window_get_transient_for(window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_window_get_transient_for
  type(c_ptr), value :: window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_window_set_destroy_with_parent (GtkWindow *window, gboolean setting);
subroutine gtk_window_set_destroy_with_parent(window, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: window
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_window_get_destroy_with_parent (GtkWindow *window);
function gtk_window_get_destroy_with_parent(window) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_window_get_destroy_with_parent
  type(c_ptr), value :: window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_window_set_hide_on_close (GtkWindow *window, gboolean setting);
subroutine gtk_window_set_hide_on_close(window, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: window
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_window_get_hide_on_close (GtkWindow *window);
function gtk_window_get_hide_on_close(window) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_window_get_hide_on_close
  type(c_ptr), value :: window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_window_set_mnemonics_visible (GtkWindow *window, gboolean setting);
subroutine gtk_window_set_mnemonics_visible(window, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: window
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_window_get_mnemonics_visible (GtkWindow *window);
function gtk_window_get_mnemonics_visible(window) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_window_get_mnemonics_visible
  type(c_ptr), value :: window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_window_set_focus_visible (GtkWindow *window, gboolean setting);
subroutine gtk_window_set_focus_visible(window, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: window
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_window_get_focus_visible (GtkWindow *window);
function gtk_window_get_focus_visible(window) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_window_get_focus_visible
  type(c_ptr), value :: window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_window_set_resizable (GtkWindow *window, gboolean resizable);
subroutine gtk_window_set_resizable(window, resizable) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: window
  integer(c_int), value :: resizable
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_window_get_resizable (GtkWindow *window);
function gtk_window_get_resizable(window) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_window_get_resizable
  type(c_ptr), value :: window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_window_set_display (GtkWindow *window, GdkDisplay *display);
subroutine gtk_window_set_display(window, display) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: window
  type(c_ptr), value :: display
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_window_is_active (GtkWindow *window);
function gtk_window_is_active(window) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_window_is_active
  type(c_ptr), value :: window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_window_set_decorated (GtkWindow *window, gboolean setting);
subroutine gtk_window_set_decorated(window, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: window
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_window_get_decorated (GtkWindow *window);
function gtk_window_get_decorated(window) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_window_get_decorated
  type(c_ptr), value :: window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_window_set_deletable (GtkWindow *window, gboolean setting);
subroutine gtk_window_set_deletable(window, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: window
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_window_get_deletable (GtkWindow *window);
function gtk_window_get_deletable(window) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_window_get_deletable
  type(c_ptr), value :: window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_window_set_icon_name (GtkWindow *window, const gchar *name);
subroutine gtk_window_set_icon_name(window, name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: window
  character(kind=c_char), dimension(*) :: name
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_window_get_icon_name (GtkWindow *window);
function gtk_window_get_icon_name(window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_window_get_icon_name
  type(c_ptr), value :: window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_window_set_default_icon_name (const gchar *name);
subroutine gtk_window_set_default_icon_name(name) bind(c)
  use iso_c_binding, only: c_char
  character(kind=c_char), dimension(*) :: name
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_window_get_default_icon_name (void);
function gtk_window_get_default_icon_name() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_window_get_default_icon_name
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_window_set_auto_startup_notification (gboolean setting);
subroutine gtk_window_set_auto_startup_notification(setting) bind(c)
  use iso_c_binding, only: c_int
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_window_set_modal (GtkWindow *window, gboolean modal);
subroutine gtk_window_set_modal(window, modal) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: window
  integer(c_int), value :: modal
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_window_get_modal (GtkWindow *window);
function gtk_window_get_modal(window) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_window_get_modal
  type(c_ptr), value :: window
end function

! GDK_AVAILABLE_IN_ALL
!GListModel *gtk_window_get_toplevels (void);
function gtk_window_get_toplevels() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_window_get_toplevels
end function

! GDK_AVAILABLE_IN_ALL
!GList* gtk_window_list_toplevels (void);
function gtk_window_list_toplevels() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_window_list_toplevels
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_window_set_has_user_ref_count (GtkWindow *window, gboolean setting);
subroutine gtk_window_set_has_user_ref_count(window, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: window
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_window_present (GtkWindow *window);
subroutine gtk_window_present(window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: window
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_window_present_with_time (GtkWindow *window, guint32 timestamp);
subroutine gtk_window_present_with_time(window, timestamp) bind(c)
  use iso_c_binding, only: c_ptr, c_int32_t
  type(c_ptr), value :: window
  integer(c_int32_t), value :: timestamp
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_window_minimize (GtkWindow *window);
subroutine gtk_window_minimize(window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: window
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_window_unminimize (GtkWindow *window);
subroutine gtk_window_unminimize(window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: window
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_window_maximize (GtkWindow *window);
subroutine gtk_window_maximize(window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: window
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_window_unmaximize (GtkWindow *window);
subroutine gtk_window_unmaximize(window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: window
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_window_fullscreen (GtkWindow *window);
subroutine gtk_window_fullscreen(window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: window
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_window_unfullscreen (GtkWindow *window);
subroutine gtk_window_unfullscreen(window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: window
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_window_fullscreen_on_monitor (GtkWindow *window, GdkMonitor *monitor);
subroutine gtk_window_fullscreen_on_monitor(window, monitor) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: window
  type(c_ptr), value :: monitor
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_window_close (GtkWindow *window);
subroutine gtk_window_close(window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: window
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_window_set_default_size (GtkWindow *window, gint width, gint height);
subroutine gtk_window_set_default_size(window, width, height) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: window
  integer(c_int), value :: width
  integer(c_int), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_window_get_default_size (GtkWindow *window, gint *width, gint *height);
subroutine gtk_window_get_default_size(window, width, height) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: window
  type(c_ptr), value :: width
  type(c_ptr), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_window_resize (GtkWindow *window, gint width, gint height);
subroutine gtk_window_resize(window, width, height) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: window
  integer(c_int), value :: width
  integer(c_int), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_window_get_size (GtkWindow *window, gint *width, gint *height);
subroutine gtk_window_get_size(window, width, height) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: window
  type(c_ptr), value :: width
  type(c_ptr), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWindowGroup *gtk_window_get_group (GtkWindow *window);
function gtk_window_get_group(window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_window_get_group
  type(c_ptr), value :: window
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_window_has_group (GtkWindow *window);
function gtk_window_has_group(window) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_window_has_group
  type(c_ptr), value :: window
end function

! GDK_AVAILABLE_IN_ALL
!GtkApplication *gtk_window_get_application (GtkWindow *window);
function gtk_window_get_application(window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_window_get_application
  type(c_ptr), value :: window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_window_set_application (GtkWindow *window, GtkApplication *application);
subroutine gtk_window_set_application(window, application) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: window
  type(c_ptr), value :: application
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_window_set_titlebar (GtkWindow *window, GtkWidget *titlebar);
subroutine gtk_window_set_titlebar(window, titlebar) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: window
  type(c_ptr), value :: titlebar
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_window_get_titlebar (GtkWindow *window);
function gtk_window_get_titlebar(window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_window_get_titlebar
  type(c_ptr), value :: window
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_window_is_maximized (GtkWindow *window);
function gtk_window_is_maximized(window) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_window_is_maximized
  type(c_ptr), value :: window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_window_set_interactive_debugging (gboolean enable);
subroutine gtk_window_set_interactive_debugging(enable) bind(c)
  use iso_c_binding, only: c_int
  integer(c_int), value :: enable
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_cell_renderer_spin_get_type (void);
function gtk_cell_renderer_spin_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_cell_renderer_spin_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkCellRenderer *gtk_cell_renderer_spin_new (void);
function gtk_cell_renderer_spin_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_renderer_spin_new
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_show_uri_on_window (GtkWindow *parent, const char *uri, guint32 timestamp, GError **error);
function gtk_show_uri_on_window(parent, uri, timestamp, error) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char, c_int32_t
  integer(c_int) :: gtk_show_uri_on_window
  type(c_ptr), value :: parent
  character(kind=c_char), dimension(*) :: uri
  integer(c_int32_t), value :: timestamp
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_button_get_type (void) G_GNUC_CONST;
function gtk_button_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_button_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_button_new (void);
function gtk_button_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_button_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_button_new_with_label (const gchar *label);
function gtk_button_new_with_label(label) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_button_new_with_label
  character(kind=c_char), dimension(*) :: label
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_button_new_from_icon_name (const gchar *icon_name);
function gtk_button_new_from_icon_name(icon_name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_button_new_from_icon_name
  character(kind=c_char), dimension(*) :: icon_name
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_button_new_with_mnemonic (const gchar *label);
function gtk_button_new_with_mnemonic(label) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_button_new_with_mnemonic
  character(kind=c_char), dimension(*) :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_button_set_relief (GtkButton *button, GtkReliefStyle relief);
subroutine gtk_button_set_relief(button, relief) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: button
  integer(c_int), value :: relief
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkReliefStyle gtk_button_get_relief (GtkButton *button);
function gtk_button_get_relief(button) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_button_get_relief
  type(c_ptr), value :: button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_button_set_label (GtkButton *button, const gchar *label);
subroutine gtk_button_set_label(button, label) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: button
  character(kind=c_char), dimension(*) :: label
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_button_get_label (GtkButton *button);
function gtk_button_get_label(button) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_button_get_label
  type(c_ptr), value :: button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_button_set_use_underline (GtkButton *button, gboolean use_underline);
subroutine gtk_button_set_use_underline(button, use_underline) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: button
  integer(c_int), value :: use_underline
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_button_get_use_underline (GtkButton *button);
function gtk_button_get_use_underline(button) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_button_get_use_underline
  type(c_ptr), value :: button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_button_set_icon_name (GtkButton *button, const char *icon_name);
subroutine gtk_button_set_icon_name(button, icon_name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: button
  character(kind=c_char), dimension(*) :: icon_name
end subroutine

! GDK_AVAILABLE_IN_ALL
!const char * gtk_button_get_icon_name (GtkButton *button);
function gtk_button_get_icon_name(button) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_button_get_icon_name
  type(c_ptr), value :: button
end function

! GDK_AVAILABLE_IN_ALL
!guint gtk_get_debug_flags (void);
function gtk_get_debug_flags() bind(c)
  use iso_c_binding, only: c_int
  integer(c_int) :: gtk_get_debug_flags
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_set_debug_flags (guint flags);
subroutine gtk_set_debug_flags(flags) bind(c)
  use iso_c_binding, only: c_int
  integer(c_int), value :: flags
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_text_mark_get_type (void) G_GNUC_CONST;
function gtk_text_mark_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_text_mark_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkTextMark *gtk_text_mark_new (const gchar *name, gboolean left_gravity);
function gtk_text_mark_new(name, left_gravity) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int
  type(c_ptr) :: gtk_text_mark_new
  character(kind=c_char), dimension(*) :: name
  integer(c_int), value :: left_gravity
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_mark_set_visible (GtkTextMark *mark, gboolean setting);
subroutine gtk_text_mark_set_visible(mark, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: mark
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_mark_get_visible (GtkTextMark *mark);
function gtk_text_mark_get_visible(mark) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_mark_get_visible
  type(c_ptr), value :: mark
end function

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_text_mark_get_name (GtkTextMark *mark);
function gtk_text_mark_get_name(mark) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_mark_get_name
  type(c_ptr), value :: mark
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_mark_get_deleted (GtkTextMark *mark);
function gtk_text_mark_get_deleted(mark) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_mark_get_deleted
  type(c_ptr), value :: mark
end function

! GDK_AVAILABLE_IN_ALL
!GtkTextBuffer* gtk_text_mark_get_buffer (GtkTextMark *mark);
function gtk_text_mark_get_buffer(mark) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_mark_get_buffer
  type(c_ptr), value :: mark
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_mark_get_left_gravity (GtkTextMark *mark);
function gtk_text_mark_get_left_gravity(mark) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_mark_get_left_gravity
  type(c_ptr), value :: mark
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_statusbar_get_type (void) G_GNUC_CONST;
function gtk_statusbar_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_statusbar_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_statusbar_new (void);
function gtk_statusbar_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_statusbar_new
end function

! GDK_AVAILABLE_IN_ALL
!guint gtk_statusbar_get_context_id (GtkStatusbar *statusbar, const gchar *context_description);
function gtk_statusbar_get_context_id(statusbar, context_description) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_statusbar_get_context_id
  type(c_ptr), value :: statusbar
  character(kind=c_char), dimension(*) :: context_description
end function

! GDK_AVAILABLE_IN_ALL
!guint gtk_statusbar_push (GtkStatusbar *statusbar, guint context_id, const gchar *text);
function gtk_statusbar_push(statusbar, context_id, text) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_statusbar_push
  type(c_ptr), value :: statusbar
  integer(c_int), value :: context_id
  character(kind=c_char), dimension(*) :: text
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_statusbar_pop (GtkStatusbar *statusbar, guint context_id);
subroutine gtk_statusbar_pop(statusbar, context_id) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: statusbar
  integer(c_int), value :: context_id
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_statusbar_remove (GtkStatusbar *statusbar, guint context_id, guint message_id);
subroutine gtk_statusbar_remove(statusbar, context_id, message_id) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: statusbar
  integer(c_int), value :: context_id
  integer(c_int), value :: message_id
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_statusbar_remove_all (GtkStatusbar *statusbar, guint context_id);
subroutine gtk_statusbar_remove_all(statusbar, context_id) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: statusbar
  integer(c_int), value :: context_id
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_im_context_get_type (void) G_GNUC_CONST;
function gtk_im_context_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_im_context_get_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_im_context_set_client_widget (GtkIMContext *context, GtkWidget *widget);
subroutine gtk_im_context_set_client_widget(context, widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: context
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_im_context_get_preedit_string (GtkIMContext *context, gchar **str, PangoAttrList **attrs, gint *cursor_pos);
subroutine gtk_im_context_get_preedit_string(context, str, attrs, cursor_pos)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: context
  type(c_ptr), dimension(*) :: str
  type(c_ptr), value :: attrs
  type(c_ptr), value :: cursor_pos
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_im_context_filter_keypress (GtkIMContext *context, GdkEvent *event);
function gtk_im_context_filter_keypress(context, event) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_im_context_filter_keypress
  type(c_ptr), value :: context
  type(c_ptr), value :: event
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_im_context_focus_in (GtkIMContext *context);
subroutine gtk_im_context_focus_in(context) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: context
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_im_context_focus_out (GtkIMContext *context);
subroutine gtk_im_context_focus_out(context) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: context
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_im_context_reset (GtkIMContext *context);
subroutine gtk_im_context_reset(context) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: context
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_im_context_set_cursor_location (GtkIMContext *context, const GdkRectangle *area);
subroutine gtk_im_context_set_cursor_location(context, area) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: context
  type(c_ptr), value :: area
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_im_context_set_use_preedit (GtkIMContext *context, gboolean use_preedit);
subroutine gtk_im_context_set_use_preedit(context, use_preedit) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: context
  integer(c_int), value :: use_preedit
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_im_context_set_surrounding (GtkIMContext *context, const gchar *text, gint len, gint cursor_index);
subroutine gtk_im_context_set_surrounding(context, text, len, cursor_index)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int
  type(c_ptr), value :: context
  character(kind=c_char), dimension(*) :: text
  integer(c_int), value :: len
  integer(c_int), value :: cursor_index
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_im_context_get_surrounding (GtkIMContext *context, gchar **text, gint *cursor_index);
function gtk_im_context_get_surrounding(context, text, cursor_index) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_im_context_get_surrounding
  type(c_ptr), value :: context
  type(c_ptr), dimension(*) :: text
  type(c_ptr), value :: cursor_index
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_im_context_delete_surrounding (GtkIMContext *context, gint offset, gint n_chars);
function gtk_im_context_delete_surrounding(context, offset, n_chars) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_im_context_delete_surrounding
  type(c_ptr), value :: context
  integer(c_int), value :: offset
  integer(c_int), value :: n_chars
end function

! GDK_AVAILABLE_IN_ALL
!char * gtk_shortcut_trigger_to_string (GtkShortcutTrigger *self);
function gtk_shortcut_trigger_to_string(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_shortcut_trigger_to_string
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_shortcut_trigger_print (GtkShortcutTrigger *self, GString *string);
subroutine gtk_shortcut_trigger_print(self, string) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: string
end subroutine

! GDK_AVAILABLE_IN_ALL
!char * gtk_shortcut_trigger_to_label (GtkShortcutTrigger *self, GdkDisplay *display);
function gtk_shortcut_trigger_to_label(self, display) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_shortcut_trigger_to_label
  type(c_ptr), value :: self
  type(c_ptr), value :: display
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_shortcut_trigger_print_label (GtkShortcutTrigger *self, GdkDisplay *display, GString *string);
function gtk_shortcut_trigger_print_label(self, display, string) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_shortcut_trigger_print_label
  type(c_ptr), value :: self
  type(c_ptr), value :: display
  type(c_ptr), value :: string
end function

! GDK_AVAILABLE_IN_ALL
!guint gtk_shortcut_trigger_hash (gconstpointer trigger);
function gtk_shortcut_trigger_hash(trigger) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_shortcut_trigger_hash
  type(c_ptr), value :: trigger
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_shortcut_trigger_equal (gconstpointer trigger1, gconstpointer trigger2);
function gtk_shortcut_trigger_equal(trigger1, trigger2) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_shortcut_trigger_equal
  type(c_ptr), value :: trigger1
  type(c_ptr), value :: trigger2
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_shortcut_trigger_compare (gconstpointer trigger1, gconstpointer trigger2);
function gtk_shortcut_trigger_compare(trigger1, trigger2) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_shortcut_trigger_compare
  type(c_ptr), value :: trigger1
  type(c_ptr), value :: trigger2
end function

! GDK_AVAILABLE_IN_ALL
!GtkShortcutTriggerMatch gtk_shortcut_trigger_trigger (GtkShortcutTrigger *self, GdkEvent *event, gboolean enable_mnemonics);
function gtk_shortcut_trigger_trigger(self, event, enable_mnemonics) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_shortcut_trigger_trigger
  type(c_ptr), value :: self
  type(c_ptr), value :: event
  integer(c_int), value :: enable_mnemonics
end function

! GDK_AVAILABLE_IN_ALL
!GdkModifierType gtk_keyval_trigger_get_modifiers (GtkKeyvalTrigger *self);
function gtk_keyval_trigger_get_modifiers(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_keyval_trigger_get_modifiers
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!guint gtk_keyval_trigger_get_keyval (GtkKeyvalTrigger *self);
function gtk_keyval_trigger_get_keyval(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_keyval_trigger_get_keyval
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!guint gtk_mnemonic_trigger_get_keyval (GtkMnemonicTrigger *self);
function gtk_mnemonic_trigger_get_keyval(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_mnemonic_trigger_get_keyval
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GtkShortcutTrigger * gtk_alternative_trigger_get_first (GtkAlternativeTrigger *self);
function gtk_alternative_trigger_get_first(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_alternative_trigger_get_first
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GtkShortcutTrigger * gtk_alternative_trigger_get_second (GtkAlternativeTrigger *self);
function gtk_alternative_trigger_get_second(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_alternative_trigger_get_second
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_stack_switcher_get_type (void) G_GNUC_CONST;
function gtk_stack_switcher_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_stack_switcher_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_stack_switcher_new (void);
function gtk_stack_switcher_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_stack_switcher_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_stack_switcher_set_stack (GtkStackSwitcher *switcher, GtkStack *stack);
subroutine gtk_stack_switcher_set_stack(switcher, stack) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: switcher
  type(c_ptr), value :: stack
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkStack * gtk_stack_switcher_get_stack (GtkStackSwitcher *switcher);
function gtk_stack_switcher_get_stack(switcher) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_stack_switcher_get_stack
  type(c_ptr), value :: switcher
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_cell_editable_get_type (void) G_GNUC_CONST;
function gtk_cell_editable_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_cell_editable_get_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_editable_start_editing (GtkCellEditable *cell_editable, GdkEvent *event);
subroutine gtk_cell_editable_start_editing(cell_editable, event) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: cell_editable
  type(c_ptr), value :: event
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_editable_editing_done (GtkCellEditable *cell_editable);
subroutine gtk_cell_editable_editing_done(cell_editable) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: cell_editable
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_editable_remove_widget (GtkCellEditable *cell_editable);
subroutine gtk_cell_editable_remove_widget(cell_editable) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: cell_editable
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_shortcuts_section_get_type (void) G_GNUC_CONST;
function gtk_shortcuts_section_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_shortcuts_section_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_gesture_swipe_get_type (void) G_GNUC_CONST;
function gtk_gesture_swipe_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_gesture_swipe_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkGesture * gtk_gesture_swipe_new (void);
function gtk_gesture_swipe_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_gesture_swipe_new
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_gesture_swipe_get_velocity (GtkGestureSwipe *gesture, gdouble *velocity_x, gdouble *velocity_y);
function gtk_gesture_swipe_get_velocity(gesture, velocity_x, velocity_y)&
& bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gesture_swipe_get_velocity
  type(c_ptr), value :: gesture
  type(c_ptr), value :: velocity_x
  type(c_ptr), value :: velocity_y
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_file_chooser_dialog_get_type (void) G_GNUC_CONST;
function gtk_file_chooser_dialog_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_file_chooser_dialog_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_color_chooser_dialog_get_type (void) G_GNUC_CONST;
function gtk_color_chooser_dialog_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_color_chooser_dialog_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_color_chooser_dialog_new (const gchar *title, GtkWindow *parent);
function gtk_color_chooser_dialog_new(title, parent) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_color_chooser_dialog_new
  character(kind=c_char), dimension(*) :: title
  type(c_ptr), value :: parent
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_size_group_get_type (void) G_GNUC_CONST;
function gtk_size_group_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_size_group_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkSizeGroup * gtk_size_group_new (GtkSizeGroupMode mode);
function gtk_size_group_new(mode) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_size_group_new
  integer(c_int), value :: mode
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_size_group_set_mode (GtkSizeGroup *size_group, GtkSizeGroupMode mode);
subroutine gtk_size_group_set_mode(size_group, mode) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: size_group
  integer(c_int), value :: mode
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkSizeGroupMode gtk_size_group_get_mode (GtkSizeGroup *size_group);
function gtk_size_group_get_mode(size_group) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_size_group_get_mode
  type(c_ptr), value :: size_group
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_size_group_add_widget (GtkSizeGroup *size_group, GtkWidget *widget);
subroutine gtk_size_group_add_widget(size_group, widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: size_group
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_size_group_remove_widget (GtkSizeGroup *size_group, GtkWidget *widget);
subroutine gtk_size_group_remove_widget(size_group, widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: size_group
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!GSList * gtk_size_group_get_widgets (GtkSizeGroup *size_group);
function gtk_size_group_get_widgets(size_group) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_size_group_get_widgets
  type(c_ptr), value :: size_group
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_popover_menu_bar_get_type (void) G_GNUC_CONST;
function gtk_popover_menu_bar_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_popover_menu_bar_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_popover_menu_bar_new_from_model (GMenuModel *model);
function gtk_popover_menu_bar_new_from_model(model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_popover_menu_bar_new_from_model
  type(c_ptr), value :: model
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_popover_menu_bar_set_menu_model (GtkPopoverMenuBar *bar, GMenuModel *model);
subroutine gtk_popover_menu_bar_set_menu_model(bar, model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: bar
  type(c_ptr), value :: model
end subroutine

! GDK_AVAILABLE_IN_ALL
!GMenuModel * gtk_popover_menu_bar_get_menu_model (GtkPopoverMenuBar *bar);
function gtk_popover_menu_bar_get_menu_model(bar) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_popover_menu_bar_get_menu_model
  type(c_ptr), value :: bar
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_style_provider_get_type (void) G_GNUC_CONST;
function gtk_style_provider_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_style_provider_get_type
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_accelerator_valid (guint keyval, GdkModifierType modifiers) G_GNUC_CONST;
function gtk_accelerator_valid(keyval, modifiers) bind(c)
  use iso_c_binding, only: c_int
  integer(c_int) :: gtk_accelerator_valid
  integer(c_int), value :: keyval
  integer(c_int), value :: modifiers
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_accelerator_parse (const gchar *accelerator, guint *accelerator_key, GdkModifierType *accelerator_mods);
function gtk_accelerator_parse(accelerator, accelerator_key, accelerator_mods)&
& bind(c)
  use iso_c_binding, only: c_int, c_char, c_ptr
  integer(c_int) :: gtk_accelerator_parse
  character(kind=c_char), dimension(*) :: accelerator
  type(c_ptr), value :: accelerator_key
  integer(c_int), value :: accelerator_mods
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_accelerator_parse_with_keycode (const gchar *accelerator, GdkDisplay *display, guint *accelerator_key, guint **accelerator_codes, GdkModifierType *accelerator_mods);
function gtk_accelerator_parse_with_keycode(accelerator, display,&
& accelerator_key, accelerator_codes, accelerator_mods) bind(c)
  use iso_c_binding, only: c_int, c_char, c_ptr
  integer(c_int) :: gtk_accelerator_parse_with_keycode
  character(kind=c_char), dimension(*) :: accelerator
  type(c_ptr), value :: display
  type(c_ptr), value :: accelerator_key
  type(c_ptr), value :: accelerator_codes
  integer(c_int), value :: accelerator_mods
end function

! GDK_AVAILABLE_IN_ALL
!gchar* gtk_accelerator_name (guint accelerator_key, GdkModifierType accelerator_mods);
function gtk_accelerator_name(accelerator_key, accelerator_mods) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_accelerator_name
  integer(c_int), value :: accelerator_key
  integer(c_int), value :: accelerator_mods
end function

! GDK_AVAILABLE_IN_ALL
!gchar* gtk_accelerator_name_with_keycode (GdkDisplay *display, guint accelerator_key, guint keycode, GdkModifierType accelerator_mods);
function gtk_accelerator_name_with_keycode(display, accelerator_key, keycode,&
& accelerator_mods) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_accelerator_name_with_keycode
  type(c_ptr), value :: display
  integer(c_int), value :: accelerator_key
  integer(c_int), value :: keycode
  integer(c_int), value :: accelerator_mods
end function

! GDK_AVAILABLE_IN_ALL
!gchar* gtk_accelerator_get_label (guint accelerator_key, GdkModifierType accelerator_mods);
function gtk_accelerator_get_label(accelerator_key, accelerator_mods) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_accelerator_get_label
  integer(c_int), value :: accelerator_key
  integer(c_int), value :: accelerator_mods
end function

! GDK_AVAILABLE_IN_ALL
!gchar* gtk_accelerator_get_label_with_keycode (GdkDisplay *display, guint accelerator_key, guint keycode, GdkModifierType accelerator_mods);
function gtk_accelerator_get_label_with_keycode(display, accelerator_key,&
& keycode, accelerator_mods) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_accelerator_get_label_with_keycode
  type(c_ptr), value :: display
  integer(c_int), value :: accelerator_key
  integer(c_int), value :: keycode
  integer(c_int), value :: accelerator_mods
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_accelerator_set_default_mod_mask (GdkModifierType default_mod_mask);
subroutine gtk_accelerator_set_default_mod_mask(default_mod_mask) bind(c)
  use iso_c_binding, only: c_int
  integer(c_int), value :: default_mod_mask
end subroutine

! 
!GdkModifierType gtk_accelerator_get_default_mod_mask (void);
function gtk_accelerator_get_default_mod_mask() bind(c)
  use iso_c_binding, only: c_int
  integer(c_int) :: gtk_accelerator_get_default_mod_mask
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_cell_renderer_spinner_get_type (void) G_GNUC_CONST;
function gtk_cell_renderer_spinner_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_cell_renderer_spinner_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkCellRenderer *gtk_cell_renderer_spinner_new (void);
function gtk_cell_renderer_spinner_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_renderer_spinner_new
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_calendar_get_type (void) G_GNUC_CONST;
function gtk_calendar_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_calendar_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_calendar_new (void);
function gtk_calendar_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_calendar_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_calendar_select_day (GtkCalendar *self, GDateTime *date);
subroutine gtk_calendar_select_day(self, date) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: date
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_calendar_mark_day (GtkCalendar *calendar, guint day);
subroutine gtk_calendar_mark_day(calendar, day) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: calendar
  integer(c_int), value :: day
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_calendar_unmark_day (GtkCalendar *calendar, guint day);
subroutine gtk_calendar_unmark_day(calendar, day) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: calendar
  integer(c_int), value :: day
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_calendar_clear_marks (GtkCalendar *calendar);
subroutine gtk_calendar_clear_marks(calendar) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: calendar
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_calendar_set_show_week_numbers (GtkCalendar *self, gboolean value);
subroutine gtk_calendar_set_show_week_numbers(self, value) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: value
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_calendar_get_show_week_numbers (GtkCalendar *self);
function gtk_calendar_get_show_week_numbers(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_calendar_get_show_week_numbers
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_calendar_set_show_heading (GtkCalendar *self, gboolean value);
subroutine gtk_calendar_set_show_heading(self, value) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: value
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_calendar_get_show_heading (GtkCalendar *self);
function gtk_calendar_get_show_heading(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_calendar_get_show_heading
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_calendar_set_show_day_names (GtkCalendar *self, gboolean value);
subroutine gtk_calendar_set_show_day_names(self, value) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: value
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_calendar_get_show_day_names (GtkCalendar *self);
function gtk_calendar_get_show_day_names(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_calendar_get_show_day_names
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GDateTime * gtk_calendar_get_date (GtkCalendar *self);
function gtk_calendar_get_date(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_calendar_get_date
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_calendar_get_day_is_marked (GtkCalendar *calendar, guint day);
function gtk_calendar_get_day_is_marked(calendar, day) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_calendar_get_day_is_marked
  type(c_ptr), value :: calendar
  integer(c_int), value :: day
end function

! GDK_AVAILABLE_IN_ALL
!GtkSnapshot * gtk_snapshot_new (void);
function gtk_snapshot_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_snapshot_new
end function

! GDK_AVAILABLE_IN_ALL
!GskRenderNode * gtk_snapshot_free_to_node (GtkSnapshot *snapshot);
function gtk_snapshot_free_to_node(snapshot) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_snapshot_free_to_node
  type(c_ptr), value :: snapshot
end function

! GDK_AVAILABLE_IN_ALL
!GdkPaintable * gtk_snapshot_free_to_paintable (GtkSnapshot *snapshot, const graphene_size_t *size);
function gtk_snapshot_free_to_paintable(snapshot, size) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_snapshot_free_to_paintable
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: size
end function

! GDK_AVAILABLE_IN_ALL
!GskRenderNode * gtk_snapshot_to_node (GtkSnapshot *snapshot);
function gtk_snapshot_to_node(snapshot) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_snapshot_to_node
  type(c_ptr), value :: snapshot
end function

! GDK_AVAILABLE_IN_ALL
!GdkPaintable * gtk_snapshot_to_paintable (GtkSnapshot *snapshot, const graphene_size_t *size);
function gtk_snapshot_to_paintable(snapshot, size) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_snapshot_to_paintable
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: size
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_push_opacity (GtkSnapshot *snapshot, double opacity);
subroutine gtk_snapshot_push_opacity(snapshot, opacity) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: snapshot
  real(c_double), value :: opacity
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_push_blur (GtkSnapshot *snapshot, double radius);
subroutine gtk_snapshot_push_blur(snapshot, radius) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: snapshot
  real(c_double), value :: radius
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_push_color_matrix (GtkSnapshot *snapshot, const graphene_matrix_t*color_matrix, const graphene_vec4_t *color_offset);
subroutine gtk_snapshot_push_color_matrix(snapshot, color_matrix, color_offset)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: color_matrix
  type(c_ptr), value :: color_offset
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_push_repeat (GtkSnapshot *snapshot, const graphene_rect_t *bounds, const graphene_rect_t *child_bounds);
subroutine gtk_snapshot_push_repeat(snapshot, bounds, child_bounds) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: bounds
  type(c_ptr), value :: child_bounds
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_push_clip (GtkSnapshot *snapshot, const graphene_rect_t *bounds);
subroutine gtk_snapshot_push_clip(snapshot, bounds) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: bounds
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_push_rounded_clip (GtkSnapshot *snapshot, const GskRoundedRect *bounds);
subroutine gtk_snapshot_push_rounded_clip(snapshot, bounds) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: bounds
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_push_shadow (GtkSnapshot *snapshot, const GskShadow *shadow, gsize n_shadows);
subroutine gtk_snapshot_push_shadow(snapshot, shadow, n_shadows) bind(c)
  use iso_c_binding, only: c_ptr, c_size_t
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: shadow
  integer(c_size_t), value :: n_shadows
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_push_blend (GtkSnapshot *snapshot, GskBlendMode blend_mode);
subroutine gtk_snapshot_push_blend(snapshot, blend_mode) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: snapshot
  integer(c_int), value :: blend_mode
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_push_cross_fade (GtkSnapshot *snapshot, double progress);
subroutine gtk_snapshot_push_cross_fade(snapshot, progress) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: snapshot
  real(c_double), value :: progress
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_pop (GtkSnapshot *snapshot);
subroutine gtk_snapshot_pop(snapshot) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: snapshot
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_save (GtkSnapshot *snapshot);
subroutine gtk_snapshot_save(snapshot) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: snapshot
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_restore (GtkSnapshot *snapshot);
subroutine gtk_snapshot_restore(snapshot) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: snapshot
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_transform (GtkSnapshot *snapshot, GskTransform *transform);
subroutine gtk_snapshot_transform(snapshot, transform) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: transform
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_transform_matrix (GtkSnapshot *snapshot, const graphene_matrix_t*matrix);
subroutine gtk_snapshot_transform_matrix(snapshot, matrix) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: matrix
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_translate (GtkSnapshot *snapshot, const graphene_point_t *point);
subroutine gtk_snapshot_translate(snapshot, point) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: point
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_translate_3d (GtkSnapshot *snapshot, const graphene_point3d_t*point);
subroutine gtk_snapshot_translate_3d(snapshot, point) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: point
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_rotate (GtkSnapshot *snapshot, float angle);
subroutine gtk_snapshot_rotate(snapshot, angle) bind(c)
  use iso_c_binding, only: c_ptr, c_float
  type(c_ptr), value :: snapshot
  real(c_float), value :: angle
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_rotate_3d (GtkSnapshot *snapshot, float angle, const graphene_vec3_t *axis);
subroutine gtk_snapshot_rotate_3d(snapshot, angle, axis) bind(c)
  use iso_c_binding, only: c_ptr, c_float
  type(c_ptr), value :: snapshot
  real(c_float), value :: angle
  type(c_ptr), value :: axis
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_scale (GtkSnapshot *snapshot, float factor_x, float factor_y);
subroutine gtk_snapshot_scale(snapshot, factor_x, factor_y) bind(c)
  use iso_c_binding, only: c_ptr, c_float
  type(c_ptr), value :: snapshot
  real(c_float), value :: factor_x
  real(c_float), value :: factor_y
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_scale_3d (GtkSnapshot *snapshot, float factor_x, float factor_y, float factor_z);
subroutine gtk_snapshot_scale_3d(snapshot, factor_x, factor_y, factor_z)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_float
  type(c_ptr), value :: snapshot
  real(c_float), value :: factor_x
  real(c_float), value :: factor_y
  real(c_float), value :: factor_z
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_perspective (GtkSnapshot *snapshot, float depth);
subroutine gtk_snapshot_perspective(snapshot, depth) bind(c)
  use iso_c_binding, only: c_ptr, c_float
  type(c_ptr), value :: snapshot
  real(c_float), value :: depth
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_append_node (GtkSnapshot *snapshot, GskRenderNode *node);
subroutine gtk_snapshot_append_node(snapshot, node) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: node
end subroutine

! GDK_AVAILABLE_IN_ALL
!cairo_t * gtk_snapshot_append_cairo (GtkSnapshot *snapshot, const graphene_rect_t *bounds);
function gtk_snapshot_append_cairo(snapshot, bounds) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_snapshot_append_cairo
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: bounds
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_append_texture (GtkSnapshot *snapshot, GdkTexture *texture, const graphene_rect_t *bounds);
subroutine gtk_snapshot_append_texture(snapshot, texture, bounds) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: texture
  type(c_ptr), value :: bounds
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_append_color (GtkSnapshot *snapshot, const GdkRGBA *color, const graphene_rect_t *bounds);
subroutine gtk_snapshot_append_color(snapshot, color, bounds) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: color
  type(c_ptr), value :: bounds
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_append_linear_gradient (GtkSnapshot *snapshot, const graphene_rect_t *bounds, const graphene_point_t *start_point, const graphene_point_t *end_point, const GskColorStop *stops, gsize n_stops);
subroutine gtk_snapshot_append_linear_gradient(snapshot, bounds, start_point,&
& end_point, stops, n_stops) bind(c)
  use iso_c_binding, only: c_ptr, c_size_t
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: bounds
  type(c_ptr), value :: start_point
  type(c_ptr), value :: end_point
  type(c_ptr), value :: stops
  integer(c_size_t), value :: n_stops
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_append_repeating_linear_gradient (GtkSnapshot *snapshot, const graphene_rect_t *bounds, const graphene_point_t *start_point, const graphene_point_t *end_point, const GskColorStop *stops, gsize n_stops);
subroutine gtk_snapshot_append_repeating_linear_gradient(snapshot, bounds,&
& start_point, end_point, stops, n_stops) bind(c)
  use iso_c_binding, only: c_ptr, c_size_t
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: bounds
  type(c_ptr), value :: start_point
  type(c_ptr), value :: end_point
  type(c_ptr), value :: stops
  integer(c_size_t), value :: n_stops
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_append_inset_shadow (GtkSnapshot *snapshot, const GskRoundedRect *outline, const GdkRGBA *color, float dx, float dy, float spread, float blur_radius);
subroutine gtk_snapshot_append_inset_shadow(snapshot, outline, color, dx, dy,&
& spread, blur_radius) bind(c)
  use iso_c_binding, only: c_ptr, c_float
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: outline
  type(c_ptr), value :: color
  real(c_float), value :: dx
  real(c_float), value :: dy
  real(c_float), value :: spread
  real(c_float), value :: blur_radius
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_append_outset_shadow (GtkSnapshot *snapshot, const GskRoundedRect *outline, const GdkRGBA *color, float dx, float dy, float spread, float blur_radius);
subroutine gtk_snapshot_append_outset_shadow(snapshot, outline, color, dx, dy,&
& spread, blur_radius) bind(c)
  use iso_c_binding, only: c_ptr, c_float
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: outline
  type(c_ptr), value :: color
  real(c_float), value :: dx
  real(c_float), value :: dy
  real(c_float), value :: spread
  real(c_float), value :: blur_radius
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_append_layout (GtkSnapshot *snapshot, PangoLayout *layout, const GdkRGBA *color);
subroutine gtk_snapshot_append_layout(snapshot, layout, color) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: layout
  type(c_ptr), value :: color
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_render_background (GtkSnapshot *snapshot, GtkStyleContext *context, gdouble x, gdouble y, gdouble width, gdouble height);
subroutine gtk_snapshot_render_background(snapshot, context, x, y, width,&
& height) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: context
  real(c_double), value :: x
  real(c_double), value :: y
  real(c_double), value :: width
  real(c_double), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_render_frame (GtkSnapshot *snapshot, GtkStyleContext *context, gdouble x, gdouble y, gdouble width, gdouble height);
subroutine gtk_snapshot_render_frame(snapshot, context, x, y, width, height)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: context
  real(c_double), value :: x
  real(c_double), value :: y
  real(c_double), value :: width
  real(c_double), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_render_focus (GtkSnapshot *snapshot, GtkStyleContext *context, gdouble x, gdouble y, gdouble width, gdouble height);
subroutine gtk_snapshot_render_focus(snapshot, context, x, y, width, height)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: context
  real(c_double), value :: x
  real(c_double), value :: y
  real(c_double), value :: width
  real(c_double), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_snapshot_render_layout (GtkSnapshot *snapshot, GtkStyleContext *context, gdouble x, gdouble y, PangoLayout *layout);
subroutine gtk_snapshot_render_layout(snapshot, context, x, y, layout) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: context
  real(c_double), value :: x
  real(c_double), value :: y
  type(c_ptr), value :: layout
end subroutine

! GDK_AVAILABLE_IN_ALL /* in gtkstylecontext.c */
!void gtk_snapshot_render_insertion_cursor (GtkSnapshot *snapshot, GtkStyleContext *context, gdouble x, gdouble y, PangoLayout *layout, int index, PangoDirection direction);
subroutine gtk_snapshot_render_insertion_cursor(snapshot, context, x, y,&
& layout, index, direction) bind(c)
  use iso_c_binding, only: c_ptr, c_double, c_int
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: context
  real(c_double), value :: x
  real(c_double), value :: y
  type(c_ptr), value :: layout
  integer(c_int), value :: index
  integer(c_int), value :: direction
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_widget_get_type (void) G_GNUC_CONST;
function gtk_widget_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_widget_get_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_destroy (GtkWidget *widget);
subroutine gtk_widget_destroy(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_destroyed (GtkWidget *widget, GtkWidget **widget_pointer);
subroutine gtk_widget_destroyed(widget, widget_pointer) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
  type(c_ptr), value :: widget_pointer
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_unparent (GtkWidget *widget);
subroutine gtk_widget_unparent(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_show (GtkWidget *widget);
subroutine gtk_widget_show(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_hide (GtkWidget *widget);
subroutine gtk_widget_hide(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_map (GtkWidget *widget);
subroutine gtk_widget_map(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_unmap (GtkWidget *widget);
subroutine gtk_widget_unmap(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_realize (GtkWidget *widget);
subroutine gtk_widget_realize(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_unrealize (GtkWidget *widget);
subroutine gtk_widget_unrealize(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_queue_draw (GtkWidget *widget);
subroutine gtk_widget_queue_draw(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_queue_resize (GtkWidget *widget);
subroutine gtk_widget_queue_resize(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_queue_allocate (GtkWidget *widget);
subroutine gtk_widget_queue_allocate(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!GdkFrameClock* gtk_widget_get_frame_clock (GtkWidget *widget);
function gtk_widget_get_frame_clock(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_frame_clock
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_size_allocate (GtkWidget *widget, const GtkAllocation *allocation, int baseline);
subroutine gtk_widget_size_allocate(widget, allocation, baseline) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  type(c_ptr), value :: allocation
  integer(c_int), value :: baseline
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_allocate (GtkWidget *widget, int width, int height, int baseline, GskTransform *transform);
subroutine gtk_widget_allocate(widget, width, height, baseline, transform)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: width
  integer(c_int), value :: height
  integer(c_int), value :: baseline
  type(c_ptr), value :: transform
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkSizeRequestMode gtk_widget_get_request_mode (GtkWidget *widget);
function gtk_widget_get_request_mode(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_request_mode
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_measure (GtkWidget *widget, GtkOrientation orientation, int for_size, int *minimum, int *natural, int *minimum_baseline, int *natural_baseline);
subroutine gtk_widget_measure(widget, orientation, for_size, minimum, natural,&
& minimum_baseline, natural_baseline) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: orientation
  integer(c_int), value :: for_size
  type(c_ptr), value :: minimum
  type(c_ptr), value :: natural
  type(c_ptr), value :: minimum_baseline
  type(c_ptr), value :: natural_baseline
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_get_preferred_size (GtkWidget *widget, GtkRequisition *minimum_size, GtkRequisition *natural_size);
subroutine gtk_widget_get_preferred_size(widget, minimum_size, natural_size)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
  type(c_ptr), value :: minimum_size
  type(c_ptr), value :: natural_size
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_layout_manager (GtkWidget *widget, GtkLayoutManager *layout_manager);
subroutine gtk_widget_set_layout_manager(widget, layout_manager) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
  type(c_ptr), value :: layout_manager
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkLayoutManager * gtk_widget_get_layout_manager (GtkWidget *widget);
function gtk_widget_get_layout_manager(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_layout_manager
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_class_set_layout_manager_type (GtkWidgetClass *widget_class, GType type);
subroutine gtk_widget_class_set_layout_manager_type(widget_class, type) bind(c)
  use iso_c_binding, only: c_ptr, c_size_t
  type(c_ptr), value :: widget_class
  integer(c_size_t), value :: type
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_widget_class_get_layout_manager_type (GtkWidgetClass *widget_class);
function gtk_widget_class_get_layout_manager_type(widget_class) bind(c)
  use iso_c_binding, only: c_size_t, c_ptr
  integer(c_size_t) :: gtk_widget_class_get_layout_manager_type
  type(c_ptr), value :: widget_class
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_class_add_shortcut (GtkWidgetClass *widget_class, GtkShortcut *shortcut);
subroutine gtk_widget_class_add_shortcut(widget_class, shortcut) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget_class
  type(c_ptr), value :: shortcut
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_can_activate_accel (GtkWidget *widget, guint signal_id);
function gtk_widget_can_activate_accel(widget, signal_id) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_can_activate_accel
  type(c_ptr), value :: widget
  integer(c_int), value :: signal_id
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_mnemonic_activate (GtkWidget *widget, gboolean group_cycling);
function gtk_widget_mnemonic_activate(widget, group_cycling) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_mnemonic_activate
  type(c_ptr), value :: widget
  integer(c_int), value :: group_cycling
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_activate (GtkWidget *widget);
function gtk_widget_activate(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_activate
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_can_focus (GtkWidget *widget, gboolean can_focus);
subroutine gtk_widget_set_can_focus(widget, can_focus) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: can_focus
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_get_can_focus (GtkWidget *widget);
function gtk_widget_get_can_focus(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_can_focus
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_has_focus (GtkWidget *widget);
function gtk_widget_has_focus(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_has_focus
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_is_focus (GtkWidget *widget);
function gtk_widget_is_focus(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_is_focus
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_has_visible_focus (GtkWidget *widget);
function gtk_widget_has_visible_focus(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_has_visible_focus
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_grab_focus (GtkWidget *widget);
function gtk_widget_grab_focus(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_grab_focus
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_focus_on_click (GtkWidget *widget, gboolean focus_on_click);
subroutine gtk_widget_set_focus_on_click(widget, focus_on_click) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: focus_on_click
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_get_focus_on_click (GtkWidget *widget);
function gtk_widget_get_focus_on_click(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_focus_on_click
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_can_target (GtkWidget *widget, gboolean can_target);
subroutine gtk_widget_set_can_target(widget, can_target) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: can_target
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_get_can_target (GtkWidget *widget);
function gtk_widget_get_can_target(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_can_target
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_has_default (GtkWidget *widget);
function gtk_widget_has_default(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_has_default
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_receives_default (GtkWidget *widget, gboolean receives_default);
subroutine gtk_widget_set_receives_default(widget, receives_default) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: receives_default
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_get_receives_default (GtkWidget *widget);
function gtk_widget_get_receives_default(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_receives_default
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_has_grab (GtkWidget *widget);
function gtk_widget_has_grab(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_has_grab
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_device_is_shadowed (GtkWidget *widget, GdkDevice *device);
function gtk_widget_device_is_shadowed(widget, device) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_device_is_shadowed
  type(c_ptr), value :: widget
  type(c_ptr), value :: device
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_name (GtkWidget *widget, const gchar *name);
subroutine gtk_widget_set_name(widget, name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: widget
  character(kind=c_char), dimension(*) :: name
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_widget_get_name (GtkWidget *widget);
function gtk_widget_get_name(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_name
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_state_flags (GtkWidget *widget, GtkStateFlags flags, gboolean clear);
subroutine gtk_widget_set_state_flags(widget, flags, clear) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: flags
  integer(c_int), value :: clear
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_unset_state_flags (GtkWidget *widget, GtkStateFlags flags);
subroutine gtk_widget_unset_state_flags(widget, flags) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: flags
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkStateFlags gtk_widget_get_state_flags (GtkWidget *widget);
function gtk_widget_get_state_flags(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_state_flags
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_sensitive (GtkWidget *widget, gboolean sensitive);
subroutine gtk_widget_set_sensitive(widget, sensitive) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: sensitive
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_get_sensitive (GtkWidget *widget);
function gtk_widget_get_sensitive(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_sensitive
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_is_sensitive (GtkWidget *widget);
function gtk_widget_is_sensitive(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_is_sensitive
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_visible (GtkWidget *widget, gboolean visible);
subroutine gtk_widget_set_visible(widget, visible) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: visible
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_get_visible (GtkWidget *widget);
function gtk_widget_get_visible(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_visible
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_is_visible (GtkWidget *widget);
function gtk_widget_is_visible(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_is_visible
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_is_drawable (GtkWidget *widget);
function gtk_widget_is_drawable(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_is_drawable
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_get_realized (GtkWidget *widget);
function gtk_widget_get_realized(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_realized
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_get_mapped (GtkWidget *widget);
function gtk_widget_get_mapped(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_mapped
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_parent (GtkWidget *widget, GtkWidget *parent);
subroutine gtk_widget_set_parent(widget, parent) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
  type(c_ptr), value :: parent
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_widget_get_parent (GtkWidget *widget);
function gtk_widget_get_parent(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_parent
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!GtkRoot * gtk_widget_get_root (GtkWidget *widget);
function gtk_widget_get_root(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_root
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!GtkNative * gtk_widget_get_native (GtkWidget *widget);
function gtk_widget_get_native(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_native
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_child_visible (GtkWidget *widget, gboolean child_visible);
subroutine gtk_widget_set_child_visible(widget, child_visible) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: child_visible
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_get_child_visible (GtkWidget *widget);
function gtk_widget_get_child_visible(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_child_visible
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!int gtk_widget_get_allocated_width (GtkWidget *widget);
function gtk_widget_get_allocated_width(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_allocated_width
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!int gtk_widget_get_allocated_height (GtkWidget *widget);
function gtk_widget_get_allocated_height(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_allocated_height
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!int gtk_widget_get_allocated_baseline (GtkWidget *widget);
function gtk_widget_get_allocated_baseline(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_allocated_baseline
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_get_allocation (GtkWidget *widget, GtkAllocation *allocation);
subroutine gtk_widget_get_allocation(widget, allocation) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
  type(c_ptr), value :: allocation
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_compute_transform (GtkWidget *widget, GtkWidget *target, graphene_matrix_t *out_transform) G_GNUC_WARN_UNUSED_RESULT;
function gtk_widget_compute_transform(widget, target, out_transform) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_compute_transform
  type(c_ptr), value :: widget
  type(c_ptr), value :: target
  type(c_ptr), value :: out_transform
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_compute_bounds (GtkWidget *widget, GtkWidget *target, graphene_rect_t *out_bounds) G_GNUC_WARN_UNUSED_RESULT;
function gtk_widget_compute_bounds(widget, target, out_bounds) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_compute_bounds
  type(c_ptr), value :: widget
  type(c_ptr), value :: target
  type(c_ptr), value :: out_bounds
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_compute_point (GtkWidget *widget, GtkWidget *target, const graphene_point_t *point, graphene_point_t *out_point) G_GNUC_WARN_UNUSED_RESULT;
function gtk_widget_compute_point(widget, target, point, out_point) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_compute_point
  type(c_ptr), value :: widget
  type(c_ptr), value :: target
  type(c_ptr), value :: point
  type(c_ptr), value :: out_point
end function

! GDK_AVAILABLE_IN_ALL
!int gtk_widget_get_width (GtkWidget *widget);
function gtk_widget_get_width(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_width
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!int gtk_widget_get_height (GtkWidget *widget);
function gtk_widget_get_height(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_height
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_child_focus (GtkWidget *widget, GtkDirectionType direction);
function gtk_widget_child_focus(widget, direction) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_child_focus
  type(c_ptr), value :: widget
  integer(c_int), value :: direction
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_keynav_failed (GtkWidget *widget, GtkDirectionType direction);
function gtk_widget_keynav_failed(widget, direction) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_keynav_failed
  type(c_ptr), value :: widget
  integer(c_int), value :: direction
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_error_bell (GtkWidget *widget);
subroutine gtk_widget_error_bell(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_size_request (GtkWidget *widget, gint width, gint height);
subroutine gtk_widget_set_size_request(widget, width, height) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: width
  integer(c_int), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_get_size_request (GtkWidget *widget, gint *width, gint *height);
subroutine gtk_widget_get_size_request(widget, width, height) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
  type(c_ptr), value :: width
  type(c_ptr), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_opacity (GtkWidget *widget, double opacity);
subroutine gtk_widget_set_opacity(widget, opacity) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: widget
  real(c_double), value :: opacity
end subroutine

! GDK_AVAILABLE_IN_ALL
!double gtk_widget_get_opacity (GtkWidget *widget);
function gtk_widget_get_opacity(widget) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_widget_get_opacity
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_overflow (GtkWidget *widget, GtkOverflow overflow);
subroutine gtk_widget_set_overflow(widget, overflow) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: overflow
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkOverflow gtk_widget_get_overflow (GtkWidget *widget);
function gtk_widget_get_overflow(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_overflow
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_widget_get_ancestor (GtkWidget *widget, GType widget_type);
function gtk_widget_get_ancestor(widget, widget_type) bind(c)
  use iso_c_binding, only: c_ptr, c_size_t
  type(c_ptr) :: gtk_widget_get_ancestor
  type(c_ptr), value :: widget
  integer(c_size_t), value :: widget_type
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_widget_get_scale_factor (GtkWidget *widget);
function gtk_widget_get_scale_factor(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_scale_factor
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!GdkDisplay * gtk_widget_get_display (GtkWidget *widget);
function gtk_widget_get_display(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_display
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!GtkSettings* gtk_widget_get_settings (GtkWidget *widget);
function gtk_widget_get_settings(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_settings
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!GdkClipboard *gtk_widget_get_clipboard (GtkWidget *widget);
function gtk_widget_get_clipboard(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_clipboard
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!GdkClipboard *gtk_widget_get_primary_clipboard (GtkWidget *widget);
function gtk_widget_get_primary_clipboard(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_primary_clipboard
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_get_hexpand (GtkWidget *widget);
function gtk_widget_get_hexpand(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_hexpand
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_hexpand (GtkWidget *widget, gboolean expand);
subroutine gtk_widget_set_hexpand(widget, expand) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: expand
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_get_hexpand_set (GtkWidget *widget);
function gtk_widget_get_hexpand_set(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_hexpand_set
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_hexpand_set (GtkWidget *widget, gboolean set);
subroutine gtk_widget_set_hexpand_set(widget, set) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: set
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_get_vexpand (GtkWidget *widget);
function gtk_widget_get_vexpand(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_vexpand
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_vexpand (GtkWidget *widget, gboolean expand);
subroutine gtk_widget_set_vexpand(widget, expand) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: expand
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_get_vexpand_set (GtkWidget *widget);
function gtk_widget_get_vexpand_set(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_vexpand_set
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_vexpand_set (GtkWidget *widget, gboolean set);
subroutine gtk_widget_set_vexpand_set(widget, set) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: set
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_compute_expand (GtkWidget *widget, GtkOrientation orientation);
function gtk_widget_compute_expand(widget, orientation) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_compute_expand
  type(c_ptr), value :: widget
  integer(c_int), value :: orientation
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_get_support_multidevice (GtkWidget *widget);
function gtk_widget_get_support_multidevice(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_support_multidevice
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_support_multidevice (GtkWidget *widget, gboolean support_multidevice);
subroutine gtk_widget_set_support_multidevice(widget, support_multidevice)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: support_multidevice
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_class_set_accessible_type (GtkWidgetClass *widget_class, GType type);
subroutine gtk_widget_class_set_accessible_type(widget_class, type) bind(c)
  use iso_c_binding, only: c_ptr, c_size_t
  type(c_ptr), value :: widget_class
  integer(c_size_t), value :: type
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_class_set_accessible_role (GtkWidgetClass *widget_class, AtkRole role);
subroutine gtk_widget_class_set_accessible_role(widget_class, role) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget_class
  integer(c_int), value :: role
end subroutine

! GDK_AVAILABLE_IN_ALL
!AtkObject* gtk_widget_get_accessible (GtkWidget *widget);
function gtk_widget_get_accessible(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_accessible
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!GtkAlign gtk_widget_get_halign (GtkWidget *widget);
function gtk_widget_get_halign(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_halign
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_halign (GtkWidget *widget, GtkAlign align);
subroutine gtk_widget_set_halign(widget, align) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: align
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkAlign gtk_widget_get_valign (GtkWidget *widget);
function gtk_widget_get_valign(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_valign
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_valign (GtkWidget *widget, GtkAlign align);
subroutine gtk_widget_set_valign(widget, align) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: align
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_widget_get_margin_start (GtkWidget *widget);
function gtk_widget_get_margin_start(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_margin_start
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_margin_start (GtkWidget *widget, gint margin);
subroutine gtk_widget_set_margin_start(widget, margin) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: margin
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_widget_get_margin_end (GtkWidget *widget);
function gtk_widget_get_margin_end(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_margin_end
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_margin_end (GtkWidget *widget, gint margin);
subroutine gtk_widget_set_margin_end(widget, margin) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: margin
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_widget_get_margin_top (GtkWidget *widget);
function gtk_widget_get_margin_top(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_margin_top
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_margin_top (GtkWidget *widget, gint margin);
subroutine gtk_widget_set_margin_top(widget, margin) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: margin
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_widget_get_margin_bottom (GtkWidget *widget);
function gtk_widget_get_margin_bottom(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_margin_bottom
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_margin_bottom (GtkWidget *widget, gint margin);
subroutine gtk_widget_set_margin_bottom(widget, margin) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: margin
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_is_ancestor (GtkWidget *widget, GtkWidget *ancestor);
function gtk_widget_is_ancestor(widget, ancestor) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_is_ancestor
  type(c_ptr), value :: widget
  type(c_ptr), value :: ancestor
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_translate_coordinates (GtkWidget *src_widget, GtkWidget *dest_widget, gint src_x, gint src_y, gint *dest_x, gint *dest_y);
function gtk_widget_translate_coordinates(src_widget, dest_widget, src_x,&
& src_y, dest_x, dest_y) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_translate_coordinates
  type(c_ptr), value :: src_widget
  type(c_ptr), value :: dest_widget
  integer(c_int), value :: src_x
  integer(c_int), value :: src_y
  type(c_ptr), value :: dest_x
  type(c_ptr), value :: dest_y
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_contains (GtkWidget *widget, gdouble x, gdouble y);
function gtk_widget_contains(widget, x, y) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_double
  integer(c_int) :: gtk_widget_contains
  type(c_ptr), value :: widget
  real(c_double), value :: x
  real(c_double), value :: y
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_widget_pick (GtkWidget *widget, gdouble x, gdouble y, GtkPickFlags flags);
function gtk_widget_pick(widget, x, y, flags) bind(c)
  use iso_c_binding, only: c_ptr, c_double, c_int
  type(c_ptr) :: gtk_widget_pick
  type(c_ptr), value :: widget
  real(c_double), value :: x
  real(c_double), value :: y
  integer(c_int), value :: flags
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_add_controller (GtkWidget *widget, GtkEventController *controller);
subroutine gtk_widget_add_controller(widget, controller) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
  type(c_ptr), value :: controller
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_remove_controller (GtkWidget *widget, GtkEventController *controller);
subroutine gtk_widget_remove_controller(widget, controller) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
  type(c_ptr), value :: controller
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_reset_style (GtkWidget *widget);
subroutine gtk_widget_reset_style(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!PangoContext *gtk_widget_create_pango_context (GtkWidget *widget);
function gtk_widget_create_pango_context(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_create_pango_context
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!PangoContext *gtk_widget_get_pango_context (GtkWidget *widget);
function gtk_widget_get_pango_context(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_pango_context
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_font_options (GtkWidget *widget, const cairo_font_options_t *options);
subroutine gtk_widget_set_font_options(widget, options) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
  type(c_ptr), value :: options
end subroutine

! GDK_AVAILABLE_IN_ALL
!const cairo_font_options_t *gtk_widget_get_font_options (GtkWidget *widget);
function gtk_widget_get_font_options(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_font_options
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!PangoLayout *gtk_widget_create_pango_layout (GtkWidget *widget, const gchar *text);
function gtk_widget_create_pango_layout(widget, text) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_widget_create_pango_layout
  type(c_ptr), value :: widget
  character(kind=c_char), dimension(*) :: text
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_direction (GtkWidget *widget, GtkTextDirection dir);
subroutine gtk_widget_set_direction(widget, dir) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: dir
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkTextDirection gtk_widget_get_direction (GtkWidget *widget);
function gtk_widget_get_direction(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_direction
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_default_direction (GtkTextDirection dir);
subroutine gtk_widget_set_default_direction(dir) bind(c)
  use iso_c_binding, only: c_int
  integer(c_int), value :: dir
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkTextDirection gtk_widget_get_default_direction (void);
function gtk_widget_get_default_direction() bind(c)
  use iso_c_binding, only: c_int
  integer(c_int) :: gtk_widget_get_default_direction
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_cursor (GtkWidget *widget, GdkCursor *cursor);
subroutine gtk_widget_set_cursor(widget, cursor) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
  type(c_ptr), value :: cursor
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_cursor_from_name (GtkWidget *widget, const char *name);
subroutine gtk_widget_set_cursor_from_name(widget, name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: widget
  character(kind=c_char), dimension(*) :: name
end subroutine

! GDK_AVAILABLE_IN_ALL
!GdkCursor * gtk_widget_get_cursor (GtkWidget *widget);
function gtk_widget_get_cursor(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_cursor
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!GList* gtk_widget_list_mnemonic_labels (GtkWidget *widget);
function gtk_widget_list_mnemonic_labels(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_list_mnemonic_labels
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_add_mnemonic_label (GtkWidget *widget, GtkWidget *label);
subroutine gtk_widget_add_mnemonic_label(widget, label) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
  type(c_ptr), value :: label
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_remove_mnemonic_label (GtkWidget *widget, GtkWidget *label);
subroutine gtk_widget_remove_mnemonic_label(widget, label) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
  type(c_ptr), value :: label
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_trigger_tooltip_query (GtkWidget *widget);
subroutine gtk_widget_trigger_tooltip_query(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_tooltip_text (GtkWidget *widget, const gchar *text);
subroutine gtk_widget_set_tooltip_text(widget, text) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: widget
  character(kind=c_char), dimension(*) :: text
end subroutine

! GDK_AVAILABLE_IN_ALL
!gchar * gtk_widget_get_tooltip_text (GtkWidget *widget);
function gtk_widget_get_tooltip_text(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_tooltip_text
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_tooltip_markup (GtkWidget *widget, const gchar *markup);
subroutine gtk_widget_set_tooltip_markup(widget, markup) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: widget
  character(kind=c_char), dimension(*) :: markup
end subroutine

! GDK_AVAILABLE_IN_ALL
!gchar * gtk_widget_get_tooltip_markup (GtkWidget *widget);
function gtk_widget_get_tooltip_markup(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_tooltip_markup
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_has_tooltip (GtkWidget *widget, gboolean has_tooltip);
subroutine gtk_widget_set_has_tooltip(widget, has_tooltip) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: has_tooltip
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_get_has_tooltip (GtkWidget *widget);
function gtk_widget_get_has_tooltip(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_has_tooltip
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_requisition_get_type (void) G_GNUC_CONST;
function gtk_requisition_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_requisition_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkRequisition *gtk_requisition_new (void) G_GNUC_MALLOC;
function gtk_requisition_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_requisition_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkRequisition *gtk_requisition_copy (const GtkRequisition *requisition);
function gtk_requisition_copy(requisition) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_requisition_copy
  type(c_ptr), value :: requisition
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_requisition_free (GtkRequisition *requisition);
subroutine gtk_requisition_free(requisition) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: requisition
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_in_destruction (GtkWidget *widget);
function gtk_widget_in_destruction(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_in_destruction
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!GtkStyleContext * gtk_widget_get_style_context (GtkWidget *widget);
function gtk_widget_get_style_context(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_style_context
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_class_set_css_name (GtkWidgetClass *widget_class, const char *name);
subroutine gtk_widget_class_set_css_name(widget_class, name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: widget_class
  character(kind=c_char), dimension(*) :: name
end subroutine

! GDK_AVAILABLE_IN_ALL
!const char * gtk_widget_class_get_css_name (GtkWidgetClass *widget_class);
function gtk_widget_class_get_css_name(widget_class) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_class_get_css_name
  type(c_ptr), value :: widget_class
end function

! GDK_AVAILABLE_IN_ALL
!GdkModifierType gtk_widget_get_modifier_mask (GtkWidget *widget, GdkModifierIntent intent);
function gtk_widget_get_modifier_mask(widget, intent) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_get_modifier_mask
  type(c_ptr), value :: widget
  integer(c_int), value :: intent
end function

! GDK_AVAILABLE_IN_ALL
!guint gtk_widget_add_tick_callback (GtkWidget *widget, GtkTickCallback callback, gpointer user_data, GDestroyNotify notify);
function gtk_widget_add_tick_callback(widget, callback, user_data, notify)&
& bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_funptr
  integer(c_int) :: gtk_widget_add_tick_callback
  type(c_ptr), value :: widget
  type(c_funptr), value :: callback
  type(c_ptr), value :: user_data
  type(c_funptr), value :: notify
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_remove_tick_callback (GtkWidget *widget, guint id);
subroutine gtk_widget_remove_tick_callback(widget, id) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: widget
  integer(c_int), value :: id
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_init_template (GtkWidget *widget);
subroutine gtk_widget_init_template(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!GObject *gtk_widget_get_template_child (GtkWidget *widget, GType widget_type, const gchar *name);
function gtk_widget_get_template_child(widget, widget_type, name) bind(c)
  use iso_c_binding, only: c_ptr, c_size_t, c_char
  type(c_ptr) :: gtk_widget_get_template_child
  type(c_ptr), value :: widget
  integer(c_size_t), value :: widget_type
  character(kind=c_char), dimension(*) :: name
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_class_set_template (GtkWidgetClass *widget_class, GBytes *template_bytes);
subroutine gtk_widget_class_set_template(widget_class, template_bytes) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget_class
  type(c_ptr), value :: template_bytes
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_class_set_template_from_resource (GtkWidgetClass *widget_class, const gchar *resource_name);
subroutine gtk_widget_class_set_template_from_resource(widget_class,&
& resource_name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: widget_class
  character(kind=c_char), dimension(*) :: resource_name
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_class_bind_template_callback_full (GtkWidgetClass *widget_class, const gchar *callback_name, GCallback callback_symbol);
subroutine gtk_widget_class_bind_template_callback_full(widget_class,&
& callback_name, callback_symbol) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_funptr
  type(c_ptr), value :: widget_class
  character(kind=c_char), dimension(*) :: callback_name
  type(c_funptr), value :: callback_symbol
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_class_set_template_scope (GtkWidgetClass *widget_class, GtkBuilderScope *scope);
subroutine gtk_widget_class_set_template_scope(widget_class, scope) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget_class
  type(c_ptr), value :: scope
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_class_bind_template_child_full (GtkWidgetClass *widget_class, const gchar *name, gboolean internal_child, gssize struct_offset);
subroutine gtk_widget_class_bind_template_child_full(widget_class, name,&
& internal_child, struct_offset) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int, c_size_t
  type(c_ptr), value :: widget_class
  character(kind=c_char), dimension(*) :: name
  integer(c_int), value :: internal_child
  integer(c_size_t), value :: struct_offset
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_insert_action_group (GtkWidget *widget, const gchar *name, GActionGroup *group);
subroutine gtk_widget_insert_action_group(widget, name, group) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: widget
  character(kind=c_char), dimension(*) :: name
  type(c_ptr), value :: group
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_activate_action_variant (GtkWidget *widget, const char *name, GVariant *args);
function gtk_widget_activate_action_variant(widget, name, args) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_widget_activate_action_variant
  type(c_ptr), value :: widget
  character(kind=c_char), dimension(*) :: name
  type(c_ptr), value :: args
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_activate_default (GtkWidget *widget);
subroutine gtk_widget_activate_default(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_font_map (GtkWidget *widget, PangoFontMap *font_map);
subroutine gtk_widget_set_font_map(widget, font_map) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
  type(c_ptr), value :: font_map
end subroutine

! GDK_AVAILABLE_IN_ALL
!PangoFontMap * gtk_widget_get_font_map (GtkWidget *widget);
function gtk_widget_get_font_map(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_font_map
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_widget_get_first_child (GtkWidget *widget);
function gtk_widget_get_first_child(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_first_child
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_widget_get_last_child (GtkWidget *widget);
function gtk_widget_get_last_child(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_last_child
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_widget_get_next_sibling (GtkWidget *widget);
function gtk_widget_get_next_sibling(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_next_sibling
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_widget_get_prev_sibling (GtkWidget *widget);
function gtk_widget_get_prev_sibling(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_prev_sibling
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!GListModel * gtk_widget_observe_children (GtkWidget *widget);
function gtk_widget_observe_children(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_observe_children
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!GListModel * gtk_widget_observe_controllers (GtkWidget *widget);
function gtk_widget_observe_controllers(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_observe_controllers
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_insert_after (GtkWidget *widget, GtkWidget *parent, GtkWidget *previous_sibling);
subroutine gtk_widget_insert_after(widget, parent, previous_sibling) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
  type(c_ptr), value :: parent
  type(c_ptr), value :: previous_sibling
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_insert_before (GtkWidget *widget, GtkWidget *parent, GtkWidget *next_sibling);
subroutine gtk_widget_insert_before(widget, parent, next_sibling) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
  type(c_ptr), value :: parent
  type(c_ptr), value :: next_sibling
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_focus_child (GtkWidget *widget, GtkWidget *child);
subroutine gtk_widget_set_focus_child(widget, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
  type(c_ptr), value :: child
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_widget_get_focus_child (GtkWidget *widget);
function gtk_widget_get_focus_child(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_focus_child
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_snapshot_child (GtkWidget *widget, GtkWidget *child, GtkSnapshot *snapshot);
subroutine gtk_widget_snapshot_child(widget, child, snapshot) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
  type(c_ptr), value :: child
  type(c_ptr), value :: snapshot
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_should_layout (GtkWidget *widget);
function gtk_widget_should_layout(widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_should_layout
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!const char * gtk_widget_get_css_name (GtkWidget *self) G_GNUC_PURE;
function gtk_widget_get_css_name(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_css_name
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_add_css_class (GtkWidget *widget, const char *css_class);
subroutine gtk_widget_add_css_class(widget, css_class) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: widget
  character(kind=c_char), dimension(*) :: css_class
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_remove_css_class (GtkWidget *widget, const char *css_class);
subroutine gtk_widget_remove_css_class(widget, css_class) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: widget
  character(kind=c_char), dimension(*) :: css_class
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_has_css_class (GtkWidget *widget, const char *css_class);
function gtk_widget_has_css_class(widget, css_class) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_widget_has_css_class
  type(c_ptr), value :: widget
  character(kind=c_char), dimension(*) :: css_class
end function

! GDK_AVAILABLE_IN_ALL
!char ** gtk_widget_get_css_classes (GtkWidget *widget);
function gtk_widget_get_css_classes(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_widget_get_css_classes
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_set_css_classes (GtkWidget *widget, const char **classes);
subroutine gtk_widget_set_css_classes(widget, classes) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
  type(c_ptr), dimension(*) :: classes
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_class_install_action (GtkWidgetClass *widget_class, const char *action_name, const char *parameter_type, GtkWidgetActionActivateFunc activate);
subroutine gtk_widget_class_install_action(widget_class, action_name,&
& parameter_type, activate) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_funptr
  type(c_ptr), value :: widget_class
  character(kind=c_char), dimension(*) :: action_name
  character(kind=c_char), dimension(*) :: parameter_type
  type(c_funptr), value :: activate
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_class_install_property_action (GtkWidgetClass *widget_class, const char *action_name, const char *property_name);
subroutine gtk_widget_class_install_property_action(widget_class, action_name,&
& property_name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: widget_class
  character(kind=c_char), dimension(*) :: action_name
  character(kind=c_char), dimension(*) :: property_name
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_widget_class_query_action (GtkWidgetClass *widget_class, guint index_, GType *owner, const char **action_name, const GVariantType **parameter_type, const char **property_name);
function gtk_widget_class_query_action(widget_class, index_, owner,&
& action_name, parameter_type, property_name) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_widget_class_query_action
  type(c_ptr), value :: widget_class
  integer(c_int), value :: index_
  type(c_ptr), value :: owner
  type(c_ptr), dimension(*) :: action_name
  type(c_ptr), value :: parameter_type
  type(c_ptr), dimension(*) :: property_name
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_widget_action_set_enabled (GtkWidget *widget, const char *action_name, gboolean enabled);
subroutine gtk_widget_action_set_enabled(widget, action_name, enabled) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int
  type(c_ptr), value :: widget
  character(kind=c_char), dimension(*) :: action_name
  integer(c_int), value :: enabled
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_action_bar_get_type (void) G_GNUC_CONST;
function gtk_action_bar_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_action_bar_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_action_bar_new (void);
function gtk_action_bar_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_action_bar_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_action_bar_get_center_widget (GtkActionBar *action_bar);
function gtk_action_bar_get_center_widget(action_bar) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_action_bar_get_center_widget
  type(c_ptr), value :: action_bar
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_action_bar_set_center_widget (GtkActionBar *action_bar, GtkWidget *center_widget);
subroutine gtk_action_bar_set_center_widget(action_bar, center_widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: action_bar
  type(c_ptr), value :: center_widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_action_bar_pack_start (GtkActionBar *action_bar, GtkWidget *child);
subroutine gtk_action_bar_pack_start(action_bar, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: action_bar
  type(c_ptr), value :: child
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_action_bar_pack_end (GtkActionBar *action_bar, GtkWidget *child);
subroutine gtk_action_bar_pack_end(action_bar, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: action_bar
  type(c_ptr), value :: child
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_action_bar_set_revealed (GtkActionBar *action_bar, gboolean revealed);
subroutine gtk_action_bar_set_revealed(action_bar, revealed) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: action_bar
  integer(c_int), value :: revealed
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_action_bar_get_revealed (GtkActionBar *action_bar);
function gtk_action_bar_get_revealed(action_bar) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_action_bar_get_revealed
  type(c_ptr), value :: action_bar
end function

! 
!GtkShortcutTrigger * gtk_shortcut_get_trigger (GtkShortcut *self);
function gtk_shortcut_get_trigger(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_shortcut_get_trigger
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_shortcut_set_trigger (GtkShortcut *self, GtkShortcutTrigger *trigger);
subroutine gtk_shortcut_set_trigger(self, trigger) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: trigger
end subroutine

! 
!GtkShortcutAction * gtk_shortcut_get_action (GtkShortcut *self);
function gtk_shortcut_get_action(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_shortcut_get_action
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_shortcut_set_action (GtkShortcut *self, GtkShortcutAction *action);
subroutine gtk_shortcut_set_action(self, action) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: action
end subroutine

! GDK_AVAILABLE_IN_ALL
!GVariant * gtk_shortcut_get_arguments (GtkShortcut *self);
function gtk_shortcut_get_arguments(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_shortcut_get_arguments
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_shortcut_set_arguments (GtkShortcut *self, GVariant *args);
subroutine gtk_shortcut_set_arguments(self, args) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: args
end subroutine

! GDK_AVAILABLE_IN_ALL
!GListModel * gtk_no_selection_get_model (GtkNoSelection *self);
function gtk_no_selection_get_model(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_no_selection_get_model
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_text_view_get_type (void) G_GNUC_CONST;
function gtk_text_view_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_text_view_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_text_view_new (void);
function gtk_text_view_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_view_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_text_view_new_with_buffer (GtkTextBuffer *buffer);
function gtk_text_view_new_with_buffer(buffer) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_view_new_with_buffer
  type(c_ptr), value :: buffer
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_set_buffer (GtkTextView *text_view, GtkTextBuffer *buffer);
subroutine gtk_text_view_set_buffer(text_view, buffer) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: text_view
  type(c_ptr), value :: buffer
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkTextBuffer *gtk_text_view_get_buffer (GtkTextView *text_view);
function gtk_text_view_get_buffer(text_view) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_view_get_buffer
  type(c_ptr), value :: text_view
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_view_scroll_to_iter (GtkTextView *text_view, GtkTextIter *iter, gdouble within_margin, gboolean use_align, gdouble xalign, gdouble yalign);
function gtk_text_view_scroll_to_iter(text_view, iter, within_margin,&
& use_align, xalign, yalign) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_double
  integer(c_int) :: gtk_text_view_scroll_to_iter
  type(c_ptr), value :: text_view
  type(c_ptr), value :: iter
  real(c_double), value :: within_margin
  integer(c_int), value :: use_align
  real(c_double), value :: xalign
  real(c_double), value :: yalign
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_scroll_to_mark (GtkTextView *text_view, GtkTextMark *mark, gdouble within_margin, gboolean use_align, gdouble xalign, gdouble yalign);
subroutine gtk_text_view_scroll_to_mark(text_view, mark, within_margin,&
& use_align, xalign, yalign) bind(c)
  use iso_c_binding, only: c_ptr, c_double, c_int
  type(c_ptr), value :: text_view
  type(c_ptr), value :: mark
  real(c_double), value :: within_margin
  integer(c_int), value :: use_align
  real(c_double), value :: xalign
  real(c_double), value :: yalign
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_scroll_mark_onscreen (GtkTextView *text_view, GtkTextMark *mark);
subroutine gtk_text_view_scroll_mark_onscreen(text_view, mark) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: text_view
  type(c_ptr), value :: mark
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_view_move_mark_onscreen (GtkTextView *text_view, GtkTextMark *mark);
function gtk_text_view_move_mark_onscreen(text_view, mark) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_move_mark_onscreen
  type(c_ptr), value :: text_view
  type(c_ptr), value :: mark
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_view_place_cursor_onscreen (GtkTextView *text_view);
function gtk_text_view_place_cursor_onscreen(text_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_place_cursor_onscreen
  type(c_ptr), value :: text_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_get_visible_rect (GtkTextView *text_view, GdkRectangle *visible_rect);
subroutine gtk_text_view_get_visible_rect(text_view, visible_rect) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: text_view
  type(c_ptr), value :: visible_rect
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_set_cursor_visible (GtkTextView *text_view, gboolean setting);
subroutine gtk_text_view_set_cursor_visible(text_view, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: text_view
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_view_get_cursor_visible (GtkTextView *text_view);
function gtk_text_view_get_cursor_visible(text_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_get_cursor_visible
  type(c_ptr), value :: text_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_reset_cursor_blink (GtkTextView *text_view);
subroutine gtk_text_view_reset_cursor_blink(text_view) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: text_view
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_get_cursor_locations (GtkTextView *text_view, const GtkTextIter *iter, GdkRectangle *strong, GdkRectangle *weak);
subroutine gtk_text_view_get_cursor_locations(text_view, iter, strong, weak)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: text_view
  type(c_ptr), value :: iter
  type(c_ptr), value :: strong
  type(c_ptr), value :: weak
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_get_iter_location (GtkTextView *text_view, const GtkTextIter *iter, GdkRectangle *location);
subroutine gtk_text_view_get_iter_location(text_view, iter, location) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: text_view
  type(c_ptr), value :: iter
  type(c_ptr), value :: location
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_view_get_iter_at_location (GtkTextView *text_view, GtkTextIter *iter, gint x, gint y);
function gtk_text_view_get_iter_at_location(text_view, iter, x, y) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_get_iter_at_location
  type(c_ptr), value :: text_view
  type(c_ptr), value :: iter
  integer(c_int), value :: x
  integer(c_int), value :: y
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_view_get_iter_at_position (GtkTextView *text_view, GtkTextIter *iter, gint *trailing, gint x, gint y);
function gtk_text_view_get_iter_at_position(text_view, iter, trailing, x, y)&
& bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_get_iter_at_position
  type(c_ptr), value :: text_view
  type(c_ptr), value :: iter
  type(c_ptr), value :: trailing
  integer(c_int), value :: x
  integer(c_int), value :: y
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_get_line_yrange (GtkTextView *text_view, const GtkTextIter *iter, gint *y, gint *height);
subroutine gtk_text_view_get_line_yrange(text_view, iter, y, height) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: text_view
  type(c_ptr), value :: iter
  type(c_ptr), value :: y
  type(c_ptr), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_get_line_at_y (GtkTextView *text_view, GtkTextIter *target_iter, gint y, gint *line_top);
subroutine gtk_text_view_get_line_at_y(text_view, target_iter, y, line_top)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: text_view
  type(c_ptr), value :: target_iter
  integer(c_int), value :: y
  type(c_ptr), value :: line_top
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_buffer_to_window_coords (GtkTextView *text_view, GtkTextWindowType win, gint buffer_x, gint buffer_y, gint *window_x, gint *window_y);
subroutine gtk_text_view_buffer_to_window_coords(text_view, win, buffer_x,&
& buffer_y, window_x, window_y) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: text_view
  integer(c_int), value :: win
  integer(c_int), value :: buffer_x
  integer(c_int), value :: buffer_y
  type(c_ptr), value :: window_x
  type(c_ptr), value :: window_y
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_window_to_buffer_coords (GtkTextView *text_view, GtkTextWindowType win, gint window_x, gint window_y, gint *buffer_x, gint *buffer_y);
subroutine gtk_text_view_window_to_buffer_coords(text_view, win, window_x,&
& window_y, buffer_x, buffer_y) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: text_view
  integer(c_int), value :: win
  integer(c_int), value :: window_x
  integer(c_int), value :: window_y
  type(c_ptr), value :: buffer_x
  type(c_ptr), value :: buffer_y
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_view_forward_display_line (GtkTextView *text_view, GtkTextIter *iter);
function gtk_text_view_forward_display_line(text_view, iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_forward_display_line
  type(c_ptr), value :: text_view
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_view_backward_display_line (GtkTextView *text_view, GtkTextIter *iter);
function gtk_text_view_backward_display_line(text_view, iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_backward_display_line
  type(c_ptr), value :: text_view
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_view_forward_display_line_end (GtkTextView *text_view, GtkTextIter *iter);
function gtk_text_view_forward_display_line_end(text_view, iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_forward_display_line_end
  type(c_ptr), value :: text_view
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_view_backward_display_line_start (GtkTextView *text_view, GtkTextIter *iter);
function gtk_text_view_backward_display_line_start(text_view, iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_backward_display_line_start
  type(c_ptr), value :: text_view
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_view_starts_display_line (GtkTextView *text_view, const GtkTextIter *iter);
function gtk_text_view_starts_display_line(text_view, iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_starts_display_line
  type(c_ptr), value :: text_view
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_view_move_visually (GtkTextView *text_view, GtkTextIter *iter, gint count);
function gtk_text_view_move_visually(text_view, iter, count) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_move_visually
  type(c_ptr), value :: text_view
  type(c_ptr), value :: iter
  integer(c_int), value :: count
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_view_im_context_filter_keypress (GtkTextView *text_view, GdkEvent *event);
function gtk_text_view_im_context_filter_keypress(text_view, event) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_im_context_filter_keypress
  type(c_ptr), value :: text_view
  type(c_ptr), value :: event
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_reset_im_context (GtkTextView *text_view);
subroutine gtk_text_view_reset_im_context(text_view) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: text_view
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_text_view_get_gutter (GtkTextView *text_view, GtkTextWindowType win);
function gtk_text_view_get_gutter(text_view, win) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_text_view_get_gutter
  type(c_ptr), value :: text_view
  integer(c_int), value :: win
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_set_gutter (GtkTextView *text_view, GtkTextWindowType win, GtkWidget *widget);
subroutine gtk_text_view_set_gutter(text_view, win, widget) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: text_view
  integer(c_int), value :: win
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_add_child_at_anchor (GtkTextView *text_view, GtkWidget *child, GtkTextChildAnchor *anchor);
subroutine gtk_text_view_add_child_at_anchor(text_view, child, anchor) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: text_view
  type(c_ptr), value :: child
  type(c_ptr), value :: anchor
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_add_overlay (GtkTextView *text_view, GtkWidget *child, gint xpos, gint ypos);
subroutine gtk_text_view_add_overlay(text_view, child, xpos, ypos) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: text_view
  type(c_ptr), value :: child
  integer(c_int), value :: xpos
  integer(c_int), value :: ypos
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_move_overlay (GtkTextView *text_view, GtkWidget *child, gint xpos, gint ypos);
subroutine gtk_text_view_move_overlay(text_view, child, xpos, ypos) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: text_view
  type(c_ptr), value :: child
  integer(c_int), value :: xpos
  integer(c_int), value :: ypos
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_set_wrap_mode (GtkTextView *text_view, GtkWrapMode wrap_mode);
subroutine gtk_text_view_set_wrap_mode(text_view, wrap_mode) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: text_view
  integer(c_int), value :: wrap_mode
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWrapMode gtk_text_view_get_wrap_mode (GtkTextView *text_view);
function gtk_text_view_get_wrap_mode(text_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_get_wrap_mode
  type(c_ptr), value :: text_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_set_editable (GtkTextView *text_view, gboolean setting);
subroutine gtk_text_view_set_editable(text_view, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: text_view
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_view_get_editable (GtkTextView *text_view);
function gtk_text_view_get_editable(text_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_get_editable
  type(c_ptr), value :: text_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_set_overwrite (GtkTextView *text_view, gboolean overwrite);
subroutine gtk_text_view_set_overwrite(text_view, overwrite) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: text_view
  integer(c_int), value :: overwrite
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_view_get_overwrite (GtkTextView *text_view);
function gtk_text_view_get_overwrite(text_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_get_overwrite
  type(c_ptr), value :: text_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_set_accepts_tab (GtkTextView *text_view, gboolean accepts_tab);
subroutine gtk_text_view_set_accepts_tab(text_view, accepts_tab) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: text_view
  integer(c_int), value :: accepts_tab
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_view_get_accepts_tab (GtkTextView *text_view);
function gtk_text_view_get_accepts_tab(text_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_get_accepts_tab
  type(c_ptr), value :: text_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_set_pixels_above_lines (GtkTextView *text_view, gint pixels_above_lines);
subroutine gtk_text_view_set_pixels_above_lines(text_view, pixels_above_lines)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: text_view
  integer(c_int), value :: pixels_above_lines
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_text_view_get_pixels_above_lines (GtkTextView *text_view);
function gtk_text_view_get_pixels_above_lines(text_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_get_pixels_above_lines
  type(c_ptr), value :: text_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_set_pixels_below_lines (GtkTextView *text_view, gint pixels_below_lines);
subroutine gtk_text_view_set_pixels_below_lines(text_view, pixels_below_lines)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: text_view
  integer(c_int), value :: pixels_below_lines
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_text_view_get_pixels_below_lines (GtkTextView *text_view);
function gtk_text_view_get_pixels_below_lines(text_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_get_pixels_below_lines
  type(c_ptr), value :: text_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_set_pixels_inside_wrap (GtkTextView *text_view, gint pixels_inside_wrap);
subroutine gtk_text_view_set_pixels_inside_wrap(text_view, pixels_inside_wrap)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: text_view
  integer(c_int), value :: pixels_inside_wrap
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_text_view_get_pixels_inside_wrap (GtkTextView *text_view);
function gtk_text_view_get_pixels_inside_wrap(text_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_get_pixels_inside_wrap
  type(c_ptr), value :: text_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_set_justification (GtkTextView *text_view, GtkJustification justification);
subroutine gtk_text_view_set_justification(text_view, justification) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: text_view
  integer(c_int), value :: justification
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkJustification gtk_text_view_get_justification (GtkTextView *text_view);
function gtk_text_view_get_justification(text_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_get_justification
  type(c_ptr), value :: text_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_set_left_margin (GtkTextView *text_view, gint left_margin);
subroutine gtk_text_view_set_left_margin(text_view, left_margin) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: text_view
  integer(c_int), value :: left_margin
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_text_view_get_left_margin (GtkTextView *text_view);
function gtk_text_view_get_left_margin(text_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_get_left_margin
  type(c_ptr), value :: text_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_set_right_margin (GtkTextView *text_view, gint right_margin);
subroutine gtk_text_view_set_right_margin(text_view, right_margin) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: text_view
  integer(c_int), value :: right_margin
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_text_view_get_right_margin (GtkTextView *text_view);
function gtk_text_view_get_right_margin(text_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_get_right_margin
  type(c_ptr), value :: text_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_set_top_margin (GtkTextView *text_view, gint top_margin);
subroutine gtk_text_view_set_top_margin(text_view, top_margin) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: text_view
  integer(c_int), value :: top_margin
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_text_view_get_top_margin (GtkTextView *text_view);
function gtk_text_view_get_top_margin(text_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_get_top_margin
  type(c_ptr), value :: text_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_set_bottom_margin (GtkTextView *text_view, gint bottom_margin);
subroutine gtk_text_view_set_bottom_margin(text_view, bottom_margin) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: text_view
  integer(c_int), value :: bottom_margin
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_text_view_get_bottom_margin (GtkTextView *text_view);
function gtk_text_view_get_bottom_margin(text_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_get_bottom_margin
  type(c_ptr), value :: text_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_set_indent (GtkTextView *text_view, gint indent);
subroutine gtk_text_view_set_indent(text_view, indent) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: text_view
  integer(c_int), value :: indent
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_text_view_get_indent (GtkTextView *text_view);
function gtk_text_view_get_indent(text_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_get_indent
  type(c_ptr), value :: text_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_set_tabs (GtkTextView *text_view, PangoTabArray *tabs);
subroutine gtk_text_view_set_tabs(text_view, tabs) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: text_view
  type(c_ptr), value :: tabs
end subroutine

! GDK_AVAILABLE_IN_ALL
!PangoTabArray* gtk_text_view_get_tabs (GtkTextView *text_view);
function gtk_text_view_get_tabs(text_view) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_view_get_tabs
  type(c_ptr), value :: text_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_set_input_purpose (GtkTextView *text_view, GtkInputPurpose purpose);
subroutine gtk_text_view_set_input_purpose(text_view, purpose) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: text_view
  integer(c_int), value :: purpose
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkInputPurpose gtk_text_view_get_input_purpose (GtkTextView *text_view);
function gtk_text_view_get_input_purpose(text_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_get_input_purpose
  type(c_ptr), value :: text_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_set_input_hints (GtkTextView *text_view, GtkInputHints hints);
subroutine gtk_text_view_set_input_hints(text_view, hints) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: text_view
  integer(c_int), value :: hints
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkInputHints gtk_text_view_get_input_hints (GtkTextView *text_view);
function gtk_text_view_get_input_hints(text_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_get_input_hints
  type(c_ptr), value :: text_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_set_monospace (GtkTextView *text_view, gboolean monospace);
subroutine gtk_text_view_set_monospace(text_view, monospace) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: text_view
  integer(c_int), value :: monospace
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_view_get_monospace (GtkTextView *text_view);
function gtk_text_view_get_monospace(text_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_view_get_monospace
  type(c_ptr), value :: text_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_view_set_extra_menu (GtkTextView *text_view, GMenuModel *model);
subroutine gtk_text_view_set_extra_menu(text_view, model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: text_view
  type(c_ptr), value :: model
end subroutine

! GDK_AVAILABLE_IN_ALL
!GMenuModel * gtk_text_view_get_extra_menu (GtkTextView *text_view);
function gtk_text_view_get_extra_menu(text_view) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_view_get_extra_menu
  type(c_ptr), value :: text_view
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_info_bar_get_type (void) G_GNUC_CONST;
function gtk_info_bar_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_info_bar_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_info_bar_new (void);
function gtk_info_bar_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_info_bar_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_info_bar_add_action_widget (GtkInfoBar *info_bar, GtkWidget *child, gint response_id);
subroutine gtk_info_bar_add_action_widget(info_bar, child, response_id) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: info_bar
  type(c_ptr), value :: child
  integer(c_int), value :: response_id
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_info_bar_add_button (GtkInfoBar *info_bar, const gchar *button_text, gint response_id);
function gtk_info_bar_add_button(info_bar, button_text, response_id) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int
  type(c_ptr) :: gtk_info_bar_add_button
  type(c_ptr), value :: info_bar
  character(kind=c_char), dimension(*) :: button_text
  integer(c_int), value :: response_id
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_info_bar_set_response_sensitive (GtkInfoBar *info_bar, gint response_id, gboolean setting);
subroutine gtk_info_bar_set_response_sensitive(info_bar, response_id, setting)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: info_bar
  integer(c_int), value :: response_id
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_info_bar_set_default_response (GtkInfoBar *info_bar, gint response_id);
subroutine gtk_info_bar_set_default_response(info_bar, response_id) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: info_bar
  integer(c_int), value :: response_id
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_info_bar_response (GtkInfoBar *info_bar, gint response_id);
subroutine gtk_info_bar_response(info_bar, response_id) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: info_bar
  integer(c_int), value :: response_id
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_info_bar_set_message_type (GtkInfoBar *info_bar, GtkMessageType message_type);
subroutine gtk_info_bar_set_message_type(info_bar, message_type) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: info_bar
  integer(c_int), value :: message_type
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkMessageType gtk_info_bar_get_message_type (GtkInfoBar *info_bar);
function gtk_info_bar_get_message_type(info_bar) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_info_bar_get_message_type
  type(c_ptr), value :: info_bar
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_info_bar_set_show_close_button (GtkInfoBar *info_bar, gboolean setting);
subroutine gtk_info_bar_set_show_close_button(info_bar, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: info_bar
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_info_bar_get_show_close_button (GtkInfoBar *info_bar);
function gtk_info_bar_get_show_close_button(info_bar) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_info_bar_get_show_close_button
  type(c_ptr), value :: info_bar
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_info_bar_set_revealed (GtkInfoBar *info_bar, gboolean revealed);
subroutine gtk_info_bar_set_revealed(info_bar, revealed) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: info_bar
  integer(c_int), value :: revealed
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_info_bar_get_revealed (GtkInfoBar *info_bar);
function gtk_info_bar_get_revealed(info_bar) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_info_bar_get_revealed
  type(c_ptr), value :: info_bar
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_text_get_type (void) G_GNUC_CONST;
function gtk_text_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_text_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_text_new (void);
function gtk_text_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_text_new_with_buffer (GtkEntryBuffer *buffer);
function gtk_text_new_with_buffer(buffer) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_new_with_buffer
  type(c_ptr), value :: buffer
end function

! GDK_AVAILABLE_IN_ALL
!GtkEntryBuffer *gtk_text_get_buffer (GtkText *self);
function gtk_text_get_buffer(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_get_buffer
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_set_buffer (GtkText *self, GtkEntryBuffer *buffer);
subroutine gtk_text_set_buffer(self, buffer) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: buffer
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_set_visibility (GtkText *self, gboolean visible);
subroutine gtk_text_set_visibility(self, visible) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: visible
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_get_visibility (GtkText *self);
function gtk_text_get_visibility(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_get_visibility
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_set_invisible_char (GtkText *self, gunichar ch);
subroutine gtk_text_set_invisible_char(self, ch) bind(c)
  use iso_c_binding, only: c_ptr, c_int32_t
  type(c_ptr), value :: self
  integer(c_int32_t), value :: ch
end subroutine

! GDK_AVAILABLE_IN_ALL
!gunichar gtk_text_get_invisible_char (GtkText *self);
function gtk_text_get_invisible_char(self) bind(c)
  use iso_c_binding, only: c_int32_t, c_ptr
  integer(c_int32_t) :: gtk_text_get_invisible_char
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_unset_invisible_char (GtkText *self);
subroutine gtk_text_unset_invisible_char(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_set_overwrite_mode (GtkText *self, gboolean overwrite);
subroutine gtk_text_set_overwrite_mode(self, overwrite) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: overwrite
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_get_overwrite_mode (GtkText *self);
function gtk_text_get_overwrite_mode(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_get_overwrite_mode
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_set_max_length (GtkText *self, int length);
subroutine gtk_text_set_max_length(self, length) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: length
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_text_get_max_length (GtkText *self);
function gtk_text_get_max_length(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_get_max_length
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!guint16 gtk_text_get_text_length (GtkText *self);
function gtk_text_get_text_length(self) bind(c)
  use iso_c_binding, only: c_int16_t, c_ptr
  integer(c_int16_t) :: gtk_text_get_text_length
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_set_activates_default (GtkText *self, gboolean activates);
subroutine gtk_text_set_activates_default(self, activates) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: activates
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_get_activates_default (GtkText *self);
function gtk_text_get_activates_default(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_get_activates_default
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!const char * gtk_text_get_placeholder_text (GtkText *self);
function gtk_text_get_placeholder_text(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_get_placeholder_text
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_set_placeholder_text (GtkText *self, const char *text);
subroutine gtk_text_set_placeholder_text(self, text) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: text
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_set_input_purpose (GtkText *self, GtkInputPurpose purpose);
subroutine gtk_text_set_input_purpose(self, purpose) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: purpose
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkInputPurpose gtk_text_get_input_purpose (GtkText *self);
function gtk_text_get_input_purpose(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_get_input_purpose
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_set_input_hints (GtkText *self, GtkInputHints hints);
subroutine gtk_text_set_input_hints(self, hints) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: hints
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkInputHints gtk_text_get_input_hints (GtkText *self);
function gtk_text_get_input_hints(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_get_input_hints
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_set_attributes (GtkText *self, PangoAttrList *attrs);
subroutine gtk_text_set_attributes(self, attrs) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: attrs
end subroutine

! GDK_AVAILABLE_IN_ALL
!PangoAttrList * gtk_text_get_attributes (GtkText *self);
function gtk_text_get_attributes(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_get_attributes
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_set_tabs (GtkText *self, PangoTabArray *tabs);
subroutine gtk_text_set_tabs(self, tabs) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: tabs
end subroutine

! GDK_AVAILABLE_IN_ALL
!PangoTabArray * gtk_text_get_tabs (GtkText *self);
function gtk_text_get_tabs(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_get_tabs
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_grab_focus_without_selecting (GtkText *self);
function gtk_text_grab_focus_without_selecting(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_grab_focus_without_selecting
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_set_extra_menu (GtkText *self, GMenuModel *model);
subroutine gtk_text_set_extra_menu(self, model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: model
end subroutine

! GDK_AVAILABLE_IN_ALL
!GMenuModel * gtk_text_get_extra_menu (GtkText *self);
function gtk_text_get_extra_menu(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_get_extra_menu
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_crossing_data_get_type (void) G_GNUC_CONST;
function gtk_crossing_data_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_crossing_data_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_event_controller_get_type (void) G_GNUC_CONST;
function gtk_event_controller_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_event_controller_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_event_controller_get_widget (GtkEventController *controller);
function gtk_event_controller_get_widget(controller) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_event_controller_get_widget
  type(c_ptr), value :: controller
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_event_controller_reset (GtkEventController *controller);
subroutine gtk_event_controller_reset(controller) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: controller
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkPropagationPhase gtk_event_controller_get_propagation_phase (GtkEventController *controller);
function gtk_event_controller_get_propagation_phase(controller) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_event_controller_get_propagation_phase
  type(c_ptr), value :: controller
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_event_controller_set_propagation_phase (GtkEventController *controller, GtkPropagationPhase phase);
subroutine gtk_event_controller_set_propagation_phase(controller, phase)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: controller
  integer(c_int), value :: phase
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkPropagationLimit gtk_event_controller_get_propagation_limit (GtkEventController *controller);
function gtk_event_controller_get_propagation_limit(controller) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_event_controller_get_propagation_limit
  type(c_ptr), value :: controller
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_event_controller_set_propagation_limit (GtkEventController *controller, GtkPropagationLimit limit);
subroutine gtk_event_controller_set_propagation_limit(controller, limit)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: controller
  integer(c_int), value :: limit
end subroutine

! GDK_AVAILABLE_IN_ALL
!const char * gtk_event_controller_get_name (GtkEventController *controller);
function gtk_event_controller_get_name(controller) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_event_controller_get_name
  type(c_ptr), value :: controller
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_event_controller_set_name (GtkEventController *controller, const char *name);
subroutine gtk_event_controller_set_name(controller, name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: controller
  character(kind=c_char), dimension(*) :: name
end subroutine

! GDK_AVAILABLE_IN_ALL
!guint gtk_get_major_version (void) G_GNUC_CONST;
function gtk_get_major_version() bind(c)
  use iso_c_binding, only: c_int
  integer(c_int) :: gtk_get_major_version
end function

! GDK_AVAILABLE_IN_ALL
!guint gtk_get_minor_version (void) G_GNUC_CONST;
function gtk_get_minor_version() bind(c)
  use iso_c_binding, only: c_int
  integer(c_int) :: gtk_get_minor_version
end function

! GDK_AVAILABLE_IN_ALL
!guint gtk_get_micro_version (void) G_GNUC_CONST;
function gtk_get_micro_version() bind(c)
  use iso_c_binding, only: c_int
  integer(c_int) :: gtk_get_micro_version
end function

! GDK_AVAILABLE_IN_ALL
!guint gtk_get_binary_age (void) G_GNUC_CONST;
function gtk_get_binary_age() bind(c)
  use iso_c_binding, only: c_int
  integer(c_int) :: gtk_get_binary_age
end function

! GDK_AVAILABLE_IN_ALL
!guint gtk_get_interface_age (void) G_GNUC_CONST;
function gtk_get_interface_age() bind(c)
  use iso_c_binding, only: c_int
  integer(c_int) :: gtk_get_interface_age
end function

! GDK_AVAILABLE_IN_ALL
!const gchar* gtk_check_version (guint required_major, guint required_minor, guint required_micro);
function gtk_check_version(required_major, required_minor, required_micro)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_check_version
  integer(c_int), value :: required_major
  integer(c_int), value :: required_minor
  integer(c_int), value :: required_micro
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_init_check (void);
function gtk_init_check() bind(c)
  use iso_c_binding, only: c_int
  integer(c_int) :: gtk_init_check
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_is_initialized (void);
function gtk_is_initialized() bind(c)
  use iso_c_binding, only: c_int
  integer(c_int) :: gtk_is_initialized
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_init_abi_check (int num_checks, size_t sizeof_GtkWindow, size_t sizeof_GtkBox);
subroutine gtk_init_abi_check(num_checks, sizeof_GtkWindow, sizeof_GtkBox)&
& bind(c)
  use iso_c_binding, only: c_int, c_size_t
  integer(c_int), value :: num_checks
  integer(c_size_t), value :: sizeof_GtkWindow
  integer(c_size_t), value :: sizeof_GtkBox
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_init_check_abi_check (int num_checks, size_t sizeof_GtkWindow, size_t sizeof_GtkBox);
function gtk_init_check_abi_check(num_checks, sizeof_GtkWindow, sizeof_GtkBox)&
& bind(c)
  use iso_c_binding, only: c_int, c_size_t
  integer(c_int) :: gtk_init_check_abi_check
  integer(c_int), value :: num_checks
  integer(c_size_t), value :: sizeof_GtkWindow
  integer(c_size_t), value :: sizeof_GtkBox
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_disable_setlocale (void);
subroutine gtk_disable_setlocale() bind(c)
  use iso_c_binding, only: 
end subroutine

! GDK_AVAILABLE_IN_ALL
!PangoLanguage *gtk_get_default_language (void);
function gtk_get_default_language() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_get_default_language
end function

! GDK_AVAILABLE_IN_ALL
!GtkTextDirection gtk_get_locale_direction (void);
function gtk_get_locale_direction() bind(c)
  use iso_c_binding, only: c_int
  integer(c_int) :: gtk_get_locale_direction
end function

! GDK_AVAILABLE_IN_ALL
!GdkEvent * gtk_get_current_event (void);
function gtk_get_current_event() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_get_current_event
end function

! GDK_AVAILABLE_IN_ALL
!guint32 gtk_get_current_event_time (void);
function gtk_get_current_event_time() bind(c)
  use iso_c_binding, only: c_int32_t
  integer(c_int32_t) :: gtk_get_current_event_time
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_get_current_event_state (GdkModifierType *state);
function gtk_get_current_event_state(state) bind(c)
  use iso_c_binding, only: c_int
  integer(c_int) :: gtk_get_current_event_state
  integer(c_int), value :: state
end function

! GDK_AVAILABLE_IN_ALL
!GdkDevice *gtk_get_current_event_device (void);
function gtk_get_current_event_device() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_get_current_event_device
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_app_chooser_widget_get_type (void) G_GNUC_CONST;
function gtk_app_chooser_widget_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_app_chooser_widget_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_app_chooser_widget_new (const gchar *content_type);
function gtk_app_chooser_widget_new(content_type) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_app_chooser_widget_new
  character(kind=c_char), dimension(*) :: content_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_app_chooser_widget_set_show_default (GtkAppChooserWidget *self, gboolean setting);
subroutine gtk_app_chooser_widget_set_show_default(self, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_app_chooser_widget_get_show_default (GtkAppChooserWidget *self);
function gtk_app_chooser_widget_get_show_default(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_app_chooser_widget_get_show_default
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_app_chooser_widget_set_show_recommended (GtkAppChooserWidget *self, gboolean setting);
subroutine gtk_app_chooser_widget_set_show_recommended(self, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_app_chooser_widget_get_show_recommended (GtkAppChooserWidget *self);
function gtk_app_chooser_widget_get_show_recommended(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_app_chooser_widget_get_show_recommended
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_app_chooser_widget_set_show_fallback (GtkAppChooserWidget *self, gboolean setting);
subroutine gtk_app_chooser_widget_set_show_fallback(self, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_app_chooser_widget_get_show_fallback (GtkAppChooserWidget *self);
function gtk_app_chooser_widget_get_show_fallback(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_app_chooser_widget_get_show_fallback
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_app_chooser_widget_set_show_other (GtkAppChooserWidget *self, gboolean setting);
subroutine gtk_app_chooser_widget_set_show_other(self, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_app_chooser_widget_get_show_other (GtkAppChooserWidget *self);
function gtk_app_chooser_widget_get_show_other(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_app_chooser_widget_get_show_other
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_app_chooser_widget_set_show_all (GtkAppChooserWidget *self, gboolean setting);
subroutine gtk_app_chooser_widget_set_show_all(self, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_app_chooser_widget_get_show_all (GtkAppChooserWidget *self);
function gtk_app_chooser_widget_get_show_all(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_app_chooser_widget_get_show_all
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_app_chooser_widget_set_default_text (GtkAppChooserWidget *self, const gchar *text);
subroutine gtk_app_chooser_widget_set_default_text(self, text) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: text
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_app_chooser_widget_get_default_text (GtkAppChooserWidget *self);
function gtk_app_chooser_widget_get_default_text(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_app_chooser_widget_get_default_text
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GtkSortListModel * gtk_sort_list_model_new_for_type (GType item_type);
function gtk_sort_list_model_new_for_type(item_type) bind(c)
  use iso_c_binding, only: c_ptr, c_size_t
  type(c_ptr) :: gtk_sort_list_model_new_for_type
  integer(c_size_t), value :: item_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_sort_list_model_set_sort_func (GtkSortListModel *self, GCompareDataFunc sort_func, gpointer user_data, GDestroyNotify user_destroy);
subroutine gtk_sort_list_model_set_sort_func(self, sort_func, user_data,&
& user_destroy) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: self
  type(c_funptr), value :: sort_func
  type(c_ptr), value :: user_data
  type(c_funptr), value :: user_destroy
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_sort_list_model_has_sort (GtkSortListModel *self);
function gtk_sort_list_model_has_sort(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_sort_list_model_has_sort
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_sort_list_model_set_model (GtkSortListModel *self, GListModel *model);
subroutine gtk_sort_list_model_set_model(self, model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: model
end subroutine

! GDK_AVAILABLE_IN_ALL
!GListModel * gtk_sort_list_model_get_model (GtkSortListModel *self);
function gtk_sort_list_model_get_model(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_sort_list_model_get_model
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_sort_list_model_resort (GtkSortListModel *self);
subroutine gtk_sort_list_model_resort(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_cell_renderer_get_type (void) G_GNUC_CONST;
function gtk_cell_renderer_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_cell_renderer_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkSizeRequestMode gtk_cell_renderer_get_request_mode (GtkCellRenderer *cell);
function gtk_cell_renderer_get_request_mode(cell) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_cell_renderer_get_request_mode
  type(c_ptr), value :: cell
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_renderer_get_preferred_width (GtkCellRenderer *cell, GtkWidget *widget, gint *minimum_size, gint *natural_size);
subroutine gtk_cell_renderer_get_preferred_width(cell, widget, minimum_size,&
& natural_size) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: cell
  type(c_ptr), value :: widget
  type(c_ptr), value :: minimum_size
  type(c_ptr), value :: natural_size
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_renderer_get_preferred_height_for_width (GtkCellRenderer *cell, GtkWidget *widget, gint width, gint *minimum_height, gint *natural_height);
subroutine gtk_cell_renderer_get_preferred_height_for_width(cell, widget,&
& width, minimum_height, natural_height) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: cell
  type(c_ptr), value :: widget
  integer(c_int), value :: width
  type(c_ptr), value :: minimum_height
  type(c_ptr), value :: natural_height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_renderer_get_preferred_height (GtkCellRenderer *cell, GtkWidget *widget, gint *minimum_size, gint *natural_size);
subroutine gtk_cell_renderer_get_preferred_height(cell, widget, minimum_size,&
& natural_size) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: cell
  type(c_ptr), value :: widget
  type(c_ptr), value :: minimum_size
  type(c_ptr), value :: natural_size
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_renderer_get_preferred_width_for_height (GtkCellRenderer *cell, GtkWidget *widget, gint height, gint *minimum_width, gint *natural_width);
subroutine gtk_cell_renderer_get_preferred_width_for_height(cell, widget,&
& height, minimum_width, natural_width) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: cell
  type(c_ptr), value :: widget
  integer(c_int), value :: height
  type(c_ptr), value :: minimum_width
  type(c_ptr), value :: natural_width
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_renderer_get_preferred_size (GtkCellRenderer *cell, GtkWidget *widget, GtkRequisition *minimum_size, GtkRequisition *natural_size);
subroutine gtk_cell_renderer_get_preferred_size(cell, widget, minimum_size,&
& natural_size) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: cell
  type(c_ptr), value :: widget
  type(c_ptr), value :: minimum_size
  type(c_ptr), value :: natural_size
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_renderer_get_aligned_area (GtkCellRenderer *cell, GtkWidget *widget, GtkCellRendererState flags, const GdkRectangle *cell_area, GdkRectangle *aligned_area);
subroutine gtk_cell_renderer_get_aligned_area(cell, widget, flags, cell_area,&
& aligned_area) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: cell
  type(c_ptr), value :: widget
  integer(c_int), value :: flags
  type(c_ptr), value :: cell_area
  type(c_ptr), value :: aligned_area
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_renderer_snapshot (GtkCellRenderer *cell, GtkSnapshot *snapshot, GtkWidget *widget, const GdkRectangle *background_area, const GdkRectangle *cell_area, GtkCellRendererState flags);
subroutine gtk_cell_renderer_snapshot(cell, snapshot, widget, background_area,&
& cell_area, flags) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: cell
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: widget
  type(c_ptr), value :: background_area
  type(c_ptr), value :: cell_area
  integer(c_int), value :: flags
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_cell_renderer_activate (GtkCellRenderer *cell, GdkEvent *event, GtkWidget *widget, const gchar *path, const GdkRectangle *background_area, const GdkRectangle *cell_area, GtkCellRendererState flags);
function gtk_cell_renderer_activate(cell, event, widget, path, background_area,&
& cell_area, flags) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_cell_renderer_activate
  type(c_ptr), value :: cell
  type(c_ptr), value :: event
  type(c_ptr), value :: widget
  character(kind=c_char), dimension(*) :: path
  type(c_ptr), value :: background_area
  type(c_ptr), value :: cell_area
  integer(c_int), value :: flags
end function

! GDK_AVAILABLE_IN_ALL
!GtkCellEditable *gtk_cell_renderer_start_editing (GtkCellRenderer *cell, GdkEvent *event, GtkWidget *widget, const gchar *path, const GdkRectangle *background_area, const GdkRectangle *cell_area, GtkCellRendererState flags);
function gtk_cell_renderer_start_editing(cell, event, widget, path,&
& background_area, cell_area, flags) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int
  type(c_ptr) :: gtk_cell_renderer_start_editing
  type(c_ptr), value :: cell
  type(c_ptr), value :: event
  type(c_ptr), value :: widget
  character(kind=c_char), dimension(*) :: path
  type(c_ptr), value :: background_area
  type(c_ptr), value :: cell_area
  integer(c_int), value :: flags
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_renderer_set_fixed_size (GtkCellRenderer *cell, gint width, gint height);
subroutine gtk_cell_renderer_set_fixed_size(cell, width, height) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: cell
  integer(c_int), value :: width
  integer(c_int), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_renderer_get_fixed_size (GtkCellRenderer *cell, gint *width, gint *height);
subroutine gtk_cell_renderer_get_fixed_size(cell, width, height) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: cell
  type(c_ptr), value :: width
  type(c_ptr), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_renderer_set_alignment (GtkCellRenderer *cell, gfloat xalign, gfloat yalign);
subroutine gtk_cell_renderer_set_alignment(cell, xalign, yalign) bind(c)
  use iso_c_binding, only: c_ptr, c_float
  type(c_ptr), value :: cell
  real(c_float), value :: xalign
  real(c_float), value :: yalign
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_renderer_get_alignment (GtkCellRenderer *cell, gfloat *xalign, gfloat *yalign);
subroutine gtk_cell_renderer_get_alignment(cell, xalign, yalign) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: cell
  type(c_ptr), value :: xalign
  type(c_ptr), value :: yalign
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_renderer_set_padding (GtkCellRenderer *cell, gint xpad, gint ypad);
subroutine gtk_cell_renderer_set_padding(cell, xpad, ypad) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: cell
  integer(c_int), value :: xpad
  integer(c_int), value :: ypad
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_renderer_get_padding (GtkCellRenderer *cell, gint *xpad, gint *ypad);
subroutine gtk_cell_renderer_get_padding(cell, xpad, ypad) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: cell
  type(c_ptr), value :: xpad
  type(c_ptr), value :: ypad
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_renderer_set_visible (GtkCellRenderer *cell, gboolean visible);
subroutine gtk_cell_renderer_set_visible(cell, visible) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: cell
  integer(c_int), value :: visible
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_cell_renderer_get_visible (GtkCellRenderer *cell);
function gtk_cell_renderer_get_visible(cell) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_cell_renderer_get_visible
  type(c_ptr), value :: cell
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_renderer_set_sensitive (GtkCellRenderer *cell, gboolean sensitive);
subroutine gtk_cell_renderer_set_sensitive(cell, sensitive) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: cell
  integer(c_int), value :: sensitive
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_cell_renderer_get_sensitive (GtkCellRenderer *cell);
function gtk_cell_renderer_get_sensitive(cell) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_cell_renderer_get_sensitive
  type(c_ptr), value :: cell
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_cell_renderer_is_activatable (GtkCellRenderer *cell);
function gtk_cell_renderer_is_activatable(cell) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_cell_renderer_is_activatable
  type(c_ptr), value :: cell
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_renderer_set_is_expander (GtkCellRenderer *cell, gboolean is_expander);
subroutine gtk_cell_renderer_set_is_expander(cell, is_expander) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: cell
  integer(c_int), value :: is_expander
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_cell_renderer_get_is_expander (GtkCellRenderer *cell);
function gtk_cell_renderer_get_is_expander(cell) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_cell_renderer_get_is_expander
  type(c_ptr), value :: cell
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_renderer_set_is_expanded (GtkCellRenderer *cell, gboolean is_expander);
subroutine gtk_cell_renderer_set_is_expanded(cell, is_expander) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: cell
  integer(c_int), value :: is_expander
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_cell_renderer_get_is_expanded (GtkCellRenderer *cell);
function gtk_cell_renderer_get_is_expanded(cell) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_cell_renderer_get_is_expanded
  type(c_ptr), value :: cell
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_renderer_stop_editing (GtkCellRenderer *cell, gboolean canceled);
subroutine gtk_cell_renderer_stop_editing(cell, canceled) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: cell
  integer(c_int), value :: canceled
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkStateFlags gtk_cell_renderer_get_state (GtkCellRenderer *cell, GtkWidget *widget, GtkCellRendererState cell_state);
function gtk_cell_renderer_get_state(cell, widget, cell_state) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_cell_renderer_get_state
  type(c_ptr), value :: cell
  type(c_ptr), value :: widget
  integer(c_int), value :: cell_state
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_renderer_class_set_accessible_type (GtkCellRendererClass *renderer_class, GType type);
subroutine gtk_cell_renderer_class_set_accessible_type(renderer_class, type)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_size_t
  type(c_ptr), value :: renderer_class
  integer(c_size_t), value :: type
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_check_button_get_type (void) G_GNUC_CONST;
function gtk_check_button_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_check_button_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_check_button_new (void);
function gtk_check_button_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_check_button_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_check_button_new_with_label (const gchar *label);
function gtk_check_button_new_with_label(label) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_check_button_new_with_label
  character(kind=c_char), dimension(*) :: label
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_check_button_new_with_mnemonic (const gchar *label);
function gtk_check_button_new_with_mnemonic(label) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_check_button_new_with_mnemonic
  character(kind=c_char), dimension(*) :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_check_button_set_draw_indicator (GtkCheckButton *check_button, gboolean draw_indicator);
subroutine gtk_check_button_set_draw_indicator(check_button, draw_indicator)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: check_button
  integer(c_int), value :: draw_indicator
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_check_button_get_draw_indicator (GtkCheckButton *check_button);
function gtk_check_button_get_draw_indicator(check_button) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_check_button_get_draw_indicator
  type(c_ptr), value :: check_button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_check_button_set_inconsistent (GtkCheckButton *check_button, gboolean inconsistent);
subroutine gtk_check_button_set_inconsistent(check_button, inconsistent)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: check_button
  integer(c_int), value :: inconsistent
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_check_button_get_inconsistent (GtkCheckButton *check_button);
function gtk_check_button_get_inconsistent(check_button) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_check_button_get_inconsistent
  type(c_ptr), value :: check_button
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_shortcuts_group_get_type (void) G_GNUC_CONST;
function gtk_shortcuts_group_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_shortcuts_group_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_radio_button_get_type (void) G_GNUC_CONST;
function gtk_radio_button_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_radio_button_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_radio_button_new (GSList *group);
function gtk_radio_button_new(group) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_radio_button_new
  type(c_ptr), value :: group
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_radio_button_new_from_widget (GtkRadioButton *radio_group_member);
function gtk_radio_button_new_from_widget(radio_group_member) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_radio_button_new_from_widget
  type(c_ptr), value :: radio_group_member
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_radio_button_new_with_label (GSList *group, const gchar *label);
function gtk_radio_button_new_with_label(group, label) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_radio_button_new_with_label
  type(c_ptr), value :: group
  character(kind=c_char), dimension(*) :: label
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_radio_button_new_with_label_from_widget (GtkRadioButton *radio_group_member, const gchar *label);
function gtk_radio_button_new_with_label_from_widget(radio_group_member, label)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_radio_button_new_with_label_from_widget
  type(c_ptr), value :: radio_group_member
  character(kind=c_char), dimension(*) :: label
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_radio_button_new_with_mnemonic (GSList *group, const gchar *label);
function gtk_radio_button_new_with_mnemonic(group, label) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_radio_button_new_with_mnemonic
  type(c_ptr), value :: group
  character(kind=c_char), dimension(*) :: label
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_radio_button_new_with_mnemonic_from_widget (GtkRadioButton *radio_group_member, const gchar *label);
function gtk_radio_button_new_with_mnemonic_from_widget(radio_group_member,&
& label) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_radio_button_new_with_mnemonic_from_widget
  type(c_ptr), value :: radio_group_member
  character(kind=c_char), dimension(*) :: label
end function

! GDK_AVAILABLE_IN_ALL
!GSList* gtk_radio_button_get_group (GtkRadioButton *radio_button);
function gtk_radio_button_get_group(radio_button) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_radio_button_get_group
  type(c_ptr), value :: radio_button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_radio_button_set_group (GtkRadioButton *radio_button, GSList *group);
subroutine gtk_radio_button_set_group(radio_button, group) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: radio_button
  type(c_ptr), value :: group
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_radio_button_join_group (GtkRadioButton *radio_button, GtkRadioButton *group_source);
subroutine gtk_radio_button_join_group(radio_button, group_source) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: radio_button
  type(c_ptr), value :: group_source
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_print_settings_get_type (void) G_GNUC_CONST;
function gtk_print_settings_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_print_settings_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkPrintSettings *gtk_print_settings_new (void);
function gtk_print_settings_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_print_settings_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkPrintSettings *gtk_print_settings_copy (GtkPrintSettings *other);
function gtk_print_settings_copy(other) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_print_settings_copy
  type(c_ptr), value :: other
end function

! GDK_AVAILABLE_IN_ALL
!GtkPrintSettings *gtk_print_settings_new_from_file (const gchar *file_name, GError **error);
function gtk_print_settings_new_from_file(file_name, error) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_print_settings_new_from_file
  character(kind=c_char), dimension(*) :: file_name
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_print_settings_load_file (GtkPrintSettings *settings, const gchar *file_name, GError **error);
function gtk_print_settings_load_file(settings, file_name, error) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_print_settings_load_file
  type(c_ptr), value :: settings
  character(kind=c_char), dimension(*) :: file_name
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_print_settings_to_file (GtkPrintSettings *settings, const gchar *file_name, GError **error);
function gtk_print_settings_to_file(settings, file_name, error) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_print_settings_to_file
  type(c_ptr), value :: settings
  character(kind=c_char), dimension(*) :: file_name
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!GtkPrintSettings *gtk_print_settings_new_from_key_file (GKeyFile *key_file, const gchar *group_name, GError **error);
function gtk_print_settings_new_from_key_file(key_file, group_name, error)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_print_settings_new_from_key_file
  type(c_ptr), value :: key_file
  character(kind=c_char), dimension(*) :: group_name
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_print_settings_load_key_file (GtkPrintSettings *settings, GKeyFile *key_file, const gchar *group_name, GError **error);
function gtk_print_settings_load_key_file(settings, key_file, group_name,&
& error) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_print_settings_load_key_file
  type(c_ptr), value :: settings
  type(c_ptr), value :: key_file
  character(kind=c_char), dimension(*) :: group_name
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_to_key_file (GtkPrintSettings *settings, GKeyFile *key_file, const gchar *group_name);
subroutine gtk_print_settings_to_key_file(settings, key_file, group_name)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: settings
  type(c_ptr), value :: key_file
  character(kind=c_char), dimension(*) :: group_name
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_print_settings_has_key (GtkPrintSettings *settings, const gchar *key);
function gtk_print_settings_has_key(settings, key) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_print_settings_has_key
  type(c_ptr), value :: settings
  character(kind=c_char), dimension(*) :: key
end function

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_print_settings_get (GtkPrintSettings *settings, const gchar *key);
function gtk_print_settings_get(settings, key) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_print_settings_get
  type(c_ptr), value :: settings
  character(kind=c_char), dimension(*) :: key
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set (GtkPrintSettings *settings, const gchar *key, const gchar *value);
subroutine gtk_print_settings_set(settings, key, value) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: settings
  character(kind=c_char), dimension(*) :: key
  character(kind=c_char), dimension(*) :: value
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_unset (GtkPrintSettings *settings, const gchar *key);
subroutine gtk_print_settings_unset(settings, key) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: settings
  character(kind=c_char), dimension(*) :: key
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_foreach (GtkPrintSettings *settings, GtkPrintSettingsFunc func, gpointer user_data);
subroutine gtk_print_settings_foreach(settings, func, user_data) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: settings
  type(c_funptr), value :: func
  type(c_ptr), value :: user_data
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_print_settings_get_bool (GtkPrintSettings *settings, const gchar *key);
function gtk_print_settings_get_bool(settings, key) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_print_settings_get_bool
  type(c_ptr), value :: settings
  character(kind=c_char), dimension(*) :: key
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_bool (GtkPrintSettings *settings, const gchar *key, gboolean value);
subroutine gtk_print_settings_set_bool(settings, key, value) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int
  type(c_ptr), value :: settings
  character(kind=c_char), dimension(*) :: key
  integer(c_int), value :: value
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_print_settings_get_double (GtkPrintSettings *settings, const gchar *key);
function gtk_print_settings_get_double(settings, key) bind(c)
  use iso_c_binding, only: c_double, c_ptr, c_char
  real(c_double) :: gtk_print_settings_get_double
  type(c_ptr), value :: settings
  character(kind=c_char), dimension(*) :: key
end function

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_print_settings_get_double_with_default (GtkPrintSettings *settings, const gchar *key, gdouble def);
function gtk_print_settings_get_double_with_default(settings, key, def) bind(c)
  use iso_c_binding, only: c_double, c_ptr, c_char
  real(c_double) :: gtk_print_settings_get_double_with_default
  type(c_ptr), value :: settings
  character(kind=c_char), dimension(*) :: key
  real(c_double), value :: def
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_double (GtkPrintSettings *settings, const gchar *key, gdouble value);
subroutine gtk_print_settings_set_double(settings, key, value) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_double
  type(c_ptr), value :: settings
  character(kind=c_char), dimension(*) :: key
  real(c_double), value :: value
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_print_settings_get_length (GtkPrintSettings *settings, const gchar *key, GtkUnit unit);
function gtk_print_settings_get_length(settings, key, unit) bind(c)
  use iso_c_binding, only: c_double, c_ptr, c_char, c_int
  real(c_double) :: gtk_print_settings_get_length
  type(c_ptr), value :: settings
  character(kind=c_char), dimension(*) :: key
  integer(c_int), value :: unit
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_length (GtkPrintSettings *settings, const gchar *key, gdouble value, GtkUnit unit);
subroutine gtk_print_settings_set_length(settings, key, value, unit) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_double, c_int
  type(c_ptr), value :: settings
  character(kind=c_char), dimension(*) :: key
  real(c_double), value :: value
  integer(c_int), value :: unit
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_print_settings_get_int (GtkPrintSettings *settings, const gchar *key);
function gtk_print_settings_get_int(settings, key) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_print_settings_get_int
  type(c_ptr), value :: settings
  character(kind=c_char), dimension(*) :: key
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_print_settings_get_int_with_default (GtkPrintSettings *settings, const gchar *key, gint def);
function gtk_print_settings_get_int_with_default(settings, key, def) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_print_settings_get_int_with_default
  type(c_ptr), value :: settings
  character(kind=c_char), dimension(*) :: key
  integer(c_int), value :: def
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_int (GtkPrintSettings *settings, const gchar *key, gint value);
subroutine gtk_print_settings_set_int(settings, key, value) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int
  type(c_ptr), value :: settings
  character(kind=c_char), dimension(*) :: key
  integer(c_int), value :: value
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_print_settings_get_printer (GtkPrintSettings *settings);
function gtk_print_settings_get_printer(settings) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_print_settings_get_printer
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_printer (GtkPrintSettings *settings, const gchar *printer);
subroutine gtk_print_settings_set_printer(settings, printer) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: settings
  character(kind=c_char), dimension(*) :: printer
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkPageOrientation gtk_print_settings_get_orientation (GtkPrintSettings *settings);
function gtk_print_settings_get_orientation(settings) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_settings_get_orientation
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_orientation (GtkPrintSettings *settings, GtkPageOrientation orientation);
subroutine gtk_print_settings_set_orientation(settings, orientation) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: settings
  integer(c_int), value :: orientation
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkPaperSize * gtk_print_settings_get_paper_size (GtkPrintSettings *settings);
function gtk_print_settings_get_paper_size(settings) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_print_settings_get_paper_size
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_paper_size (GtkPrintSettings *settings, GtkPaperSize *paper_size);
subroutine gtk_print_settings_set_paper_size(settings, paper_size) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: settings
  type(c_ptr), value :: paper_size
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_print_settings_get_paper_width (GtkPrintSettings *settings, GtkUnit unit);
function gtk_print_settings_get_paper_width(settings, unit) bind(c)
  use iso_c_binding, only: c_double, c_ptr, c_int
  real(c_double) :: gtk_print_settings_get_paper_width
  type(c_ptr), value :: settings
  integer(c_int), value :: unit
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_paper_width (GtkPrintSettings *settings, gdouble width, GtkUnit unit);
subroutine gtk_print_settings_set_paper_width(settings, width, unit) bind(c)
  use iso_c_binding, only: c_ptr, c_double, c_int
  type(c_ptr), value :: settings
  real(c_double), value :: width
  integer(c_int), value :: unit
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_print_settings_get_paper_height (GtkPrintSettings *settings, GtkUnit unit);
function gtk_print_settings_get_paper_height(settings, unit) bind(c)
  use iso_c_binding, only: c_double, c_ptr, c_int
  real(c_double) :: gtk_print_settings_get_paper_height
  type(c_ptr), value :: settings
  integer(c_int), value :: unit
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_paper_height (GtkPrintSettings *settings, gdouble height, GtkUnit unit);
subroutine gtk_print_settings_set_paper_height(settings, height, unit) bind(c)
  use iso_c_binding, only: c_ptr, c_double, c_int
  type(c_ptr), value :: settings
  real(c_double), value :: height
  integer(c_int), value :: unit
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_print_settings_get_use_color (GtkPrintSettings *settings);
function gtk_print_settings_get_use_color(settings) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_settings_get_use_color
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_use_color (GtkPrintSettings *settings, gboolean use_color);
subroutine gtk_print_settings_set_use_color(settings, use_color) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: settings
  integer(c_int), value :: use_color
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_print_settings_get_collate (GtkPrintSettings *settings);
function gtk_print_settings_get_collate(settings) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_settings_get_collate
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_collate (GtkPrintSettings *settings, gboolean collate);
subroutine gtk_print_settings_set_collate(settings, collate) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: settings
  integer(c_int), value :: collate
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_print_settings_get_reverse (GtkPrintSettings *settings);
function gtk_print_settings_get_reverse(settings) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_settings_get_reverse
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_reverse (GtkPrintSettings *settings, gboolean reverse);
subroutine gtk_print_settings_set_reverse(settings, reverse) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: settings
  integer(c_int), value :: reverse
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkPrintDuplex gtk_print_settings_get_duplex (GtkPrintSettings *settings);
function gtk_print_settings_get_duplex(settings) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_settings_get_duplex
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_duplex (GtkPrintSettings *settings, GtkPrintDuplex duplex);
subroutine gtk_print_settings_set_duplex(settings, duplex) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: settings
  integer(c_int), value :: duplex
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkPrintQuality gtk_print_settings_get_quality (GtkPrintSettings *settings);
function gtk_print_settings_get_quality(settings) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_settings_get_quality
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_quality (GtkPrintSettings *settings, GtkPrintQuality quality);
subroutine gtk_print_settings_set_quality(settings, quality) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: settings
  integer(c_int), value :: quality
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_print_settings_get_n_copies (GtkPrintSettings *settings);
function gtk_print_settings_get_n_copies(settings) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_settings_get_n_copies
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_n_copies (GtkPrintSettings *settings, gint num_copies);
subroutine gtk_print_settings_set_n_copies(settings, num_copies) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: settings
  integer(c_int), value :: num_copies
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_print_settings_get_number_up (GtkPrintSettings *settings);
function gtk_print_settings_get_number_up(settings) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_settings_get_number_up
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_number_up (GtkPrintSettings *settings, gint number_up);
subroutine gtk_print_settings_set_number_up(settings, number_up) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: settings
  integer(c_int), value :: number_up
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkNumberUpLayout gtk_print_settings_get_number_up_layout (GtkPrintSettings *settings);
function gtk_print_settings_get_number_up_layout(settings) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_settings_get_number_up_layout
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_number_up_layout (GtkPrintSettings *settings, GtkNumberUpLayout number_up_layout);
subroutine gtk_print_settings_set_number_up_layout(settings, number_up_layout)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: settings
  integer(c_int), value :: number_up_layout
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_print_settings_get_resolution (GtkPrintSettings *settings);
function gtk_print_settings_get_resolution(settings) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_settings_get_resolution
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_resolution (GtkPrintSettings *settings, gint resolution);
subroutine gtk_print_settings_set_resolution(settings, resolution) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: settings
  integer(c_int), value :: resolution
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_print_settings_get_resolution_x (GtkPrintSettings *settings);
function gtk_print_settings_get_resolution_x(settings) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_settings_get_resolution_x
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_print_settings_get_resolution_y (GtkPrintSettings *settings);
function gtk_print_settings_get_resolution_y(settings) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_settings_get_resolution_y
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_resolution_xy (GtkPrintSettings *settings, gint resolution_x, gint resolution_y);
subroutine gtk_print_settings_set_resolution_xy(settings, resolution_x,&
& resolution_y) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: settings
  integer(c_int), value :: resolution_x
  integer(c_int), value :: resolution_y
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_print_settings_get_printer_lpi (GtkPrintSettings *settings);
function gtk_print_settings_get_printer_lpi(settings) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_print_settings_get_printer_lpi
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_printer_lpi (GtkPrintSettings *settings, gdouble lpi);
subroutine gtk_print_settings_set_printer_lpi(settings, lpi) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: settings
  real(c_double), value :: lpi
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_print_settings_get_scale (GtkPrintSettings *settings);
function gtk_print_settings_get_scale(settings) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_print_settings_get_scale
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_scale (GtkPrintSettings *settings, gdouble scale);
subroutine gtk_print_settings_set_scale(settings, scale) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: settings
  real(c_double), value :: scale
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkPrintPages gtk_print_settings_get_print_pages (GtkPrintSettings *settings);
function gtk_print_settings_get_print_pages(settings) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_settings_get_print_pages
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_print_pages (GtkPrintSettings *settings, GtkPrintPages pages);
subroutine gtk_print_settings_set_print_pages(settings, pages) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: settings
  integer(c_int), value :: pages
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkPageRange * gtk_print_settings_get_page_ranges (GtkPrintSettings *settings, gint *num_ranges);
function gtk_print_settings_get_page_ranges(settings, num_ranges) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_print_settings_get_page_ranges
  type(c_ptr), value :: settings
  type(c_ptr), value :: num_ranges
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_page_ranges (GtkPrintSettings *settings, GtkPageRange *page_ranges, gint num_ranges);
subroutine gtk_print_settings_set_page_ranges(settings, page_ranges,&
& num_ranges) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: settings
  type(c_ptr), value :: page_ranges
  integer(c_int), value :: num_ranges
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkPageSet gtk_print_settings_get_page_set (GtkPrintSettings *settings);
function gtk_print_settings_get_page_set(settings) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_settings_get_page_set
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_page_set (GtkPrintSettings *settings, GtkPageSet page_set);
subroutine gtk_print_settings_set_page_set(settings, page_set) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: settings
  integer(c_int), value :: page_set
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_print_settings_get_default_source (GtkPrintSettings *settings);
function gtk_print_settings_get_default_source(settings) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_print_settings_get_default_source
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_default_source (GtkPrintSettings *settings, const gchar *default_source);
subroutine gtk_print_settings_set_default_source(settings, default_source)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: settings
  character(kind=c_char), dimension(*) :: default_source
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_print_settings_get_media_type (GtkPrintSettings *settings);
function gtk_print_settings_get_media_type(settings) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_print_settings_get_media_type
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_media_type (GtkPrintSettings *settings, const gchar *media_type);
subroutine gtk_print_settings_set_media_type(settings, media_type) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: settings
  character(kind=c_char), dimension(*) :: media_type
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_print_settings_get_dither (GtkPrintSettings *settings);
function gtk_print_settings_get_dither(settings) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_print_settings_get_dither
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_dither (GtkPrintSettings *settings, const gchar *dither);
subroutine gtk_print_settings_set_dither(settings, dither) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: settings
  character(kind=c_char), dimension(*) :: dither
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_print_settings_get_finishings (GtkPrintSettings *settings);
function gtk_print_settings_get_finishings(settings) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_print_settings_get_finishings
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_finishings (GtkPrintSettings *settings, const gchar *finishings);
subroutine gtk_print_settings_set_finishings(settings, finishings) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: settings
  character(kind=c_char), dimension(*) :: finishings
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_print_settings_get_output_bin (GtkPrintSettings *settings);
function gtk_print_settings_get_output_bin(settings) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_print_settings_get_output_bin
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_settings_set_output_bin (GtkPrintSettings *settings, const gchar *output_bin);
subroutine gtk_print_settings_set_output_bin(settings, output_bin) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: settings
  character(kind=c_char), dimension(*) :: output_bin
end subroutine

! GDK_AVAILABLE_IN_ALL
!GVariant *gtk_print_settings_to_gvariant (GtkPrintSettings *settings);
function gtk_print_settings_to_gvariant(settings) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_print_settings_to_gvariant
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!GtkPrintSettings *gtk_print_settings_new_from_gvariant (GVariant *variant);
function gtk_print_settings_new_from_gvariant(variant) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_print_settings_new_from_gvariant
  type(c_ptr), value :: variant
end function

! GDK_AVAILABLE_IN_ALL
!GtkLayoutManager * gtk_constraint_layout_new (void);
function gtk_constraint_layout_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_constraint_layout_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_constraint_layout_add_constraint (GtkConstraintLayout *layout, GtkConstraint *constraint);
subroutine gtk_constraint_layout_add_constraint(layout, constraint) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: layout
  type(c_ptr), value :: constraint
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_constraint_layout_remove_constraint (GtkConstraintLayout *layout, GtkConstraint *constraint);
subroutine gtk_constraint_layout_remove_constraint(layout, constraint) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: layout
  type(c_ptr), value :: constraint
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_constraint_layout_add_guide (GtkConstraintLayout *layout, GtkConstraintGuide *guide);
subroutine gtk_constraint_layout_add_guide(layout, guide) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: layout
  type(c_ptr), value :: guide
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_constraint_layout_remove_guide (GtkConstraintLayout *layout, GtkConstraintGuide *guide);
subroutine gtk_constraint_layout_remove_guide(layout, guide) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: layout
  type(c_ptr), value :: guide
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_constraint_layout_remove_all_constraints (GtkConstraintLayout *layout);
subroutine gtk_constraint_layout_remove_all_constraints(layout) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: layout
end subroutine

! GDK_AVAILABLE_IN_ALL
!GList * gtk_constraint_layout_add_constraints_from_descriptionv (GtkConstraintLayout *layout, const char * const lines[], gsize n_lines, int hspacing, int vspacing, GHashTable *views, GError **error);
function gtk_constraint_layout_add_constraints_from_descriptionv(layout, lines,&
& n_lines, hspacing, vspacing, views, error) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_size_t, c_int
  type(c_ptr) :: gtk_constraint_layout_add_constraints_from_descriptionv
  type(c_ptr), value :: layout
  character(kind=c_char), dimension(*) :: lines
  integer(c_size_t), value :: n_lines
  integer(c_int), value :: hspacing
  integer(c_int), value :: vspacing
  type(c_ptr), value :: views
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!GListModel * gtk_constraint_layout_observe_constraints (GtkConstraintLayout *layout);
function gtk_constraint_layout_observe_constraints(layout) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_constraint_layout_observe_constraints
  type(c_ptr), value :: layout
end function

! GDK_AVAILABLE_IN_ALL
!GListModel * gtk_constraint_layout_observe_guides (GtkConstraintLayout *layout);
function gtk_constraint_layout_observe_guides(layout) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_constraint_layout_observe_guides
  type(c_ptr), value :: layout
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_hsv_to_rgb (float h, float s, float v, float *r, float *g, float *b);
subroutine gtk_hsv_to_rgb(h, s, v, r, g, b) bind(c)
  use iso_c_binding, only: c_float, c_ptr
  real(c_float), value :: h
  real(c_float), value :: s
  real(c_float), value :: v
  type(c_ptr), value :: r
  type(c_ptr), value :: g
  type(c_ptr), value :: b
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_rgb_to_hsv (float r, float g, float b, float *h, float *s, float *v);
subroutine gtk_rgb_to_hsv(r, g, b, h, s, v) bind(c)
  use iso_c_binding, only: c_float, c_ptr
  real(c_float), value :: r
  real(c_float), value :: g
  real(c_float), value :: b
  type(c_ptr), value :: h
  type(c_ptr), value :: s
  type(c_ptr), value :: v
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_style_context_get_type (void) G_GNUC_CONST;
function gtk_style_context_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_style_context_get_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_style_context_add_provider_for_display (GdkDisplay *display, GtkStyleProvider *provider, guint priority);
subroutine gtk_style_context_add_provider_for_display(display, provider,&
& priority) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: display
  type(c_ptr), value :: provider
  integer(c_int), value :: priority
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_style_context_remove_provider_for_display (GdkDisplay *display, GtkStyleProvider *provider);
subroutine gtk_style_context_remove_provider_for_display(display, provider)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: display
  type(c_ptr), value :: provider
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_style_context_add_provider (GtkStyleContext *context, GtkStyleProvider *provider, guint priority);
subroutine gtk_style_context_add_provider(context, provider, priority) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: context
  type(c_ptr), value :: provider
  integer(c_int), value :: priority
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_style_context_remove_provider (GtkStyleContext *context, GtkStyleProvider *provider);
subroutine gtk_style_context_remove_provider(context, provider) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: context
  type(c_ptr), value :: provider
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_style_context_save (GtkStyleContext *context);
subroutine gtk_style_context_save(context) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: context
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_style_context_restore (GtkStyleContext *context);
subroutine gtk_style_context_restore(context) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: context
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_style_context_set_state (GtkStyleContext *context, GtkStateFlags flags);
subroutine gtk_style_context_set_state(context, flags) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: context
  integer(c_int), value :: flags
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkStateFlags gtk_style_context_get_state (GtkStyleContext *context);
function gtk_style_context_get_state(context) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_style_context_get_state
  type(c_ptr), value :: context
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_style_context_set_scale (GtkStyleContext *context, gint scale);
subroutine gtk_style_context_set_scale(context, scale) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: context
  integer(c_int), value :: scale
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_style_context_get_scale (GtkStyleContext *context);
function gtk_style_context_get_scale(context) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_style_context_get_scale
  type(c_ptr), value :: context
end function

! GDK_AVAILABLE_IN_ALL
!GList * gtk_style_context_list_classes (GtkStyleContext *context);
function gtk_style_context_list_classes(context) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_style_context_list_classes
  type(c_ptr), value :: context
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_style_context_add_class (GtkStyleContext *context, const gchar *class_name);
subroutine gtk_style_context_add_class(context, class_name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: context
  character(kind=c_char), dimension(*) :: class_name
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_style_context_remove_class (GtkStyleContext *context, const gchar *class_name);
subroutine gtk_style_context_remove_class(context, class_name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: context
  character(kind=c_char), dimension(*) :: class_name
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_style_context_has_class (GtkStyleContext *context, const gchar *class_name);
function gtk_style_context_has_class(context, class_name) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_style_context_has_class
  type(c_ptr), value :: context
  character(kind=c_char), dimension(*) :: class_name
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_style_context_set_display (GtkStyleContext *context, GdkDisplay *display);
subroutine gtk_style_context_set_display(context, display) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: context
  type(c_ptr), value :: display
end subroutine

! GDK_AVAILABLE_IN_ALL
!GdkDisplay *gtk_style_context_get_display (GtkStyleContext *context);
function gtk_style_context_get_display(context) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_style_context_get_display
  type(c_ptr), value :: context
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_style_context_lookup_color (GtkStyleContext *context, const gchar *color_name, GdkRGBA *color);
function gtk_style_context_lookup_color(context, color_name, color) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_style_context_lookup_color
  type(c_ptr), value :: context
  character(kind=c_char), dimension(*) :: color_name
  type(c_ptr), value :: color
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_style_context_get_color (GtkStyleContext *context, GdkRGBA *color);
subroutine gtk_style_context_get_color(context, color) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: context
  type(c_ptr), value :: color
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_style_context_get_border (GtkStyleContext *context, GtkBorder *border);
subroutine gtk_style_context_get_border(context, border) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: context
  type(c_ptr), value :: border
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_style_context_get_padding (GtkStyleContext *context, GtkBorder *padding);
subroutine gtk_style_context_get_padding(context, padding) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: context
  type(c_ptr), value :: padding
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_style_context_get_margin (GtkStyleContext *context, GtkBorder *margin);
subroutine gtk_style_context_get_margin(context, margin) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: context
  type(c_ptr), value :: margin
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_style_context_reset_widgets (GdkDisplay *display);
subroutine gtk_style_context_reset_widgets(display) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: display
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_render_insertion_cursor (GtkStyleContext *context, cairo_t *cr, gdouble x, gdouble y, PangoLayout *layout, int index, PangoDirection direction);
subroutine gtk_render_insertion_cursor(context, cr, x, y, layout, index,&
& direction) bind(c)
  use iso_c_binding, only: c_ptr, c_double, c_int
  type(c_ptr), value :: context
  type(c_ptr), value :: cr
  real(c_double), value :: x
  real(c_double), value :: y
  type(c_ptr), value :: layout
  integer(c_int), value :: index
  integer(c_int), value :: direction
end subroutine

! GDK_AVAILABLE_IN_ALL
!char * gtk_style_context_to_string (GtkStyleContext *context, GtkStyleContextPrintFlags flags);
function gtk_style_context_to_string(context, flags) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_style_context_to_string
  type(c_ptr), value :: context
  integer(c_int), value :: flags
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_color_chooser_widget_get_type (void) G_GNUC_CONST;
function gtk_color_chooser_widget_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_color_chooser_widget_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_color_chooser_widget_new (void);
function gtk_color_chooser_widget_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_color_chooser_widget_new
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_app_chooser_get_type (void) G_GNUC_CONST;
function gtk_app_chooser_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_app_chooser_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GAppInfo * gtk_app_chooser_get_app_info (GtkAppChooser *self);
function gtk_app_chooser_get_app_info(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_app_chooser_get_app_info
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!gchar * gtk_app_chooser_get_content_type (GtkAppChooser *self);
function gtk_app_chooser_get_content_type(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_app_chooser_get_content_type
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_app_chooser_refresh (GtkAppChooser *self);
subroutine gtk_app_chooser_refresh(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_expander_get_type (void) G_GNUC_CONST;
function gtk_expander_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_expander_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_expander_new (const gchar *label);
function gtk_expander_new(label) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_expander_new
  character(kind=c_char), dimension(*) :: label
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_expander_new_with_mnemonic (const gchar *label);
function gtk_expander_new_with_mnemonic(label) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_expander_new_with_mnemonic
  character(kind=c_char), dimension(*) :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_expander_set_expanded (GtkExpander *expander, gboolean expanded);
subroutine gtk_expander_set_expanded(expander, expanded) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: expander
  integer(c_int), value :: expanded
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_expander_get_expanded (GtkExpander *expander);
function gtk_expander_get_expanded(expander) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_expander_get_expanded
  type(c_ptr), value :: expander
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_expander_set_label (GtkExpander *expander, const gchar *label);
subroutine gtk_expander_set_label(expander, label) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: expander
  character(kind=c_char), dimension(*) :: label
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_expander_get_label (GtkExpander *expander);
function gtk_expander_get_label(expander) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_expander_get_label
  type(c_ptr), value :: expander
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_expander_set_use_underline (GtkExpander *expander, gboolean use_underline);
subroutine gtk_expander_set_use_underline(expander, use_underline) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: expander
  integer(c_int), value :: use_underline
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_expander_get_use_underline (GtkExpander *expander);
function gtk_expander_get_use_underline(expander) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_expander_get_use_underline
  type(c_ptr), value :: expander
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_expander_set_use_markup (GtkExpander *expander, gboolean use_markup);
subroutine gtk_expander_set_use_markup(expander, use_markup) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: expander
  integer(c_int), value :: use_markup
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_expander_get_use_markup (GtkExpander *expander);
function gtk_expander_get_use_markup(expander) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_expander_get_use_markup
  type(c_ptr), value :: expander
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_expander_set_label_widget (GtkExpander *expander, GtkWidget *label_widget);
subroutine gtk_expander_set_label_widget(expander, label_widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: expander
  type(c_ptr), value :: label_widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_expander_get_label_widget (GtkExpander *expander);
function gtk_expander_get_label_widget(expander) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_expander_get_label_widget
  type(c_ptr), value :: expander
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_expander_set_resize_toplevel (GtkExpander *expander, gboolean resize_toplevel);
subroutine gtk_expander_set_resize_toplevel(expander, resize_toplevel) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: expander
  integer(c_int), value :: resize_toplevel
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_expander_get_resize_toplevel (GtkExpander *expander);
function gtk_expander_get_resize_toplevel(expander) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_expander_get_resize_toplevel
  type(c_ptr), value :: expander
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_native_check_resize (GtkNative *self);
subroutine gtk_native_check_resize(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
end subroutine

! GDK_AVAILABLE_IN_ALL
!GdkSurface *gtk_native_get_surface (GtkNative *self);
function gtk_native_get_surface(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_native_get_surface
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GskRenderer *gtk_native_get_renderer (GtkNative *self);
function gtk_native_get_renderer(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_native_get_renderer
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_text_tag_get_type (void) G_GNUC_CONST;
function gtk_text_tag_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_text_tag_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkTextTag *gtk_text_tag_new (const gchar *name);
function gtk_text_tag_new(name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_text_tag_new
  character(kind=c_char), dimension(*) :: name
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_text_tag_get_priority (GtkTextTag *tag);
function gtk_text_tag_get_priority(tag) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_tag_get_priority
  type(c_ptr), value :: tag
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_tag_set_priority (GtkTextTag *tag, gint priority);
subroutine gtk_text_tag_set_priority(tag, priority) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tag
  integer(c_int), value :: priority
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_tag_changed (GtkTextTag *tag, gboolean size_changed);
subroutine gtk_text_tag_changed(tag, size_changed) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tag
  integer(c_int), value :: size_changed
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_flatten_list_model_set_model (GtkFlattenListModel *self, GListModel *model);
subroutine gtk_flatten_list_model_set_model(self, model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: model
end subroutine

! GDK_AVAILABLE_IN_ALL
!GListModel * gtk_flatten_list_model_get_model (GtkFlattenListModel *self);
function gtk_flatten_list_model_get_model(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_flatten_list_model_get_model
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GListModel * gtk_flatten_list_model_get_model_for_item (GtkFlattenListModel *self, guint position);
function gtk_flatten_list_model_get_model_for_item(self, position) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_flatten_list_model_get_model_for_item
  type(c_ptr), value :: self
  integer(c_int), value :: position
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_box_get_type (void) G_GNUC_CONST;
function gtk_box_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_box_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_box_new (GtkOrientation orientation, gint spacing);
function gtk_box_new(orientation, spacing) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_box_new
  integer(c_int), value :: orientation
  integer(c_int), value :: spacing
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_box_set_homogeneous (GtkBox *box, gboolean homogeneous);
subroutine gtk_box_set_homogeneous(box, homogeneous) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: box
  integer(c_int), value :: homogeneous
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_box_get_homogeneous (GtkBox *box);
function gtk_box_get_homogeneous(box) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_box_get_homogeneous
  type(c_ptr), value :: box
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_box_set_spacing (GtkBox *box, gint spacing);
subroutine gtk_box_set_spacing(box, spacing) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: box
  integer(c_int), value :: spacing
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_box_get_spacing (GtkBox *box);
function gtk_box_get_spacing(box) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_box_get_spacing
  type(c_ptr), value :: box
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_box_set_baseline_position (GtkBox *box, GtkBaselinePosition position);
subroutine gtk_box_set_baseline_position(box, position) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: box
  integer(c_int), value :: position
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkBaselinePosition gtk_box_get_baseline_position (GtkBox *box);
function gtk_box_get_baseline_position(box) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_box_get_baseline_position
  type(c_ptr), value :: box
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_box_insert_child_after (GtkBox *box, GtkWidget *child, GtkWidget *sibling);
subroutine gtk_box_insert_child_after(box, child, sibling) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: box
  type(c_ptr), value :: child
  type(c_ptr), value :: sibling
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_box_reorder_child_after (GtkBox *box, GtkWidget *child, GtkWidget *sibling);
subroutine gtk_box_reorder_child_after(box, child, sibling) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: box
  type(c_ptr), value :: child
  type(c_ptr), value :: sibling
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_about_dialog_get_type (void) G_GNUC_CONST;
function gtk_about_dialog_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_about_dialog_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_about_dialog_new (void);
function gtk_about_dialog_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_about_dialog_new
end function

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_about_dialog_get_program_name (GtkAboutDialog *about);
function gtk_about_dialog_get_program_name(about) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_about_dialog_get_program_name
  type(c_ptr), value :: about
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_about_dialog_set_program_name (GtkAboutDialog *about, const gchar *name);
subroutine gtk_about_dialog_set_program_name(about, name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: about
  character(kind=c_char), dimension(*) :: name
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_about_dialog_get_version (GtkAboutDialog *about);
function gtk_about_dialog_get_version(about) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_about_dialog_get_version
  type(c_ptr), value :: about
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_about_dialog_set_version (GtkAboutDialog *about, const gchar *version);
subroutine gtk_about_dialog_set_version(about, version) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: about
  character(kind=c_char), dimension(*) :: version
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_about_dialog_get_copyright (GtkAboutDialog *about);
function gtk_about_dialog_get_copyright(about) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_about_dialog_get_copyright
  type(c_ptr), value :: about
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_about_dialog_set_copyright (GtkAboutDialog *about, const gchar *copyright);
subroutine gtk_about_dialog_set_copyright(about, copyright) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: about
  character(kind=c_char), dimension(*) :: copyright
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_about_dialog_get_comments (GtkAboutDialog *about);
function gtk_about_dialog_get_comments(about) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_about_dialog_get_comments
  type(c_ptr), value :: about
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_about_dialog_set_comments (GtkAboutDialog *about, const gchar *comments);
subroutine gtk_about_dialog_set_comments(about, comments) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: about
  character(kind=c_char), dimension(*) :: comments
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_about_dialog_get_license (GtkAboutDialog *about);
function gtk_about_dialog_get_license(about) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_about_dialog_get_license
  type(c_ptr), value :: about
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_about_dialog_set_license (GtkAboutDialog *about, const gchar *license);
subroutine gtk_about_dialog_set_license(about, license) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: about
  character(kind=c_char), dimension(*) :: license
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_about_dialog_set_license_type (GtkAboutDialog *about, GtkLicense license_type);
subroutine gtk_about_dialog_set_license_type(about, license_type) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: about
  integer(c_int), value :: license_type
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkLicense gtk_about_dialog_get_license_type (GtkAboutDialog *about);
function gtk_about_dialog_get_license_type(about) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_about_dialog_get_license_type
  type(c_ptr), value :: about
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_about_dialog_get_wrap_license (GtkAboutDialog *about);
function gtk_about_dialog_get_wrap_license(about) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_about_dialog_get_wrap_license
  type(c_ptr), value :: about
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_about_dialog_set_wrap_license (GtkAboutDialog *about, gboolean wrap_license);
subroutine gtk_about_dialog_set_wrap_license(about, wrap_license) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: about
  integer(c_int), value :: wrap_license
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_about_dialog_get_system_information (GtkAboutDialog *about);
function gtk_about_dialog_get_system_information(about) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_about_dialog_get_system_information
  type(c_ptr), value :: about
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_about_dialog_set_system_information (GtkAboutDialog *about, const gchar *system_information);
subroutine gtk_about_dialog_set_system_information(about, system_information)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: about
  character(kind=c_char), dimension(*) :: system_information
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_about_dialog_get_website (GtkAboutDialog *about);
function gtk_about_dialog_get_website(about) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_about_dialog_get_website
  type(c_ptr), value :: about
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_about_dialog_set_website (GtkAboutDialog *about, const gchar *website);
subroutine gtk_about_dialog_set_website(about, website) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: about
  character(kind=c_char), dimension(*) :: website
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_about_dialog_get_website_label (GtkAboutDialog *about);
function gtk_about_dialog_get_website_label(about) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_about_dialog_get_website_label
  type(c_ptr), value :: about
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_about_dialog_set_website_label (GtkAboutDialog *about, const gchar *website_label);
subroutine gtk_about_dialog_set_website_label(about, website_label) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: about
  character(kind=c_char), dimension(*) :: website_label
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar* const * gtk_about_dialog_get_authors (GtkAboutDialog *about);
function gtk_about_dialog_get_authors(about) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_about_dialog_get_authors
  type(c_ptr), value :: about
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_about_dialog_set_authors (GtkAboutDialog *about, const gchar **authors);
subroutine gtk_about_dialog_set_authors(about, authors) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: about
  type(c_ptr), dimension(*) :: authors
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar* const * gtk_about_dialog_get_documenters (GtkAboutDialog *about);
function gtk_about_dialog_get_documenters(about) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_about_dialog_get_documenters
  type(c_ptr), value :: about
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_about_dialog_set_documenters (GtkAboutDialog *about, const gchar **documenters);
subroutine gtk_about_dialog_set_documenters(about, documenters) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: about
  type(c_ptr), dimension(*) :: documenters
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar* const * gtk_about_dialog_get_artists (GtkAboutDialog *about);
function gtk_about_dialog_get_artists(about) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_about_dialog_get_artists
  type(c_ptr), value :: about
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_about_dialog_set_artists (GtkAboutDialog *about, const gchar **artists);
subroutine gtk_about_dialog_set_artists(about, artists) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: about
  type(c_ptr), dimension(*) :: artists
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_about_dialog_get_translator_credits (GtkAboutDialog *about);
function gtk_about_dialog_get_translator_credits(about) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_about_dialog_get_translator_credits
  type(c_ptr), value :: about
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_about_dialog_set_translator_credits (GtkAboutDialog *about, const gchar *translator_credits);
subroutine gtk_about_dialog_set_translator_credits(about, translator_credits)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: about
  character(kind=c_char), dimension(*) :: translator_credits
end subroutine

! GDK_AVAILABLE_IN_ALL
!GdkPaintable *gtk_about_dialog_get_logo (GtkAboutDialog *about);
function gtk_about_dialog_get_logo(about) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_about_dialog_get_logo
  type(c_ptr), value :: about
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_about_dialog_set_logo (GtkAboutDialog *about, GdkPaintable *logo);
subroutine gtk_about_dialog_set_logo(about, logo) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: about
  type(c_ptr), value :: logo
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_about_dialog_get_logo_icon_name (GtkAboutDialog *about);
function gtk_about_dialog_get_logo_icon_name(about) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_about_dialog_get_logo_icon_name
  type(c_ptr), value :: about
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_about_dialog_set_logo_icon_name (GtkAboutDialog *about, const gchar *icon_name);
subroutine gtk_about_dialog_set_logo_icon_name(about, icon_name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: about
  character(kind=c_char), dimension(*) :: icon_name
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_about_dialog_add_credit_section (GtkAboutDialog *about, const gchar *section_name, const gchar **people);
subroutine gtk_about_dialog_add_credit_section(about, section_name, people)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: about
  character(kind=c_char), dimension(*) :: section_name
  type(c_ptr), dimension(*) :: people
end subroutine

! 
!void gtk_im_modules_init (void);
subroutine gtk_im_modules_init() bind(c)
  use iso_c_binding, only: 
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_shortcuts_window_get_type (void) G_GNUC_CONST;
function gtk_shortcuts_window_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_shortcuts_window_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_lock_button_get_type (void) G_GNUC_CONST;
function gtk_lock_button_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_lock_button_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_lock_button_new (GPermission *permission);
function gtk_lock_button_new(permission) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_lock_button_new
  type(c_ptr), value :: permission
end function

! GDK_AVAILABLE_IN_ALL
!GPermission *gtk_lock_button_get_permission (GtkLockButton *button);
function gtk_lock_button_get_permission(button) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_lock_button_get_permission
  type(c_ptr), value :: button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_lock_button_set_permission (GtkLockButton *button, GPermission *permission);
subroutine gtk_lock_button_set_permission(button, permission) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: button
  type(c_ptr), value :: permission
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_file_chooser_button_get_type (void) G_GNUC_CONST;
function gtk_file_chooser_button_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_file_chooser_button_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_file_chooser_button_new (const gchar *title, GtkFileChooserAction action);
function gtk_file_chooser_button_new(title, action) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int
  type(c_ptr) :: gtk_file_chooser_button_new
  character(kind=c_char), dimension(*) :: title
  integer(c_int), value :: action
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_file_chooser_button_new_with_dialog (GtkWidget *dialog);
function gtk_file_chooser_button_new_with_dialog(dialog) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_file_chooser_button_new_with_dialog
  type(c_ptr), value :: dialog
end function

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_file_chooser_button_get_title (GtkFileChooserButton *button);
function gtk_file_chooser_button_get_title(button) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_file_chooser_button_get_title
  type(c_ptr), value :: button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_file_chooser_button_set_title (GtkFileChooserButton *button, const gchar *title);
subroutine gtk_file_chooser_button_set_title(button, title) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: button
  character(kind=c_char), dimension(*) :: title
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_file_chooser_button_get_width_chars (GtkFileChooserButton *button);
function gtk_file_chooser_button_get_width_chars(button) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_file_chooser_button_get_width_chars
  type(c_ptr), value :: button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_file_chooser_button_set_width_chars (GtkFileChooserButton *button, gint n_chars);
subroutine gtk_file_chooser_button_set_width_chars(button, n_chars) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: button
  integer(c_int), value :: n_chars
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_icon_view_get_type (void) G_GNUC_CONST;
function gtk_icon_view_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_icon_view_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_icon_view_new (void);
function gtk_icon_view_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_icon_view_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_icon_view_new_with_area (GtkCellArea *area);
function gtk_icon_view_new_with_area(area) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_icon_view_new_with_area
  type(c_ptr), value :: area
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_icon_view_new_with_model (GtkTreeModel *model);
function gtk_icon_view_new_with_model(model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_icon_view_new_with_model
  type(c_ptr), value :: model
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_set_model (GtkIconView *icon_view, GtkTreeModel *model);
subroutine gtk_icon_view_set_model(icon_view, model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: icon_view
  type(c_ptr), value :: model
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkTreeModel * gtk_icon_view_get_model (GtkIconView *icon_view);
function gtk_icon_view_get_model(icon_view) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_icon_view_get_model
  type(c_ptr), value :: icon_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_set_text_column (GtkIconView *icon_view, gint column);
subroutine gtk_icon_view_set_text_column(icon_view, column) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: icon_view
  integer(c_int), value :: column
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_icon_view_get_text_column (GtkIconView *icon_view);
function gtk_icon_view_get_text_column(icon_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_view_get_text_column
  type(c_ptr), value :: icon_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_set_markup_column (GtkIconView *icon_view, gint column);
subroutine gtk_icon_view_set_markup_column(icon_view, column) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: icon_view
  integer(c_int), value :: column
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_icon_view_get_markup_column (GtkIconView *icon_view);
function gtk_icon_view_get_markup_column(icon_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_view_get_markup_column
  type(c_ptr), value :: icon_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_set_pixbuf_column (GtkIconView *icon_view, gint column);
subroutine gtk_icon_view_set_pixbuf_column(icon_view, column) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: icon_view
  integer(c_int), value :: column
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_icon_view_get_pixbuf_column (GtkIconView *icon_view);
function gtk_icon_view_get_pixbuf_column(icon_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_view_get_pixbuf_column
  type(c_ptr), value :: icon_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_set_item_orientation (GtkIconView *icon_view, GtkOrientation orientation);
subroutine gtk_icon_view_set_item_orientation(icon_view, orientation) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: icon_view
  integer(c_int), value :: orientation
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkOrientation gtk_icon_view_get_item_orientation (GtkIconView *icon_view);
function gtk_icon_view_get_item_orientation(icon_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_view_get_item_orientation
  type(c_ptr), value :: icon_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_set_columns (GtkIconView *icon_view, gint columns);
subroutine gtk_icon_view_set_columns(icon_view, columns) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: icon_view
  integer(c_int), value :: columns
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_icon_view_get_columns (GtkIconView *icon_view);
function gtk_icon_view_get_columns(icon_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_view_get_columns
  type(c_ptr), value :: icon_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_set_item_width (GtkIconView *icon_view, gint item_width);
subroutine gtk_icon_view_set_item_width(icon_view, item_width) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: icon_view
  integer(c_int), value :: item_width
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_icon_view_get_item_width (GtkIconView *icon_view);
function gtk_icon_view_get_item_width(icon_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_view_get_item_width
  type(c_ptr), value :: icon_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_set_spacing (GtkIconView *icon_view, gint spacing);
subroutine gtk_icon_view_set_spacing(icon_view, spacing) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: icon_view
  integer(c_int), value :: spacing
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_icon_view_get_spacing (GtkIconView *icon_view);
function gtk_icon_view_get_spacing(icon_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_view_get_spacing
  type(c_ptr), value :: icon_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_set_row_spacing (GtkIconView *icon_view, gint row_spacing);
subroutine gtk_icon_view_set_row_spacing(icon_view, row_spacing) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: icon_view
  integer(c_int), value :: row_spacing
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_icon_view_get_row_spacing (GtkIconView *icon_view);
function gtk_icon_view_get_row_spacing(icon_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_view_get_row_spacing
  type(c_ptr), value :: icon_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_set_column_spacing (GtkIconView *icon_view, gint column_spacing);
subroutine gtk_icon_view_set_column_spacing(icon_view, column_spacing) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: icon_view
  integer(c_int), value :: column_spacing
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_icon_view_get_column_spacing (GtkIconView *icon_view);
function gtk_icon_view_get_column_spacing(icon_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_view_get_column_spacing
  type(c_ptr), value :: icon_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_set_margin (GtkIconView *icon_view, gint margin);
subroutine gtk_icon_view_set_margin(icon_view, margin) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: icon_view
  integer(c_int), value :: margin
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_icon_view_get_margin (GtkIconView *icon_view);
function gtk_icon_view_get_margin(icon_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_view_get_margin
  type(c_ptr), value :: icon_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_set_item_padding (GtkIconView *icon_view, gint item_padding);
subroutine gtk_icon_view_set_item_padding(icon_view, item_padding) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: icon_view
  integer(c_int), value :: item_padding
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_icon_view_get_item_padding (GtkIconView *icon_view);
function gtk_icon_view_get_item_padding(icon_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_view_get_item_padding
  type(c_ptr), value :: icon_view
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreePath * gtk_icon_view_get_path_at_pos (GtkIconView *icon_view, gint x, gint y);
function gtk_icon_view_get_path_at_pos(icon_view, x, y) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_icon_view_get_path_at_pos
  type(c_ptr), value :: icon_view
  integer(c_int), value :: x
  integer(c_int), value :: y
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_icon_view_get_item_at_pos (GtkIconView *icon_view, gint x, gint y, GtkTreePath **path, GtkCellRenderer **cell);
function gtk_icon_view_get_item_at_pos(icon_view, x, y, path, cell) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_view_get_item_at_pos
  type(c_ptr), value :: icon_view
  integer(c_int), value :: x
  integer(c_int), value :: y
  type(c_ptr), value :: path
  type(c_ptr), value :: cell
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_icon_view_get_visible_range (GtkIconView *icon_view, GtkTreePath **start_path, GtkTreePath **end_path);
function gtk_icon_view_get_visible_range(icon_view, start_path, end_path)&
& bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_view_get_visible_range
  type(c_ptr), value :: icon_view
  type(c_ptr), value :: start_path
  type(c_ptr), value :: end_path
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_set_activate_on_single_click (GtkIconView *icon_view, gboolean single);
subroutine gtk_icon_view_set_activate_on_single_click(icon_view, single)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: icon_view
  integer(c_int), value :: single
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_icon_view_get_activate_on_single_click (GtkIconView *icon_view);
function gtk_icon_view_get_activate_on_single_click(icon_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_view_get_activate_on_single_click
  type(c_ptr), value :: icon_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_selected_foreach (GtkIconView *icon_view, GtkIconViewForeachFunc func, gpointer data);
subroutine gtk_icon_view_selected_foreach(icon_view, func, data) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: icon_view
  type(c_funptr), value :: func
  type(c_ptr), value :: data
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_set_selection_mode (GtkIconView *icon_view, GtkSelectionMode mode);
subroutine gtk_icon_view_set_selection_mode(icon_view, mode) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: icon_view
  integer(c_int), value :: mode
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkSelectionMode gtk_icon_view_get_selection_mode (GtkIconView *icon_view);
function gtk_icon_view_get_selection_mode(icon_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_view_get_selection_mode
  type(c_ptr), value :: icon_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_select_path (GtkIconView *icon_view, GtkTreePath *path);
subroutine gtk_icon_view_select_path(icon_view, path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: icon_view
  type(c_ptr), value :: path
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_unselect_path (GtkIconView *icon_view, GtkTreePath *path);
subroutine gtk_icon_view_unselect_path(icon_view, path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: icon_view
  type(c_ptr), value :: path
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_icon_view_path_is_selected (GtkIconView *icon_view, GtkTreePath *path);
function gtk_icon_view_path_is_selected(icon_view, path) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_view_path_is_selected
  type(c_ptr), value :: icon_view
  type(c_ptr), value :: path
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_icon_view_get_item_row (GtkIconView *icon_view, GtkTreePath *path);
function gtk_icon_view_get_item_row(icon_view, path) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_view_get_item_row
  type(c_ptr), value :: icon_view
  type(c_ptr), value :: path
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_icon_view_get_item_column (GtkIconView *icon_view, GtkTreePath *path);
function gtk_icon_view_get_item_column(icon_view, path) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_view_get_item_column
  type(c_ptr), value :: icon_view
  type(c_ptr), value :: path
end function

! GDK_AVAILABLE_IN_ALL
!GList *gtk_icon_view_get_selected_items (GtkIconView *icon_view);
function gtk_icon_view_get_selected_items(icon_view) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_icon_view_get_selected_items
  type(c_ptr), value :: icon_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_select_all (GtkIconView *icon_view);
subroutine gtk_icon_view_select_all(icon_view) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: icon_view
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_unselect_all (GtkIconView *icon_view);
subroutine gtk_icon_view_unselect_all(icon_view) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: icon_view
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_item_activated (GtkIconView *icon_view, GtkTreePath *path);
subroutine gtk_icon_view_item_activated(icon_view, path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: icon_view
  type(c_ptr), value :: path
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_set_cursor (GtkIconView *icon_view, GtkTreePath *path, GtkCellRenderer *cell, gboolean start_editing);
subroutine gtk_icon_view_set_cursor(icon_view, path, cell, start_editing)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: icon_view
  type(c_ptr), value :: path
  type(c_ptr), value :: cell
  integer(c_int), value :: start_editing
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_icon_view_get_cursor (GtkIconView *icon_view, GtkTreePath **path, GtkCellRenderer **cell);
function gtk_icon_view_get_cursor(icon_view, path, cell) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_view_get_cursor
  type(c_ptr), value :: icon_view
  type(c_ptr), value :: path
  type(c_ptr), value :: cell
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_scroll_to_path (GtkIconView *icon_view, GtkTreePath *path, gboolean use_align, gfloat row_align, gfloat col_align);
subroutine gtk_icon_view_scroll_to_path(icon_view, path, use_align, row_align,&
& col_align) bind(c)
  use iso_c_binding, only: c_ptr, c_int, c_float
  type(c_ptr), value :: icon_view
  type(c_ptr), value :: path
  integer(c_int), value :: use_align
  real(c_float), value :: row_align
  real(c_float), value :: col_align
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_enable_model_drag_source (GtkIconView *icon_view, GdkModifierType start_button_mask, GdkContentFormats *formats, GdkDragAction actions);
subroutine gtk_icon_view_enable_model_drag_source(icon_view, start_button_mask,&
& formats, actions) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: icon_view
  integer(c_int), value :: start_button_mask
  type(c_ptr), value :: formats
  integer(c_int), value :: actions
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_enable_model_drag_dest (GtkIconView *icon_view, GdkContentFormats *formats, GdkDragAction actions);
subroutine gtk_icon_view_enable_model_drag_dest(icon_view, formats, actions)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: icon_view
  type(c_ptr), value :: formats
  integer(c_int), value :: actions
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_unset_model_drag_source (GtkIconView *icon_view);
subroutine gtk_icon_view_unset_model_drag_source(icon_view) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: icon_view
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_unset_model_drag_dest (GtkIconView *icon_view);
subroutine gtk_icon_view_unset_model_drag_dest(icon_view) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: icon_view
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_set_reorderable (GtkIconView *icon_view, gboolean reorderable);
subroutine gtk_icon_view_set_reorderable(icon_view, reorderable) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: icon_view
  integer(c_int), value :: reorderable
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_icon_view_get_reorderable (GtkIconView *icon_view);
function gtk_icon_view_get_reorderable(icon_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_view_get_reorderable
  type(c_ptr), value :: icon_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_set_drag_dest_item (GtkIconView *icon_view, GtkTreePath *path, GtkIconViewDropPosition pos);
subroutine gtk_icon_view_set_drag_dest_item(icon_view, path, pos) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: icon_view
  type(c_ptr), value :: path
  integer(c_int), value :: pos
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_get_drag_dest_item (GtkIconView *icon_view, GtkTreePath **path, GtkIconViewDropPosition *pos);
subroutine gtk_icon_view_get_drag_dest_item(icon_view, path, pos) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: icon_view
  type(c_ptr), value :: path
  integer(c_int), value :: pos
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_icon_view_get_dest_item_at_pos (GtkIconView *icon_view, gint drag_x, gint drag_y, GtkTreePath **path, GtkIconViewDropPosition *pos);
function gtk_icon_view_get_dest_item_at_pos(icon_view, drag_x, drag_y, path,&
& pos) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_view_get_dest_item_at_pos
  type(c_ptr), value :: icon_view
  integer(c_int), value :: drag_x
  integer(c_int), value :: drag_y
  type(c_ptr), value :: path
  integer(c_int), value :: pos
end function

! GDK_AVAILABLE_IN_ALL
!GdkPaintable *gtk_icon_view_create_drag_icon (GtkIconView *icon_view, GtkTreePath *path);
function gtk_icon_view_create_drag_icon(icon_view, path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_icon_view_create_drag_icon
  type(c_ptr), value :: icon_view
  type(c_ptr), value :: path
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_icon_view_get_cell_rect (GtkIconView *icon_view, GtkTreePath *path, GtkCellRenderer *cell, GdkRectangle *rect);
function gtk_icon_view_get_cell_rect(icon_view, path, cell, rect) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_view_get_cell_rect
  type(c_ptr), value :: icon_view
  type(c_ptr), value :: path
  type(c_ptr), value :: cell
  type(c_ptr), value :: rect
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_set_tooltip_item (GtkIconView *icon_view, GtkTooltip *tooltip, GtkTreePath *path);
subroutine gtk_icon_view_set_tooltip_item(icon_view, tooltip, path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: icon_view
  type(c_ptr), value :: tooltip
  type(c_ptr), value :: path
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_set_tooltip_cell (GtkIconView *icon_view, GtkTooltip *tooltip, GtkTreePath *path, GtkCellRenderer *cell);
subroutine gtk_icon_view_set_tooltip_cell(icon_view, tooltip, path, cell)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: icon_view
  type(c_ptr), value :: tooltip
  type(c_ptr), value :: path
  type(c_ptr), value :: cell
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_icon_view_get_tooltip_context (GtkIconView *icon_view, gint *x, gint *y, gboolean keyboard_tip, GtkTreeModel **model, GtkTreePath **path, GtkTreeIter *iter);
function gtk_icon_view_get_tooltip_context(icon_view, x, y, keyboard_tip,&
& model, path, iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_view_get_tooltip_context
  type(c_ptr), value :: icon_view
  type(c_ptr), value :: x
  type(c_ptr), value :: y
  integer(c_int), value :: keyboard_tip
  type(c_ptr), value :: model
  type(c_ptr), value :: path
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_icon_view_set_tooltip_column (GtkIconView *icon_view, gint column);
subroutine gtk_icon_view_set_tooltip_column(icon_view, column) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: icon_view
  integer(c_int), value :: column
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_icon_view_get_tooltip_column (GtkIconView *icon_view);
function gtk_icon_view_get_tooltip_column(icon_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_icon_view_get_tooltip_column
  type(c_ptr), value :: icon_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_root_set_focus (GtkRoot *self, GtkWidget *focus);
subroutine gtk_root_set_focus(self, focus) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: focus
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_root_get_focus (GtkRoot *self);
function gtk_root_get_focus(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_root_get_focus
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_gesture_zoom_get_type (void) G_GNUC_CONST;
function gtk_gesture_zoom_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_gesture_zoom_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkGesture * gtk_gesture_zoom_new (void);
function gtk_gesture_zoom_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_gesture_zoom_new
end function

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_gesture_zoom_get_scale_delta (GtkGestureZoom *gesture);
function gtk_gesture_zoom_get_scale_delta(gesture) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_gesture_zoom_get_scale_delta
  type(c_ptr), value :: gesture
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_flow_box_child_get_type (void) G_GNUC_CONST;
function gtk_flow_box_child_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_flow_box_child_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_flow_box_child_new (void);
function gtk_flow_box_child_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_flow_box_child_new
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_flow_box_child_get_index (GtkFlowBoxChild *child);
function gtk_flow_box_child_get_index(child) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_flow_box_child_get_index
  type(c_ptr), value :: child
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_flow_box_child_is_selected (GtkFlowBoxChild *child);
function gtk_flow_box_child_is_selected(child) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_flow_box_child_is_selected
  type(c_ptr), value :: child
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_flow_box_child_changed (GtkFlowBoxChild *child);
subroutine gtk_flow_box_child_changed(child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: child
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_flow_box_get_type (void) G_GNUC_CONST;
function gtk_flow_box_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_flow_box_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_flow_box_new (void);
function gtk_flow_box_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_flow_box_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_flow_box_bind_model (GtkFlowBox *box, GListModel *model, GtkFlowBoxCreateWidgetFunc create_widget_func, gpointer user_data, GDestroyNotify user_data_free_func);
subroutine gtk_flow_box_bind_model(box, model, create_widget_func, user_data,&
& user_data_free_func) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: box
  type(c_ptr), value :: model
  type(c_funptr), value :: create_widget_func
  type(c_ptr), value :: user_data
  type(c_funptr), value :: user_data_free_func
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_flow_box_set_homogeneous (GtkFlowBox *box, gboolean homogeneous);
subroutine gtk_flow_box_set_homogeneous(box, homogeneous) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: box
  integer(c_int), value :: homogeneous
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_flow_box_get_homogeneous (GtkFlowBox *box);
function gtk_flow_box_get_homogeneous(box) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_flow_box_get_homogeneous
  type(c_ptr), value :: box
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_flow_box_set_row_spacing (GtkFlowBox *box, guint spacing);
subroutine gtk_flow_box_set_row_spacing(box, spacing) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: box
  integer(c_int), value :: spacing
end subroutine

! GDK_AVAILABLE_IN_ALL
!guint gtk_flow_box_get_row_spacing (GtkFlowBox *box);
function gtk_flow_box_get_row_spacing(box) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_flow_box_get_row_spacing
  type(c_ptr), value :: box
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_flow_box_set_column_spacing (GtkFlowBox *box, guint spacing);
subroutine gtk_flow_box_set_column_spacing(box, spacing) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: box
  integer(c_int), value :: spacing
end subroutine

! GDK_AVAILABLE_IN_ALL
!guint gtk_flow_box_get_column_spacing (GtkFlowBox *box);
function gtk_flow_box_get_column_spacing(box) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_flow_box_get_column_spacing
  type(c_ptr), value :: box
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_flow_box_set_min_children_per_line (GtkFlowBox *box, guint n_children);
subroutine gtk_flow_box_set_min_children_per_line(box, n_children) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: box
  integer(c_int), value :: n_children
end subroutine

! GDK_AVAILABLE_IN_ALL
!guint gtk_flow_box_get_min_children_per_line (GtkFlowBox *box);
function gtk_flow_box_get_min_children_per_line(box) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_flow_box_get_min_children_per_line
  type(c_ptr), value :: box
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_flow_box_set_max_children_per_line (GtkFlowBox *box, guint n_children);
subroutine gtk_flow_box_set_max_children_per_line(box, n_children) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: box
  integer(c_int), value :: n_children
end subroutine

! GDK_AVAILABLE_IN_ALL
!guint gtk_flow_box_get_max_children_per_line (GtkFlowBox *box);
function gtk_flow_box_get_max_children_per_line(box) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_flow_box_get_max_children_per_line
  type(c_ptr), value :: box
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_flow_box_set_activate_on_single_click (GtkFlowBox *box, gboolean single);
subroutine gtk_flow_box_set_activate_on_single_click(box, single) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: box
  integer(c_int), value :: single
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_flow_box_get_activate_on_single_click (GtkFlowBox *box);
function gtk_flow_box_get_activate_on_single_click(box) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_flow_box_get_activate_on_single_click
  type(c_ptr), value :: box
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_flow_box_insert (GtkFlowBox *box, GtkWidget *widget, gint position);
subroutine gtk_flow_box_insert(box, widget, position) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: box
  type(c_ptr), value :: widget
  integer(c_int), value :: position
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkFlowBoxChild *gtk_flow_box_get_child_at_index (GtkFlowBox *box, gint idx);
function gtk_flow_box_get_child_at_index(box, idx) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_flow_box_get_child_at_index
  type(c_ptr), value :: box
  integer(c_int), value :: idx
end function

! GDK_AVAILABLE_IN_ALL
!GtkFlowBoxChild *gtk_flow_box_get_child_at_pos (GtkFlowBox *box, gint x, gint y);
function gtk_flow_box_get_child_at_pos(box, x, y) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_flow_box_get_child_at_pos
  type(c_ptr), value :: box
  integer(c_int), value :: x
  integer(c_int), value :: y
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_flow_box_selected_foreach (GtkFlowBox *box, GtkFlowBoxForeachFunc func, gpointer data);
subroutine gtk_flow_box_selected_foreach(box, func, data) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: box
  type(c_funptr), value :: func
  type(c_ptr), value :: data
end subroutine

! GDK_AVAILABLE_IN_ALL
!GList *gtk_flow_box_get_selected_children (GtkFlowBox *box);
function gtk_flow_box_get_selected_children(box) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_flow_box_get_selected_children
  type(c_ptr), value :: box
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_flow_box_select_child (GtkFlowBox *box, GtkFlowBoxChild *child);
subroutine gtk_flow_box_select_child(box, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: box
  type(c_ptr), value :: child
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_flow_box_unselect_child (GtkFlowBox *box, GtkFlowBoxChild *child);
subroutine gtk_flow_box_unselect_child(box, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: box
  type(c_ptr), value :: child
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_flow_box_select_all (GtkFlowBox *box);
subroutine gtk_flow_box_select_all(box) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: box
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_flow_box_unselect_all (GtkFlowBox *box);
subroutine gtk_flow_box_unselect_all(box) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: box
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_flow_box_set_selection_mode (GtkFlowBox *box, GtkSelectionMode mode);
subroutine gtk_flow_box_set_selection_mode(box, mode) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: box
  integer(c_int), value :: mode
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkSelectionMode gtk_flow_box_get_selection_mode (GtkFlowBox *box);
function gtk_flow_box_get_selection_mode(box) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_flow_box_get_selection_mode
  type(c_ptr), value :: box
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_flow_box_set_hadjustment (GtkFlowBox *box, GtkAdjustment *adjustment);
subroutine gtk_flow_box_set_hadjustment(box, adjustment) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: box
  type(c_ptr), value :: adjustment
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_flow_box_set_vadjustment (GtkFlowBox *box, GtkAdjustment *adjustment);
subroutine gtk_flow_box_set_vadjustment(box, adjustment) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: box
  type(c_ptr), value :: adjustment
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_flow_box_set_filter_func (GtkFlowBox *box, GtkFlowBoxFilterFunc filter_func, gpointer user_data, GDestroyNotify destroy);
subroutine gtk_flow_box_set_filter_func(box, filter_func, user_data, destroy)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: box
  type(c_funptr), value :: filter_func
  type(c_ptr), value :: user_data
  type(c_funptr), value :: destroy
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_flow_box_invalidate_filter (GtkFlowBox *box);
subroutine gtk_flow_box_invalidate_filter(box) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: box
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_flow_box_set_sort_func (GtkFlowBox *box, GtkFlowBoxSortFunc sort_func, gpointer user_data, GDestroyNotify destroy);
subroutine gtk_flow_box_set_sort_func(box, sort_func, user_data, destroy)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: box
  type(c_funptr), value :: sort_func
  type(c_ptr), value :: user_data
  type(c_funptr), value :: destroy
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_flow_box_invalidate_sort (GtkFlowBox *box);
subroutine gtk_flow_box_invalidate_sort(box) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: box
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_menu_button_get_type (void) G_GNUC_CONST;
function gtk_menu_button_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_menu_button_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_menu_button_new (void);
function gtk_menu_button_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_menu_button_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_menu_button_set_popover (GtkMenuButton *menu_button, GtkWidget *popover);
subroutine gtk_menu_button_set_popover(menu_button, popover) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: menu_button
  type(c_ptr), value :: popover
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkPopover *gtk_menu_button_get_popover (GtkMenuButton *menu_button);
function gtk_menu_button_get_popover(menu_button) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_menu_button_get_popover
  type(c_ptr), value :: menu_button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_menu_button_set_direction (GtkMenuButton *menu_button, GtkArrowType direction);
subroutine gtk_menu_button_set_direction(menu_button, direction) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: menu_button
  integer(c_int), value :: direction
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkArrowType gtk_menu_button_get_direction (GtkMenuButton *menu_button);
function gtk_menu_button_get_direction(menu_button) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_menu_button_get_direction
  type(c_ptr), value :: menu_button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_menu_button_set_menu_model (GtkMenuButton *menu_button, GMenuModel *menu_model);
subroutine gtk_menu_button_set_menu_model(menu_button, menu_model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: menu_button
  type(c_ptr), value :: menu_model
end subroutine

! GDK_AVAILABLE_IN_ALL
!GMenuModel *gtk_menu_button_get_menu_model (GtkMenuButton *menu_button);
function gtk_menu_button_get_menu_model(menu_button) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_menu_button_get_menu_model
  type(c_ptr), value :: menu_button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_menu_button_set_align_widget (GtkMenuButton *menu_button, GtkWidget *align_widget);
subroutine gtk_menu_button_set_align_widget(menu_button, align_widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: menu_button
  type(c_ptr), value :: align_widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_menu_button_get_align_widget (GtkMenuButton *menu_button);
function gtk_menu_button_get_align_widget(menu_button) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_menu_button_get_align_widget
  type(c_ptr), value :: menu_button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_menu_button_set_icon_name (GtkMenuButton *menu_button, const char *icon_name);
subroutine gtk_menu_button_set_icon_name(menu_button, icon_name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: menu_button
  character(kind=c_char), dimension(*) :: icon_name
end subroutine

! GDK_AVAILABLE_IN_ALL
!const char * gtk_menu_button_get_icon_name (GtkMenuButton *menu_button);
function gtk_menu_button_get_icon_name(menu_button) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_menu_button_get_icon_name
  type(c_ptr), value :: menu_button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_menu_button_set_label (GtkMenuButton *menu_button, const char *label);
subroutine gtk_menu_button_set_label(menu_button, label) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: menu_button
  character(kind=c_char), dimension(*) :: label
end subroutine

! GDK_AVAILABLE_IN_ALL
!const char * gtk_menu_button_get_label (GtkMenuButton *menu_button);
function gtk_menu_button_get_label(menu_button) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_menu_button_get_label
  type(c_ptr), value :: menu_button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_menu_button_set_use_underline (GtkMenuButton *menu_button, gboolean use_underline);
subroutine gtk_menu_button_set_use_underline(menu_button, use_underline)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: menu_button
  integer(c_int), value :: use_underline
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_menu_button_get_use_underline (GtkMenuButton *menu_button);
function gtk_menu_button_get_use_underline(menu_button) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_menu_button_get_use_underline
  type(c_ptr), value :: menu_button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_menu_button_set_relief (GtkMenuButton *menu_button, GtkReliefStyle relief);
subroutine gtk_menu_button_set_relief(menu_button, relief) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: menu_button
  integer(c_int), value :: relief
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkReliefStyle gtk_menu_button_get_relief (GtkMenuButton *menu_button);
function gtk_menu_button_get_relief(menu_button) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_menu_button_get_relief
  type(c_ptr), value :: menu_button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_menu_button_popup (GtkMenuButton *menu_button);
subroutine gtk_menu_button_popup(menu_button) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: menu_button
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_menu_button_popdown (GtkMenuButton *menu_button);
subroutine gtk_menu_button_popdown(menu_button) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: menu_button
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_menu_button_set_create_popup_func (GtkMenuButton *menu_button, GtkMenuButtonCreatePopupFunc func, gpointer user_data, GDestroyNotify destroy_notify);
subroutine gtk_menu_button_set_create_popup_func(menu_button, func, user_data,&
& destroy_notify) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: menu_button
  type(c_funptr), value :: func
  type(c_ptr), value :: user_data
  type(c_funptr), value :: destroy_notify
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_cell_area_context_get_type (void) G_GNUC_CONST;
function gtk_cell_area_context_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_cell_area_context_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkCellArea *gtk_cell_area_context_get_area (GtkCellAreaContext *context);
function gtk_cell_area_context_get_area(context) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_area_context_get_area
  type(c_ptr), value :: context
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_context_allocate (GtkCellAreaContext *context, gint width, gint height);
subroutine gtk_cell_area_context_allocate(context, width, height) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: context
  integer(c_int), value :: width
  integer(c_int), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_context_reset (GtkCellAreaContext *context);
subroutine gtk_cell_area_context_reset(context) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: context
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_context_get_preferred_width (GtkCellAreaContext *context, gint *minimum_width, gint *natural_width);
subroutine gtk_cell_area_context_get_preferred_width(context, minimum_width,&
& natural_width) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: context
  type(c_ptr), value :: minimum_width
  type(c_ptr), value :: natural_width
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_context_get_preferred_height (GtkCellAreaContext *context, gint *minimum_height, gint *natural_height);
subroutine gtk_cell_area_context_get_preferred_height(context, minimum_height,&
& natural_height) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: context
  type(c_ptr), value :: minimum_height
  type(c_ptr), value :: natural_height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_context_get_preferred_height_for_width (GtkCellAreaContext *context, gint width, gint *minimum_height, gint *natural_height);
subroutine gtk_cell_area_context_get_preferred_height_for_width(context, width,&
& minimum_height, natural_height) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: context
  integer(c_int), value :: width
  type(c_ptr), value :: minimum_height
  type(c_ptr), value :: natural_height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_context_get_preferred_width_for_height (GtkCellAreaContext *context, gint height, gint *minimum_width, gint *natural_width);
subroutine gtk_cell_area_context_get_preferred_width_for_height(context,&
& height, minimum_width, natural_width) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: context
  integer(c_int), value :: height
  type(c_ptr), value :: minimum_width
  type(c_ptr), value :: natural_width
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_context_get_allocation (GtkCellAreaContext *context, gint *width, gint *height);
subroutine gtk_cell_area_context_get_allocation(context, width, height) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: context
  type(c_ptr), value :: width
  type(c_ptr), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_context_push_preferred_width (GtkCellAreaContext *context, gint minimum_width, gint natural_width);
subroutine gtk_cell_area_context_push_preferred_width(context, minimum_width,&
& natural_width) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: context
  integer(c_int), value :: minimum_width
  integer(c_int), value :: natural_width
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_context_push_preferred_height (GtkCellAreaContext *context, gint minimum_height, gint natural_height);
subroutine gtk_cell_area_context_push_preferred_height(context, minimum_height,&
& natural_height) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: context
  integer(c_int), value :: minimum_height
  integer(c_int), value :: natural_height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_box_layout_set_homogeneous (GtkBoxLayout *box_layout, gboolean homogeneous);
subroutine gtk_box_layout_set_homogeneous(box_layout, homogeneous) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: box_layout
  integer(c_int), value :: homogeneous
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_box_layout_get_homogeneous (GtkBoxLayout *box_layout);
function gtk_box_layout_get_homogeneous(box_layout) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_box_layout_get_homogeneous
  type(c_ptr), value :: box_layout
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_box_layout_set_spacing (GtkBoxLayout *box_layout, guint spacing);
subroutine gtk_box_layout_set_spacing(box_layout, spacing) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: box_layout
  integer(c_int), value :: spacing
end subroutine

! GDK_AVAILABLE_IN_ALL
!guint gtk_box_layout_get_spacing (GtkBoxLayout *box_layout);
function gtk_box_layout_get_spacing(box_layout) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_box_layout_get_spacing
  type(c_ptr), value :: box_layout
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_box_layout_set_baseline_position (GtkBoxLayout *box_layout, GtkBaselinePosition position);
subroutine gtk_box_layout_set_baseline_position(box_layout, position) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: box_layout
  integer(c_int), value :: position
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkBaselinePosition gtk_box_layout_get_baseline_position (GtkBoxLayout *box_layout);
function gtk_box_layout_get_baseline_position(box_layout) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_box_layout_get_baseline_position
  type(c_ptr), value :: box_layout
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_combo_box_get_type (void) G_GNUC_CONST;
function gtk_combo_box_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_combo_box_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_combo_box_new (void);
function gtk_combo_box_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_combo_box_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_combo_box_new_with_entry (void);
function gtk_combo_box_new_with_entry() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_combo_box_new_with_entry
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_combo_box_new_with_model (GtkTreeModel *model);
function gtk_combo_box_new_with_model(model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_combo_box_new_with_model
  type(c_ptr), value :: model
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_combo_box_new_with_model_and_entry (GtkTreeModel *model);
function gtk_combo_box_new_with_model_and_entry(model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_combo_box_new_with_model_and_entry
  type(c_ptr), value :: model
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_combo_box_get_active (GtkComboBox *combo_box);
function gtk_combo_box_get_active(combo_box) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_combo_box_get_active
  type(c_ptr), value :: combo_box
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_combo_box_set_active (GtkComboBox *combo_box, gint index_);
subroutine gtk_combo_box_set_active(combo_box, index_) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: combo_box
  integer(c_int), value :: index_
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_combo_box_get_active_iter (GtkComboBox *combo_box, GtkTreeIter *iter);
function gtk_combo_box_get_active_iter(combo_box, iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_combo_box_get_active_iter
  type(c_ptr), value :: combo_box
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_combo_box_set_active_iter (GtkComboBox *combo_box, GtkTreeIter *iter);
subroutine gtk_combo_box_set_active_iter(combo_box, iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: combo_box
  type(c_ptr), value :: iter
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_combo_box_set_model (GtkComboBox *combo_box, GtkTreeModel *model);
subroutine gtk_combo_box_set_model(combo_box, model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: combo_box
  type(c_ptr), value :: model
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkTreeModel *gtk_combo_box_get_model (GtkComboBox *combo_box);
function gtk_combo_box_get_model(combo_box) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_combo_box_get_model
  type(c_ptr), value :: combo_box
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreeViewRowSeparatorFunc gtk_combo_box_get_row_separator_func (GtkComboBox *combo_box);
function gtk_combo_box_get_row_separator_func(combo_box) bind(c)
  use iso_c_binding, only: c_funptr, c_ptr
  type(c_funptr) :: gtk_combo_box_get_row_separator_func
  type(c_ptr), value :: combo_box
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_combo_box_set_row_separator_func (GtkComboBox *combo_box, GtkTreeViewRowSeparatorFunc func, gpointer data, GDestroyNotify destroy);
subroutine gtk_combo_box_set_row_separator_func(combo_box, func, data, destroy)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: combo_box
  type(c_funptr), value :: func
  type(c_ptr), value :: data
  type(c_funptr), value :: destroy
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_combo_box_set_button_sensitivity (GtkComboBox *combo_box, GtkSensitivityType sensitivity);
subroutine gtk_combo_box_set_button_sensitivity(combo_box, sensitivity) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: combo_box
  integer(c_int), value :: sensitivity
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkSensitivityType gtk_combo_box_get_button_sensitivity (GtkComboBox *combo_box);
function gtk_combo_box_get_button_sensitivity(combo_box) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_combo_box_get_button_sensitivity
  type(c_ptr), value :: combo_box
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_combo_box_get_has_entry (GtkComboBox *combo_box);
function gtk_combo_box_get_has_entry(combo_box) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_combo_box_get_has_entry
  type(c_ptr), value :: combo_box
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_combo_box_set_entry_text_column (GtkComboBox *combo_box, gint text_column);
subroutine gtk_combo_box_set_entry_text_column(combo_box, text_column) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: combo_box
  integer(c_int), value :: text_column
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_combo_box_get_entry_text_column (GtkComboBox *combo_box);
function gtk_combo_box_get_entry_text_column(combo_box) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_combo_box_get_entry_text_column
  type(c_ptr), value :: combo_box
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_combo_box_set_popup_fixed_width (GtkComboBox *combo_box, gboolean fixed);
subroutine gtk_combo_box_set_popup_fixed_width(combo_box, fixed) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: combo_box
  integer(c_int), value :: fixed
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_combo_box_get_popup_fixed_width (GtkComboBox *combo_box);
function gtk_combo_box_get_popup_fixed_width(combo_box) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_combo_box_get_popup_fixed_width
  type(c_ptr), value :: combo_box
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_combo_box_popup (GtkComboBox *combo_box);
subroutine gtk_combo_box_popup(combo_box) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: combo_box
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_combo_box_popup_for_device (GtkComboBox *combo_box, GdkDevice *device);
subroutine gtk_combo_box_popup_for_device(combo_box, device) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: combo_box
  type(c_ptr), value :: device
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_combo_box_popdown (GtkComboBox *combo_box);
subroutine gtk_combo_box_popdown(combo_box) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: combo_box
end subroutine

! GDK_AVAILABLE_IN_ALL
!AtkObject* gtk_combo_box_get_popup_accessible (GtkComboBox *combo_box);
function gtk_combo_box_get_popup_accessible(combo_box) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_combo_box_get_popup_accessible
  type(c_ptr), value :: combo_box
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_combo_box_get_id_column (GtkComboBox *combo_box);
function gtk_combo_box_get_id_column(combo_box) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_combo_box_get_id_column
  type(c_ptr), value :: combo_box
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_combo_box_set_id_column (GtkComboBox *combo_box, gint id_column);
subroutine gtk_combo_box_set_id_column(combo_box, id_column) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: combo_box
  integer(c_int), value :: id_column
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_combo_box_get_active_id (GtkComboBox *combo_box);
function gtk_combo_box_get_active_id(combo_box) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_combo_box_get_active_id
  type(c_ptr), value :: combo_box
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_combo_box_set_active_id (GtkComboBox *combo_box, const gchar *active_id);
function gtk_combo_box_set_active_id(combo_box, active_id) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_combo_box_set_active_id
  type(c_ptr), value :: combo_box
  character(kind=c_char), dimension(*) :: active_id
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_scale_button_get_type (void) G_GNUC_CONST;
function gtk_scale_button_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_scale_button_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_scale_button_new (gdouble min, gdouble max, gdouble step, const gchar **icons);
function gtk_scale_button_new(min, max, step, icons) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr) :: gtk_scale_button_new
  real(c_double), value :: min
  real(c_double), value :: max
  real(c_double), value :: step
  type(c_ptr), dimension(*) :: icons
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_scale_button_set_icons (GtkScaleButton *button, const gchar **icons);
subroutine gtk_scale_button_set_icons(button, icons) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: button
  type(c_ptr), dimension(*) :: icons
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_scale_button_get_value (GtkScaleButton *button);
function gtk_scale_button_get_value(button) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_scale_button_get_value
  type(c_ptr), value :: button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_scale_button_set_value (GtkScaleButton *button, gdouble value);
subroutine gtk_scale_button_set_value(button, value) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: button
  real(c_double), value :: value
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkAdjustment * gtk_scale_button_get_adjustment (GtkScaleButton *button);
function gtk_scale_button_get_adjustment(button) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_scale_button_get_adjustment
  type(c_ptr), value :: button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_scale_button_set_adjustment (GtkScaleButton *button, GtkAdjustment *adjustment);
subroutine gtk_scale_button_set_adjustment(button, adjustment) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: button
  type(c_ptr), value :: adjustment
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_scale_button_get_plus_button (GtkScaleButton *button);
function gtk_scale_button_get_plus_button(button) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_scale_button_get_plus_button
  type(c_ptr), value :: button
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_scale_button_get_minus_button (GtkScaleButton *button);
function gtk_scale_button_get_minus_button(button) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_scale_button_get_minus_button
  type(c_ptr), value :: button
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_scale_button_get_popup (GtkScaleButton *button);
function gtk_scale_button_get_popup(button) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_scale_button_get_popup
  type(c_ptr), value :: button
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_range_get_type (void) G_GNUC_CONST;
function gtk_range_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_range_get_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_range_set_adjustment (GtkRange *range, GtkAdjustment *adjustment);
subroutine gtk_range_set_adjustment(range, adjustment) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: range
  type(c_ptr), value :: adjustment
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkAdjustment* gtk_range_get_adjustment (GtkRange *range);
function gtk_range_get_adjustment(range) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_range_get_adjustment
  type(c_ptr), value :: range
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_range_set_inverted (GtkRange *range, gboolean setting);
subroutine gtk_range_set_inverted(range, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: range
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_range_get_inverted (GtkRange *range);
function gtk_range_get_inverted(range) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_range_get_inverted
  type(c_ptr), value :: range
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_range_set_flippable (GtkRange *range, gboolean flippable);
subroutine gtk_range_set_flippable(range, flippable) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: range
  integer(c_int), value :: flippable
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_range_get_flippable (GtkRange *range);
function gtk_range_get_flippable(range) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_range_get_flippable
  type(c_ptr), value :: range
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_range_set_slider_size_fixed (GtkRange *range, gboolean size_fixed);
subroutine gtk_range_set_slider_size_fixed(range, size_fixed) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: range
  integer(c_int), value :: size_fixed
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_range_get_slider_size_fixed (GtkRange *range);
function gtk_range_get_slider_size_fixed(range) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_range_get_slider_size_fixed
  type(c_ptr), value :: range
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_range_get_range_rect (GtkRange *range, GdkRectangle *range_rect);
subroutine gtk_range_get_range_rect(range, range_rect) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: range
  type(c_ptr), value :: range_rect
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_range_get_slider_range (GtkRange *range, gint *slider_start, gint *slider_end);
subroutine gtk_range_get_slider_range(range, slider_start, slider_end) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: range
  type(c_ptr), value :: slider_start
  type(c_ptr), value :: slider_end
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_range_set_increments (GtkRange *range, gdouble step, gdouble page);
subroutine gtk_range_set_increments(range, step, page) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: range
  real(c_double), value :: step
  real(c_double), value :: page
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_range_set_range (GtkRange *range, gdouble min, gdouble max);
subroutine gtk_range_set_range(range, min, max) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: range
  real(c_double), value :: min
  real(c_double), value :: max
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_range_set_value (GtkRange *range, gdouble value);
subroutine gtk_range_set_value(range, value) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: range
  real(c_double), value :: value
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_range_get_value (GtkRange *range);
function gtk_range_get_value(range) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_range_get_value
  type(c_ptr), value :: range
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_range_set_show_fill_level (GtkRange *range, gboolean show_fill_level);
subroutine gtk_range_set_show_fill_level(range, show_fill_level) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: range
  integer(c_int), value :: show_fill_level
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_range_get_show_fill_level (GtkRange *range);
function gtk_range_get_show_fill_level(range) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_range_get_show_fill_level
  type(c_ptr), value :: range
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_range_set_restrict_to_fill_level (GtkRange *range, gboolean restrict_to_fill_level);
subroutine gtk_range_set_restrict_to_fill_level(range, restrict_to_fill_level)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: range
  integer(c_int), value :: restrict_to_fill_level
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_range_get_restrict_to_fill_level (GtkRange *range);
function gtk_range_get_restrict_to_fill_level(range) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_range_get_restrict_to_fill_level
  type(c_ptr), value :: range
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_range_set_fill_level (GtkRange *range, gdouble fill_level);
subroutine gtk_range_set_fill_level(range, fill_level) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: range
  real(c_double), value :: fill_level
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_range_get_fill_level (GtkRange *range);
function gtk_range_get_fill_level(range) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_range_get_fill_level
  type(c_ptr), value :: range
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_range_set_round_digits (GtkRange *range, gint round_digits);
subroutine gtk_range_set_round_digits(range, round_digits) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: range
  integer(c_int), value :: round_digits
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_range_get_round_digits (GtkRange *range);
function gtk_range_get_round_digits(range) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_range_get_round_digits
  type(c_ptr), value :: range
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_font_chooser_widget_get_type (void) G_GNUC_CONST;
function gtk_font_chooser_widget_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_font_chooser_widget_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_font_chooser_widget_new (void);
function gtk_font_chooser_widget_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_font_chooser_widget_new
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_stack_page_get_type (void) G_GNUC_CONST;
function gtk_stack_page_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_stack_page_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_stack_page_get_child (GtkStackPage *page);
function gtk_stack_page_get_child(page) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_stack_page_get_child
  type(c_ptr), value :: page
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_stack_page_get_visible (GtkStackPage *page);
function gtk_stack_page_get_visible(page) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_stack_page_get_visible
  type(c_ptr), value :: page
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_stack_page_set_visible (GtkStackPage *page, gboolean visible);
subroutine gtk_stack_page_set_visible(page, visible) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: page
  integer(c_int), value :: visible
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_stack_get_type (void) G_GNUC_CONST;
function gtk_stack_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_stack_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_stack_new (void);
function gtk_stack_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_stack_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkStackPage * gtk_stack_add_named (GtkStack *stack, GtkWidget *child, const gchar *name);
function gtk_stack_add_named(stack, child, name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_stack_add_named
  type(c_ptr), value :: stack
  type(c_ptr), value :: child
  character(kind=c_char), dimension(*) :: name
end function

! GDK_AVAILABLE_IN_ALL
!GtkStackPage * gtk_stack_add_titled (GtkStack *stack, GtkWidget *child, const gchar *name, const gchar *title);
function gtk_stack_add_titled(stack, child, name, title) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_stack_add_titled
  type(c_ptr), value :: stack
  type(c_ptr), value :: child
  character(kind=c_char), dimension(*) :: name
  character(kind=c_char), dimension(*) :: title
end function

! GDK_AVAILABLE_IN_ALL
!GtkStackPage * gtk_stack_get_page (GtkStack *stack, GtkWidget *child);
function gtk_stack_get_page(stack, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_stack_get_page
  type(c_ptr), value :: stack
  type(c_ptr), value :: child
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_stack_get_child_by_name (GtkStack *stack, const gchar *name);
function gtk_stack_get_child_by_name(stack, name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_stack_get_child_by_name
  type(c_ptr), value :: stack
  character(kind=c_char), dimension(*) :: name
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_stack_set_visible_child (GtkStack *stack, GtkWidget *child);
subroutine gtk_stack_set_visible_child(stack, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: stack
  type(c_ptr), value :: child
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_stack_get_visible_child (GtkStack *stack);
function gtk_stack_get_visible_child(stack) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_stack_get_visible_child
  type(c_ptr), value :: stack
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_stack_set_visible_child_name (GtkStack *stack, const gchar *name);
subroutine gtk_stack_set_visible_child_name(stack, name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: stack
  character(kind=c_char), dimension(*) :: name
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_stack_get_visible_child_name (GtkStack *stack);
function gtk_stack_get_visible_child_name(stack) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_stack_get_visible_child_name
  type(c_ptr), value :: stack
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_stack_set_visible_child_full (GtkStack *stack, const gchar *name, GtkStackTransitionType transition);
subroutine gtk_stack_set_visible_child_full(stack, name, transition) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int
  type(c_ptr), value :: stack
  character(kind=c_char), dimension(*) :: name
  integer(c_int), value :: transition
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_stack_set_homogeneous (GtkStack *stack, gboolean homogeneous);
subroutine gtk_stack_set_homogeneous(stack, homogeneous) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: stack
  integer(c_int), value :: homogeneous
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_stack_get_homogeneous (GtkStack *stack);
function gtk_stack_get_homogeneous(stack) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_stack_get_homogeneous
  type(c_ptr), value :: stack
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_stack_set_hhomogeneous (GtkStack *stack, gboolean hhomogeneous);
subroutine gtk_stack_set_hhomogeneous(stack, hhomogeneous) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: stack
  integer(c_int), value :: hhomogeneous
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_stack_get_hhomogeneous (GtkStack *stack);
function gtk_stack_get_hhomogeneous(stack) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_stack_get_hhomogeneous
  type(c_ptr), value :: stack
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_stack_set_vhomogeneous (GtkStack *stack, gboolean vhomogeneous);
subroutine gtk_stack_set_vhomogeneous(stack, vhomogeneous) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: stack
  integer(c_int), value :: vhomogeneous
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_stack_get_vhomogeneous (GtkStack *stack);
function gtk_stack_get_vhomogeneous(stack) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_stack_get_vhomogeneous
  type(c_ptr), value :: stack
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_stack_set_transition_duration (GtkStack *stack, guint duration);
subroutine gtk_stack_set_transition_duration(stack, duration) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: stack
  integer(c_int), value :: duration
end subroutine

! GDK_AVAILABLE_IN_ALL
!guint gtk_stack_get_transition_duration (GtkStack *stack);
function gtk_stack_get_transition_duration(stack) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_stack_get_transition_duration
  type(c_ptr), value :: stack
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_stack_set_transition_type (GtkStack *stack, GtkStackTransitionType transition);
subroutine gtk_stack_set_transition_type(stack, transition) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: stack
  integer(c_int), value :: transition
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkStackTransitionType gtk_stack_get_transition_type (GtkStack *stack);
function gtk_stack_get_transition_type(stack) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_stack_get_transition_type
  type(c_ptr), value :: stack
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_stack_get_transition_running (GtkStack *stack);
function gtk_stack_get_transition_running(stack) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_stack_get_transition_running
  type(c_ptr), value :: stack
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_stack_set_interpolate_size (GtkStack *stack, gboolean interpolate_size);
subroutine gtk_stack_set_interpolate_size(stack, interpolate_size) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: stack
  integer(c_int), value :: interpolate_size
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_stack_get_interpolate_size (GtkStack *stack);
function gtk_stack_get_interpolate_size(stack) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_stack_get_interpolate_size
  type(c_ptr), value :: stack
end function

! GDK_AVAILABLE_IN_ALL
!GtkSelectionModel * gtk_stack_get_pages (GtkStack *stack);
function gtk_stack_get_pages(stack) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_stack_get_pages
  type(c_ptr), value :: stack
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_shortcut_controller_get_type (void) G_GNUC_CONST;
function gtk_shortcut_controller_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_shortcut_controller_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkEventController * gtk_shortcut_controller_new (void);
function gtk_shortcut_controller_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_shortcut_controller_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkEventController * gtk_shortcut_controller_new_for_model (GListModel *list);
function gtk_shortcut_controller_new_for_model(list) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_shortcut_controller_new_for_model
  type(c_ptr), value :: list
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_shortcut_controller_set_mnemonics_modifiers (GtkShortcutController *self, GdkModifierType modifiers);
subroutine gtk_shortcut_controller_set_mnemonics_modifiers(self, modifiers)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: modifiers
end subroutine

! GDK_AVAILABLE_IN_ALL
!GdkModifierType gtk_shortcut_controller_get_mnemonics_modifiers (GtkShortcutController *self);
function gtk_shortcut_controller_get_mnemonics_modifiers(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_shortcut_controller_get_mnemonics_modifiers
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_shortcut_controller_set_scope (GtkShortcutController *self, GtkShortcutScope scope);
subroutine gtk_shortcut_controller_set_scope(self, scope) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: scope
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkShortcutScope gtk_shortcut_controller_get_scope (GtkShortcutController *self);
function gtk_shortcut_controller_get_scope(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_shortcut_controller_get_scope
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_shortcut_controller_add_shortcut (GtkShortcutController *self, GtkShortcut *shortcut);
subroutine gtk_shortcut_controller_add_shortcut(self, shortcut) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: shortcut
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_shortcut_controller_remove_shortcut (GtkShortcutController *self, GtkShortcut *shortcut);
subroutine gtk_shortcut_controller_remove_shortcut(self, shortcut) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: shortcut
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_entry_buffer_get_type (void) G_GNUC_CONST;
function gtk_entry_buffer_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_entry_buffer_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkEntryBuffer* gtk_entry_buffer_new (const gchar *initial_chars, gint n_initial_chars);
function gtk_entry_buffer_new(initial_chars, n_initial_chars) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int
  type(c_ptr) :: gtk_entry_buffer_new
  character(kind=c_char), dimension(*) :: initial_chars
  integer(c_int), value :: n_initial_chars
end function

! GDK_AVAILABLE_IN_ALL
!gsize gtk_entry_buffer_get_bytes (GtkEntryBuffer *buffer);
function gtk_entry_buffer_get_bytes(buffer) bind(c)
  use iso_c_binding, only: c_size_t, c_ptr
  integer(c_size_t) :: gtk_entry_buffer_get_bytes
  type(c_ptr), value :: buffer
end function

! GDK_AVAILABLE_IN_ALL
!guint gtk_entry_buffer_get_length (GtkEntryBuffer *buffer);
function gtk_entry_buffer_get_length(buffer) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_entry_buffer_get_length
  type(c_ptr), value :: buffer
end function

! GDK_AVAILABLE_IN_ALL
!const gchar* gtk_entry_buffer_get_text (GtkEntryBuffer *buffer);
function gtk_entry_buffer_get_text(buffer) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_entry_buffer_get_text
  type(c_ptr), value :: buffer
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_buffer_set_text (GtkEntryBuffer *buffer, const gchar *chars, gint n_chars);
subroutine gtk_entry_buffer_set_text(buffer, chars, n_chars) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int
  type(c_ptr), value :: buffer
  character(kind=c_char), dimension(*) :: chars
  integer(c_int), value :: n_chars
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_buffer_set_max_length (GtkEntryBuffer *buffer, gint max_length);
subroutine gtk_entry_buffer_set_max_length(buffer, max_length) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: buffer
  integer(c_int), value :: max_length
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_entry_buffer_get_max_length (GtkEntryBuffer *buffer);
function gtk_entry_buffer_get_max_length(buffer) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_entry_buffer_get_max_length
  type(c_ptr), value :: buffer
end function

! GDK_AVAILABLE_IN_ALL
!guint gtk_entry_buffer_insert_text (GtkEntryBuffer *buffer, guint position, const gchar *chars, gint n_chars);
function gtk_entry_buffer_insert_text(buffer, position, chars, n_chars) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_entry_buffer_insert_text
  type(c_ptr), value :: buffer
  integer(c_int), value :: position
  character(kind=c_char), dimension(*) :: chars
  integer(c_int), value :: n_chars
end function

! GDK_AVAILABLE_IN_ALL
!guint gtk_entry_buffer_delete_text (GtkEntryBuffer *buffer, guint position, gint n_chars);
function gtk_entry_buffer_delete_text(buffer, position, n_chars) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_entry_buffer_delete_text
  type(c_ptr), value :: buffer
  integer(c_int), value :: position
  integer(c_int), value :: n_chars
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_buffer_emit_inserted_text (GtkEntryBuffer *buffer, guint position, const gchar *chars, guint n_chars);
subroutine gtk_entry_buffer_emit_inserted_text(buffer, position, chars,&
& n_chars) bind(c)
  use iso_c_binding, only: c_ptr, c_int, c_char
  type(c_ptr), value :: buffer
  integer(c_int), value :: position
  character(kind=c_char), dimension(*) :: chars
  integer(c_int), value :: n_chars
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_buffer_emit_deleted_text (GtkEntryBuffer *buffer, guint position, guint n_chars);
subroutine gtk_entry_buffer_emit_deleted_text(buffer, position, n_chars)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: buffer
  integer(c_int), value :: position
  integer(c_int), value :: n_chars
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_event_controller_key_get_type (void) G_GNUC_CONST;
function gtk_event_controller_key_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_event_controller_key_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkEventController *gtk_event_controller_key_new (void);
function gtk_event_controller_key_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_event_controller_key_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_event_controller_key_set_im_context (GtkEventControllerKey *controller, GtkIMContext *im_context);
subroutine gtk_event_controller_key_set_im_context(controller, im_context)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: controller
  type(c_ptr), value :: im_context
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkIMContext * gtk_event_controller_key_get_im_context (GtkEventControllerKey *controller);
function gtk_event_controller_key_get_im_context(controller) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_event_controller_key_get_im_context
  type(c_ptr), value :: controller
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_event_controller_key_forward (GtkEventControllerKey *controller, GtkWidget *widget);
function gtk_event_controller_key_forward(controller, widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_event_controller_key_forward
  type(c_ptr), value :: controller
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!guint gtk_event_controller_key_get_group (GtkEventControllerKey *controller);
function gtk_event_controller_key_get_group(controller) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_event_controller_key_get_group
  type(c_ptr), value :: controller
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_scrolled_window_get_type (void) G_GNUC_CONST;
function gtk_scrolled_window_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_scrolled_window_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_scrolled_window_new (GtkAdjustment *hadjustment, GtkAdjustment *vadjustment);
function gtk_scrolled_window_new(hadjustment, vadjustment) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_scrolled_window_new
  type(c_ptr), value :: hadjustment
  type(c_ptr), value :: vadjustment
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_scrolled_window_set_hadjustment (GtkScrolledWindow *scrolled_window, GtkAdjustment *hadjustment);
subroutine gtk_scrolled_window_set_hadjustment(scrolled_window, hadjustment)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: scrolled_window
  type(c_ptr), value :: hadjustment
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_scrolled_window_set_vadjustment (GtkScrolledWindow *scrolled_window, GtkAdjustment *vadjustment);
subroutine gtk_scrolled_window_set_vadjustment(scrolled_window, vadjustment)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: scrolled_window
  type(c_ptr), value :: vadjustment
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkAdjustment* gtk_scrolled_window_get_hadjustment (GtkScrolledWindow *scrolled_window);
function gtk_scrolled_window_get_hadjustment(scrolled_window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_scrolled_window_get_hadjustment
  type(c_ptr), value :: scrolled_window
end function

! GDK_AVAILABLE_IN_ALL
!GtkAdjustment* gtk_scrolled_window_get_vadjustment (GtkScrolledWindow *scrolled_window);
function gtk_scrolled_window_get_vadjustment(scrolled_window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_scrolled_window_get_vadjustment
  type(c_ptr), value :: scrolled_window
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_scrolled_window_get_hscrollbar (GtkScrolledWindow *scrolled_window);
function gtk_scrolled_window_get_hscrollbar(scrolled_window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_scrolled_window_get_hscrollbar
  type(c_ptr), value :: scrolled_window
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_scrolled_window_get_vscrollbar (GtkScrolledWindow *scrolled_window);
function gtk_scrolled_window_get_vscrollbar(scrolled_window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_scrolled_window_get_vscrollbar
  type(c_ptr), value :: scrolled_window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_scrolled_window_set_policy (GtkScrolledWindow *scrolled_window, GtkPolicyType hscrollbar_policy, GtkPolicyType vscrollbar_policy);
subroutine gtk_scrolled_window_set_policy(scrolled_window, hscrollbar_policy,&
& vscrollbar_policy) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: scrolled_window
  integer(c_int), value :: hscrollbar_policy
  integer(c_int), value :: vscrollbar_policy
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_scrolled_window_get_policy (GtkScrolledWindow *scrolled_window, GtkPolicyType *hscrollbar_policy, GtkPolicyType *vscrollbar_policy);
subroutine gtk_scrolled_window_get_policy(scrolled_window, hscrollbar_policy,&
& vscrollbar_policy) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: scrolled_window
  integer(c_int), value :: hscrollbar_policy
  integer(c_int), value :: vscrollbar_policy
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_scrolled_window_set_placement (GtkScrolledWindow *scrolled_window, GtkCornerType window_placement);
subroutine gtk_scrolled_window_set_placement(scrolled_window, window_placement)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: scrolled_window
  integer(c_int), value :: window_placement
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_scrolled_window_unset_placement (GtkScrolledWindow *scrolled_window);
subroutine gtk_scrolled_window_unset_placement(scrolled_window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: scrolled_window
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkCornerType gtk_scrolled_window_get_placement (GtkScrolledWindow *scrolled_window);
function gtk_scrolled_window_get_placement(scrolled_window) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_scrolled_window_get_placement
  type(c_ptr), value :: scrolled_window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_scrolled_window_set_shadow_type (GtkScrolledWindow *scrolled_window, GtkShadowType type);
subroutine gtk_scrolled_window_set_shadow_type(scrolled_window, type) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: scrolled_window
  integer(c_int), value :: type
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkShadowType gtk_scrolled_window_get_shadow_type (GtkScrolledWindow *scrolled_window);
function gtk_scrolled_window_get_shadow_type(scrolled_window) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_scrolled_window_get_shadow_type
  type(c_ptr), value :: scrolled_window
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_scrolled_window_get_min_content_width (GtkScrolledWindow *scrolled_window);
function gtk_scrolled_window_get_min_content_width(scrolled_window) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_scrolled_window_get_min_content_width
  type(c_ptr), value :: scrolled_window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_scrolled_window_set_min_content_width (GtkScrolledWindow *scrolled_window, gint width);
subroutine gtk_scrolled_window_set_min_content_width(scrolled_window, width)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: scrolled_window
  integer(c_int), value :: width
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_scrolled_window_get_min_content_height (GtkScrolledWindow *scrolled_window);
function gtk_scrolled_window_get_min_content_height(scrolled_window) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_scrolled_window_get_min_content_height
  type(c_ptr), value :: scrolled_window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_scrolled_window_set_min_content_height (GtkScrolledWindow *scrolled_window, gint height);
subroutine gtk_scrolled_window_set_min_content_height(scrolled_window, height)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: scrolled_window
  integer(c_int), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_scrolled_window_set_kinetic_scrolling (GtkScrolledWindow *scrolled_window, gboolean kinetic_scrolling);
subroutine gtk_scrolled_window_set_kinetic_scrolling(scrolled_window,&
& kinetic_scrolling) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: scrolled_window
  integer(c_int), value :: kinetic_scrolling
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_scrolled_window_get_kinetic_scrolling (GtkScrolledWindow *scrolled_window);
function gtk_scrolled_window_get_kinetic_scrolling(scrolled_window) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_scrolled_window_get_kinetic_scrolling
  type(c_ptr), value :: scrolled_window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_scrolled_window_set_capture_button_press (GtkScrolledWindow *scrolled_window, gboolean capture_button_press);
subroutine gtk_scrolled_window_set_capture_button_press(scrolled_window,&
& capture_button_press) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: scrolled_window
  integer(c_int), value :: capture_button_press
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_scrolled_window_get_capture_button_press (GtkScrolledWindow *scrolled_window);
function gtk_scrolled_window_get_capture_button_press(scrolled_window) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_scrolled_window_get_capture_button_press
  type(c_ptr), value :: scrolled_window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_scrolled_window_set_overlay_scrolling (GtkScrolledWindow *scrolled_window, gboolean overlay_scrolling);
subroutine gtk_scrolled_window_set_overlay_scrolling(scrolled_window,&
& overlay_scrolling) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: scrolled_window
  integer(c_int), value :: overlay_scrolling
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_scrolled_window_get_overlay_scrolling (GtkScrolledWindow *scrolled_window);
function gtk_scrolled_window_get_overlay_scrolling(scrolled_window) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_scrolled_window_get_overlay_scrolling
  type(c_ptr), value :: scrolled_window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_scrolled_window_set_max_content_width (GtkScrolledWindow *scrolled_window, gint width);
subroutine gtk_scrolled_window_set_max_content_width(scrolled_window, width)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: scrolled_window
  integer(c_int), value :: width
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_scrolled_window_get_max_content_width (GtkScrolledWindow *scrolled_window);
function gtk_scrolled_window_get_max_content_width(scrolled_window) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_scrolled_window_get_max_content_width
  type(c_ptr), value :: scrolled_window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_scrolled_window_set_max_content_height (GtkScrolledWindow *scrolled_window, gint height);
subroutine gtk_scrolled_window_set_max_content_height(scrolled_window, height)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: scrolled_window
  integer(c_int), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_scrolled_window_get_max_content_height (GtkScrolledWindow *scrolled_window);
function gtk_scrolled_window_get_max_content_height(scrolled_window) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_scrolled_window_get_max_content_height
  type(c_ptr), value :: scrolled_window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_scrolled_window_set_propagate_natural_width (GtkScrolledWindow *scrolled_window, gboolean propagate);
subroutine gtk_scrolled_window_set_propagate_natural_width(scrolled_window,&
& propagate) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: scrolled_window
  integer(c_int), value :: propagate
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_scrolled_window_get_propagate_natural_width (GtkScrolledWindow *scrolled_window);
function gtk_scrolled_window_get_propagate_natural_width(scrolled_window)&
& bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_scrolled_window_get_propagate_natural_width
  type(c_ptr), value :: scrolled_window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_scrolled_window_set_propagate_natural_height (GtkScrolledWindow *scrolled_window, gboolean propagate);
subroutine gtk_scrolled_window_set_propagate_natural_height(scrolled_window,&
& propagate) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: scrolled_window
  integer(c_int), value :: propagate
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_scrolled_window_get_propagate_natural_height (GtkScrolledWindow *scrolled_window);
function gtk_scrolled_window_get_propagate_natural_height(scrolled_window)&
& bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_scrolled_window_get_propagate_natural_height
  type(c_ptr), value :: scrolled_window
end function

! GDK_AVAILABLE_IN_ALL
!GskTransform * gtk_fixed_layout_child_get_transform (GtkFixedLayoutChild *child);
function gtk_fixed_layout_child_get_transform(child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_fixed_layout_child_get_transform
  type(c_ptr), value :: child
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_constraint_guide_set_min_size (GtkConstraintGuide *guide, int width, int height);
subroutine gtk_constraint_guide_set_min_size(guide, width, height) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: guide
  integer(c_int), value :: width
  integer(c_int), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_constraint_guide_get_min_size (GtkConstraintGuide *guide, int *width, int *height);
subroutine gtk_constraint_guide_get_min_size(guide, width, height) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: guide
  type(c_ptr), value :: width
  type(c_ptr), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_constraint_guide_set_nat_size (GtkConstraintGuide *guide, int width, int height);
subroutine gtk_constraint_guide_set_nat_size(guide, width, height) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: guide
  integer(c_int), value :: width
  integer(c_int), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_constraint_guide_get_nat_size (GtkConstraintGuide *guide, int *width, int *height);
subroutine gtk_constraint_guide_get_nat_size(guide, width, height) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: guide
  type(c_ptr), value :: width
  type(c_ptr), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_constraint_guide_set_max_size (GtkConstraintGuide *guide, int width, int height);
subroutine gtk_constraint_guide_set_max_size(guide, width, height) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: guide
  integer(c_int), value :: width
  integer(c_int), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_constraint_guide_get_max_size (GtkConstraintGuide *guide, int *width, int *height);
subroutine gtk_constraint_guide_get_max_size(guide, width, height) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: guide
  type(c_ptr), value :: width
  type(c_ptr), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkConstraintStrength gtk_constraint_guide_get_strength (GtkConstraintGuide *guide);
function gtk_constraint_guide_get_strength(guide) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_constraint_guide_get_strength
  type(c_ptr), value :: guide
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_constraint_guide_set_strength (GtkConstraintGuide *guide, GtkConstraintStrength strength);
subroutine gtk_constraint_guide_set_strength(guide, strength) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: guide
  integer(c_int), value :: strength
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_constraint_guide_set_name (GtkConstraintGuide *guide, const char *name);
subroutine gtk_constraint_guide_set_name(guide, name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: guide
  character(kind=c_char), dimension(*) :: name
end subroutine

! GDK_AVAILABLE_IN_ALL
!const char * gtk_constraint_guide_get_name (GtkConstraintGuide *guide);
function gtk_constraint_guide_get_name(guide) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_constraint_guide_get_name
  type(c_ptr), value :: guide
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_drawing_area_get_type (void) G_GNUC_CONST;
function gtk_drawing_area_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_drawing_area_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_drawing_area_new (void);
function gtk_drawing_area_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_drawing_area_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_drawing_area_set_content_width (GtkDrawingArea *self, int width);
subroutine gtk_drawing_area_set_content_width(self, width) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: width
end subroutine

! GDK_AVAILABLE_IN_ALL
!int gtk_drawing_area_get_content_width (GtkDrawingArea *self);
function gtk_drawing_area_get_content_width(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_drawing_area_get_content_width
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_drawing_area_set_content_height (GtkDrawingArea *self, int height);
subroutine gtk_drawing_area_set_content_height(self, height) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!int gtk_drawing_area_get_content_height (GtkDrawingArea *self);
function gtk_drawing_area_get_content_height(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_drawing_area_get_content_height
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_drawing_area_set_draw_func (GtkDrawingArea *self, GtkDrawingAreaDrawFunc draw_func, gpointer user_data, GDestroyNotify destroy);
subroutine gtk_drawing_area_set_draw_func(self, draw_func, user_data, destroy)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: self
  type(c_funptr), value :: draw_func
  type(c_ptr), value :: user_data
  type(c_funptr), value :: destroy
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_entry_completion_get_type (void) G_GNUC_CONST;
function gtk_entry_completion_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_entry_completion_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkEntryCompletion *gtk_entry_completion_new (void);
function gtk_entry_completion_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_entry_completion_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkEntryCompletion *gtk_entry_completion_new_with_area (GtkCellArea *area);
function gtk_entry_completion_new_with_area(area) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_entry_completion_new_with_area
  type(c_ptr), value :: area
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_entry_completion_get_entry (GtkEntryCompletion *completion);
function gtk_entry_completion_get_entry(completion) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_entry_completion_get_entry
  type(c_ptr), value :: completion
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_completion_set_model (GtkEntryCompletion *completion, GtkTreeModel *model);
subroutine gtk_entry_completion_set_model(completion, model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: completion
  type(c_ptr), value :: model
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkTreeModel *gtk_entry_completion_get_model (GtkEntryCompletion *completion);
function gtk_entry_completion_get_model(completion) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_entry_completion_get_model
  type(c_ptr), value :: completion
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_completion_set_match_func (GtkEntryCompletion *completion, GtkEntryCompletionMatchFunc func, gpointer func_data, GDestroyNotify func_notify);
subroutine gtk_entry_completion_set_match_func(completion, func, func_data,&
& func_notify) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: completion
  type(c_funptr), value :: func
  type(c_ptr), value :: func_data
  type(c_funptr), value :: func_notify
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_completion_set_minimum_key_length (GtkEntryCompletion *completion, gint length);
subroutine gtk_entry_completion_set_minimum_key_length(completion, length)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: completion
  integer(c_int), value :: length
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_entry_completion_get_minimum_key_length (GtkEntryCompletion *completion);
function gtk_entry_completion_get_minimum_key_length(completion) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_entry_completion_get_minimum_key_length
  type(c_ptr), value :: completion
end function

! GDK_AVAILABLE_IN_ALL
!gchar * gtk_entry_completion_compute_prefix (GtkEntryCompletion *completion, const char *key);
function gtk_entry_completion_compute_prefix(completion, key) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_entry_completion_compute_prefix
  type(c_ptr), value :: completion
  character(kind=c_char), dimension(*) :: key
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_completion_complete (GtkEntryCompletion *completion);
subroutine gtk_entry_completion_complete(completion) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: completion
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_completion_insert_prefix (GtkEntryCompletion *completion);
subroutine gtk_entry_completion_insert_prefix(completion) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: completion
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_completion_insert_action_text (GtkEntryCompletion *completion, gint index_, const gchar *text);
subroutine gtk_entry_completion_insert_action_text(completion, index_, text)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int, c_char
  type(c_ptr), value :: completion
  integer(c_int), value :: index_
  character(kind=c_char), dimension(*) :: text
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_completion_insert_action_markup (GtkEntryCompletion *completion, gint index_, const gchar *markup);
subroutine gtk_entry_completion_insert_action_markup(completion, index_,&
& markup) bind(c)
  use iso_c_binding, only: c_ptr, c_int, c_char
  type(c_ptr), value :: completion
  integer(c_int), value :: index_
  character(kind=c_char), dimension(*) :: markup
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_completion_delete_action (GtkEntryCompletion *completion, gint index_);
subroutine gtk_entry_completion_delete_action(completion, index_) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: completion
  integer(c_int), value :: index_
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_completion_set_inline_completion (GtkEntryCompletion *completion, gboolean inline_completion);
subroutine gtk_entry_completion_set_inline_completion(completion,&
& inline_completion) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: completion
  integer(c_int), value :: inline_completion
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_entry_completion_get_inline_completion (GtkEntryCompletion *completion);
function gtk_entry_completion_get_inline_completion(completion) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_entry_completion_get_inline_completion
  type(c_ptr), value :: completion
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_completion_set_inline_selection (GtkEntryCompletion *completion, gboolean inline_selection);
subroutine gtk_entry_completion_set_inline_selection(completion,&
& inline_selection) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: completion
  integer(c_int), value :: inline_selection
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_entry_completion_get_inline_selection (GtkEntryCompletion *completion);
function gtk_entry_completion_get_inline_selection(completion) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_entry_completion_get_inline_selection
  type(c_ptr), value :: completion
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_completion_set_popup_completion (GtkEntryCompletion *completion, gboolean popup_completion);
subroutine gtk_entry_completion_set_popup_completion(completion,&
& popup_completion) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: completion
  integer(c_int), value :: popup_completion
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_entry_completion_get_popup_completion (GtkEntryCompletion *completion);
function gtk_entry_completion_get_popup_completion(completion) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_entry_completion_get_popup_completion
  type(c_ptr), value :: completion
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_completion_set_popup_set_width (GtkEntryCompletion *completion, gboolean popup_set_width);
subroutine gtk_entry_completion_set_popup_set_width(completion,&
& popup_set_width) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: completion
  integer(c_int), value :: popup_set_width
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_entry_completion_get_popup_set_width (GtkEntryCompletion *completion);
function gtk_entry_completion_get_popup_set_width(completion) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_entry_completion_get_popup_set_width
  type(c_ptr), value :: completion
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_completion_set_popup_single_match (GtkEntryCompletion *completion, gboolean popup_single_match);
subroutine gtk_entry_completion_set_popup_single_match(completion,&
& popup_single_match) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: completion
  integer(c_int), value :: popup_single_match
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_entry_completion_get_popup_single_match (GtkEntryCompletion *completion);
function gtk_entry_completion_get_popup_single_match(completion) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_entry_completion_get_popup_single_match
  type(c_ptr), value :: completion
end function

! GDK_AVAILABLE_IN_ALL
!const gchar *gtk_entry_completion_get_completion_prefix (GtkEntryCompletion *completion);
function gtk_entry_completion_get_completion_prefix(completion) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_entry_completion_get_completion_prefix
  type(c_ptr), value :: completion
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_completion_set_text_column (GtkEntryCompletion *completion, gint column);
subroutine gtk_entry_completion_set_text_column(completion, column) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: completion
  integer(c_int), value :: column
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_entry_completion_get_text_column (GtkEntryCompletion *completion);
function gtk_entry_completion_get_text_column(completion) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_entry_completion_get_text_column
  type(c_ptr), value :: completion
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_event_controller_scroll_get_type (void) G_GNUC_CONST;
function gtk_event_controller_scroll_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_event_controller_scroll_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkEventController *gtk_event_controller_scroll_new (GtkEventControllerScrollFlags flags);
function gtk_event_controller_scroll_new(flags) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_event_controller_scroll_new
  integer(c_int), value :: flags
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_event_controller_scroll_set_flags (GtkEventControllerScroll *scroll, GtkEventControllerScrollFlags flags);
subroutine gtk_event_controller_scroll_set_flags(scroll, flags) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: scroll
  integer(c_int), value :: flags
end subroutine

! 
!GtkEventControllerScrollFlags gtk_event_controller_scroll_get_flags (GtkEventControllerScroll *scroll);
function gtk_event_controller_scroll_get_flags(scroll) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_event_controller_scroll_get_flags
  type(c_ptr), value :: scroll
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_combo_box_text_get_type (void) G_GNUC_CONST;
function gtk_combo_box_text_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_combo_box_text_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_combo_box_text_new (void);
function gtk_combo_box_text_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_combo_box_text_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_combo_box_text_new_with_entry (void);
function gtk_combo_box_text_new_with_entry() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_combo_box_text_new_with_entry
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_combo_box_text_append_text (GtkComboBoxText *combo_box, const gchar *text);
subroutine gtk_combo_box_text_append_text(combo_box, text) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: combo_box
  character(kind=c_char), dimension(*) :: text
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_combo_box_text_insert_text (GtkComboBoxText *combo_box, gint position, const gchar *text);
subroutine gtk_combo_box_text_insert_text(combo_box, position, text) bind(c)
  use iso_c_binding, only: c_ptr, c_int, c_char
  type(c_ptr), value :: combo_box
  integer(c_int), value :: position
  character(kind=c_char), dimension(*) :: text
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_combo_box_text_prepend_text (GtkComboBoxText *combo_box, const gchar *text);
subroutine gtk_combo_box_text_prepend_text(combo_box, text) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: combo_box
  character(kind=c_char), dimension(*) :: text
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_combo_box_text_remove (GtkComboBoxText *combo_box, gint position);
subroutine gtk_combo_box_text_remove(combo_box, position) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: combo_box
  integer(c_int), value :: position
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_combo_box_text_remove_all (GtkComboBoxText *combo_box);
subroutine gtk_combo_box_text_remove_all(combo_box) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: combo_box
end subroutine

! GDK_AVAILABLE_IN_ALL
!gchar *gtk_combo_box_text_get_active_text (GtkComboBoxText *combo_box);
function gtk_combo_box_text_get_active_text(combo_box) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_combo_box_text_get_active_text
  type(c_ptr), value :: combo_box
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_combo_box_text_insert (GtkComboBoxText *combo_box, gint position, const gchar *id, const gchar *text);
subroutine gtk_combo_box_text_insert(combo_box, position, id, text) bind(c)
  use iso_c_binding, only: c_ptr, c_int, c_char
  type(c_ptr), value :: combo_box
  integer(c_int), value :: position
  character(kind=c_char), dimension(*) :: id
  character(kind=c_char), dimension(*) :: text
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_combo_box_text_append (GtkComboBoxText *combo_box, const gchar *id, const gchar *text);
subroutine gtk_combo_box_text_append(combo_box, id, text) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: combo_box
  character(kind=c_char), dimension(*) :: id
  character(kind=c_char), dimension(*) :: text
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_combo_box_text_prepend (GtkComboBoxText *combo_box, const gchar *id, const gchar *text);
subroutine gtk_combo_box_text_prepend(combo_box, id, text) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: combo_box
  character(kind=c_char), dimension(*) :: id
  character(kind=c_char), dimension(*) :: text
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_drop_controller_motion_get_type (void) G_GNUC_CONST;
function gtk_drop_controller_motion_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_drop_controller_motion_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkEventController * gtk_drop_controller_motion_new (void);
function gtk_drop_controller_motion_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_drop_controller_motion_new
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_drop_controller_motion_contains_pointer (GtkDropControllerMotion *self);
function gtk_drop_controller_motion_contains_pointer(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_drop_controller_motion_contains_pointer
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GdkDrop * gtk_drop_controller_motion_get_drop (GtkDropControllerMotion *self);
function gtk_drop_controller_motion_get_drop(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_drop_controller_motion_get_drop
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_drop_controller_motion_is_pointer (GtkDropControllerMotion *self);
function gtk_drop_controller_motion_is_pointer(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_drop_controller_motion_is_pointer
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GtkTextBuffer *gtk_text_iter_get_buffer (const GtkTextIter *iter);
function gtk_text_iter_get_buffer(iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_iter_get_buffer
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!GtkTextIter *gtk_text_iter_copy (const GtkTextIter *iter);
function gtk_text_iter_copy(iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_iter_copy
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_iter_free (GtkTextIter *iter);
subroutine gtk_text_iter_free(iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: iter
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_iter_assign (GtkTextIter *iter, const GtkTextIter *other);
subroutine gtk_text_iter_assign(iter, other) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: iter
  type(c_ptr), value :: other
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_text_iter_get_type (void) G_GNUC_CONST;
function gtk_text_iter_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_text_iter_get_type
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_text_iter_get_offset (const GtkTextIter *iter);
function gtk_text_iter_get_offset(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_get_offset
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_text_iter_get_line (const GtkTextIter *iter);
function gtk_text_iter_get_line(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_get_line
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_text_iter_get_line_offset (const GtkTextIter *iter);
function gtk_text_iter_get_line_offset(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_get_line_offset
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_text_iter_get_line_index (const GtkTextIter *iter);
function gtk_text_iter_get_line_index(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_get_line_index
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_text_iter_get_visible_line_offset (const GtkTextIter *iter);
function gtk_text_iter_get_visible_line_offset(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_get_visible_line_offset
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_text_iter_get_visible_line_index (const GtkTextIter *iter);
function gtk_text_iter_get_visible_line_index(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_get_visible_line_index
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gunichar gtk_text_iter_get_char (const GtkTextIter *iter);
function gtk_text_iter_get_char(iter) bind(c)
  use iso_c_binding, only: c_int32_t, c_ptr
  integer(c_int32_t) :: gtk_text_iter_get_char
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gchar *gtk_text_iter_get_slice (const GtkTextIter *start, const GtkTextIter *end);
function gtk_text_iter_get_slice(start, end) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_iter_get_slice
  type(c_ptr), value :: start
  type(c_ptr), value :: end
end function

! GDK_AVAILABLE_IN_ALL
!gchar *gtk_text_iter_get_text (const GtkTextIter *start, const GtkTextIter *end);
function gtk_text_iter_get_text(start, end) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_iter_get_text
  type(c_ptr), value :: start
  type(c_ptr), value :: end
end function

! GDK_AVAILABLE_IN_ALL
!gchar *gtk_text_iter_get_visible_slice (const GtkTextIter *start, const GtkTextIter *end);
function gtk_text_iter_get_visible_slice(start, end) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_iter_get_visible_slice
  type(c_ptr), value :: start
  type(c_ptr), value :: end
end function

! GDK_AVAILABLE_IN_ALL
!gchar *gtk_text_iter_get_visible_text (const GtkTextIter *start, const GtkTextIter *end);
function gtk_text_iter_get_visible_text(start, end) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_iter_get_visible_text
  type(c_ptr), value :: start
  type(c_ptr), value :: end
end function

! GDK_AVAILABLE_IN_ALL
!GdkPaintable *gtk_text_iter_get_paintable (const GtkTextIter *iter);
function gtk_text_iter_get_paintable(iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_iter_get_paintable
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!GSList *gtk_text_iter_get_marks (const GtkTextIter *iter);
function gtk_text_iter_get_marks(iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_iter_get_marks
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!GtkTextChildAnchor* gtk_text_iter_get_child_anchor (const GtkTextIter *iter);
function gtk_text_iter_get_child_anchor(iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_iter_get_child_anchor
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!GSList *gtk_text_iter_get_toggled_tags (const GtkTextIter *iter, gboolean toggled_on);
function gtk_text_iter_get_toggled_tags(iter, toggled_on) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_text_iter_get_toggled_tags
  type(c_ptr), value :: iter
  integer(c_int), value :: toggled_on
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_starts_tag (const GtkTextIter *iter, GtkTextTag *tag);
function gtk_text_iter_starts_tag(iter, tag) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_starts_tag
  type(c_ptr), value :: iter
  type(c_ptr), value :: tag
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_ends_tag (const GtkTextIter *iter, GtkTextTag *tag);
function gtk_text_iter_ends_tag(iter, tag) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_ends_tag
  type(c_ptr), value :: iter
  type(c_ptr), value :: tag
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_toggles_tag (const GtkTextIter *iter, GtkTextTag *tag);
function gtk_text_iter_toggles_tag(iter, tag) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_toggles_tag
  type(c_ptr), value :: iter
  type(c_ptr), value :: tag
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_has_tag (const GtkTextIter *iter, GtkTextTag *tag);
function gtk_text_iter_has_tag(iter, tag) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_has_tag
  type(c_ptr), value :: iter
  type(c_ptr), value :: tag
end function

! GDK_AVAILABLE_IN_ALL
!GSList *gtk_text_iter_get_tags (const GtkTextIter *iter);
function gtk_text_iter_get_tags(iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_iter_get_tags
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_editable (const GtkTextIter *iter, gboolean default_setting);
function gtk_text_iter_editable(iter, default_setting) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_editable
  type(c_ptr), value :: iter
  integer(c_int), value :: default_setting
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_can_insert (const GtkTextIter *iter, gboolean default_editability);
function gtk_text_iter_can_insert(iter, default_editability) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_can_insert
  type(c_ptr), value :: iter
  integer(c_int), value :: default_editability
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_starts_word (const GtkTextIter *iter);
function gtk_text_iter_starts_word(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_starts_word
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_ends_word (const GtkTextIter *iter);
function gtk_text_iter_ends_word(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_ends_word
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_inside_word (const GtkTextIter *iter);
function gtk_text_iter_inside_word(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_inside_word
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_starts_sentence (const GtkTextIter *iter);
function gtk_text_iter_starts_sentence(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_starts_sentence
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_ends_sentence (const GtkTextIter *iter);
function gtk_text_iter_ends_sentence(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_ends_sentence
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_inside_sentence (const GtkTextIter *iter);
function gtk_text_iter_inside_sentence(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_inside_sentence
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_starts_line (const GtkTextIter *iter);
function gtk_text_iter_starts_line(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_starts_line
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_ends_line (const GtkTextIter *iter);
function gtk_text_iter_ends_line(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_ends_line
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_is_cursor_position (const GtkTextIter *iter);
function gtk_text_iter_is_cursor_position(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_is_cursor_position
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_text_iter_get_chars_in_line (const GtkTextIter *iter);
function gtk_text_iter_get_chars_in_line(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_get_chars_in_line
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_text_iter_get_bytes_in_line (const GtkTextIter *iter);
function gtk_text_iter_get_bytes_in_line(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_get_bytes_in_line
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!PangoLanguage* gtk_text_iter_get_language (const GtkTextIter *iter);
function gtk_text_iter_get_language(iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_iter_get_language
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_is_end (const GtkTextIter *iter);
function gtk_text_iter_is_end(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_is_end
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_is_start (const GtkTextIter *iter);
function gtk_text_iter_is_start(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_is_start
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_forward_char (GtkTextIter *iter);
function gtk_text_iter_forward_char(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_forward_char
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_backward_char (GtkTextIter *iter);
function gtk_text_iter_backward_char(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_backward_char
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_forward_chars (GtkTextIter *iter, gint count);
function gtk_text_iter_forward_chars(iter, count) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_forward_chars
  type(c_ptr), value :: iter
  integer(c_int), value :: count
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_backward_chars (GtkTextIter *iter, gint count);
function gtk_text_iter_backward_chars(iter, count) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_backward_chars
  type(c_ptr), value :: iter
  integer(c_int), value :: count
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_forward_line (GtkTextIter *iter);
function gtk_text_iter_forward_line(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_forward_line
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_backward_line (GtkTextIter *iter);
function gtk_text_iter_backward_line(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_backward_line
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_forward_lines (GtkTextIter *iter, gint count);
function gtk_text_iter_forward_lines(iter, count) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_forward_lines
  type(c_ptr), value :: iter
  integer(c_int), value :: count
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_backward_lines (GtkTextIter *iter, gint count);
function gtk_text_iter_backward_lines(iter, count) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_backward_lines
  type(c_ptr), value :: iter
  integer(c_int), value :: count
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_forward_word_end (GtkTextIter *iter);
function gtk_text_iter_forward_word_end(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_forward_word_end
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_backward_word_start (GtkTextIter *iter);
function gtk_text_iter_backward_word_start(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_backward_word_start
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_forward_word_ends (GtkTextIter *iter, gint count);
function gtk_text_iter_forward_word_ends(iter, count) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_forward_word_ends
  type(c_ptr), value :: iter
  integer(c_int), value :: count
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_backward_word_starts (GtkTextIter *iter, gint count);
function gtk_text_iter_backward_word_starts(iter, count) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_backward_word_starts
  type(c_ptr), value :: iter
  integer(c_int), value :: count
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_forward_visible_line (GtkTextIter *iter);
function gtk_text_iter_forward_visible_line(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_forward_visible_line
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_backward_visible_line (GtkTextIter *iter);
function gtk_text_iter_backward_visible_line(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_backward_visible_line
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_forward_visible_lines (GtkTextIter *iter, gint count);
function gtk_text_iter_forward_visible_lines(iter, count) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_forward_visible_lines
  type(c_ptr), value :: iter
  integer(c_int), value :: count
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_backward_visible_lines (GtkTextIter *iter, gint count);
function gtk_text_iter_backward_visible_lines(iter, count) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_backward_visible_lines
  type(c_ptr), value :: iter
  integer(c_int), value :: count
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_forward_visible_word_end (GtkTextIter *iter);
function gtk_text_iter_forward_visible_word_end(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_forward_visible_word_end
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_backward_visible_word_start (GtkTextIter *iter);
function gtk_text_iter_backward_visible_word_start(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_backward_visible_word_start
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_forward_visible_word_ends (GtkTextIter *iter, gint count);
function gtk_text_iter_forward_visible_word_ends(iter, count) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_forward_visible_word_ends
  type(c_ptr), value :: iter
  integer(c_int), value :: count
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_backward_visible_word_starts (GtkTextIter *iter, gint count);
function gtk_text_iter_backward_visible_word_starts(iter, count) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_backward_visible_word_starts
  type(c_ptr), value :: iter
  integer(c_int), value :: count
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_forward_sentence_end (GtkTextIter *iter);
function gtk_text_iter_forward_sentence_end(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_forward_sentence_end
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_backward_sentence_start (GtkTextIter *iter);
function gtk_text_iter_backward_sentence_start(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_backward_sentence_start
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_forward_sentence_ends (GtkTextIter *iter, gint count);
function gtk_text_iter_forward_sentence_ends(iter, count) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_forward_sentence_ends
  type(c_ptr), value :: iter
  integer(c_int), value :: count
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_backward_sentence_starts (GtkTextIter *iter, gint count);
function gtk_text_iter_backward_sentence_starts(iter, count) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_backward_sentence_starts
  type(c_ptr), value :: iter
  integer(c_int), value :: count
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_forward_cursor_position (GtkTextIter *iter);
function gtk_text_iter_forward_cursor_position(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_forward_cursor_position
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_backward_cursor_position (GtkTextIter *iter);
function gtk_text_iter_backward_cursor_position(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_backward_cursor_position
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_forward_cursor_positions (GtkTextIter *iter, gint count);
function gtk_text_iter_forward_cursor_positions(iter, count) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_forward_cursor_positions
  type(c_ptr), value :: iter
  integer(c_int), value :: count
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_backward_cursor_positions (GtkTextIter *iter, gint count);
function gtk_text_iter_backward_cursor_positions(iter, count) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_backward_cursor_positions
  type(c_ptr), value :: iter
  integer(c_int), value :: count
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_forward_visible_cursor_position (GtkTextIter *iter);
function gtk_text_iter_forward_visible_cursor_position(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_forward_visible_cursor_position
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_backward_visible_cursor_position (GtkTextIter *iter);
function gtk_text_iter_backward_visible_cursor_position(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_backward_visible_cursor_position
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_forward_visible_cursor_positions (GtkTextIter *iter, gint count);
function gtk_text_iter_forward_visible_cursor_positions(iter, count) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_forward_visible_cursor_positions
  type(c_ptr), value :: iter
  integer(c_int), value :: count
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_backward_visible_cursor_positions (GtkTextIter *iter, gint count);
function gtk_text_iter_backward_visible_cursor_positions(iter, count) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_backward_visible_cursor_positions
  type(c_ptr), value :: iter
  integer(c_int), value :: count
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_iter_set_offset (GtkTextIter *iter, gint char_offset);
subroutine gtk_text_iter_set_offset(iter, char_offset) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: iter
  integer(c_int), value :: char_offset
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_iter_set_line (GtkTextIter *iter, gint line_number);
subroutine gtk_text_iter_set_line(iter, line_number) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: iter
  integer(c_int), value :: line_number
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_iter_set_line_offset (GtkTextIter *iter, gint char_on_line);
subroutine gtk_text_iter_set_line_offset(iter, char_on_line) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: iter
  integer(c_int), value :: char_on_line
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_iter_set_line_index (GtkTextIter *iter, gint byte_on_line);
subroutine gtk_text_iter_set_line_index(iter, byte_on_line) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: iter
  integer(c_int), value :: byte_on_line
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_iter_forward_to_end (GtkTextIter *iter);
subroutine gtk_text_iter_forward_to_end(iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: iter
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_forward_to_line_end (GtkTextIter *iter);
function gtk_text_iter_forward_to_line_end(iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_forward_to_line_end
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_iter_set_visible_line_offset (GtkTextIter *iter, gint char_on_line);
subroutine gtk_text_iter_set_visible_line_offset(iter, char_on_line) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: iter
  integer(c_int), value :: char_on_line
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_iter_set_visible_line_index (GtkTextIter *iter, gint byte_on_line);
subroutine gtk_text_iter_set_visible_line_index(iter, byte_on_line) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: iter
  integer(c_int), value :: byte_on_line
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_forward_to_tag_toggle (GtkTextIter *iter, GtkTextTag *tag);
function gtk_text_iter_forward_to_tag_toggle(iter, tag) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_forward_to_tag_toggle
  type(c_ptr), value :: iter
  type(c_ptr), value :: tag
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_backward_to_tag_toggle (GtkTextIter *iter, GtkTextTag *tag);
function gtk_text_iter_backward_to_tag_toggle(iter, tag) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_backward_to_tag_toggle
  type(c_ptr), value :: iter
  type(c_ptr), value :: tag
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_forward_find_char (GtkTextIter *iter, GtkTextCharPredicate pred, gpointer user_data, const GtkTextIter *limit);
function gtk_text_iter_forward_find_char(iter, pred, user_data, limit) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_funptr
  integer(c_int) :: gtk_text_iter_forward_find_char
  type(c_ptr), value :: iter
  type(c_funptr), value :: pred
  type(c_ptr), value :: user_data
  type(c_ptr), value :: limit
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_backward_find_char (GtkTextIter *iter, GtkTextCharPredicate pred, gpointer user_data, const GtkTextIter *limit);
function gtk_text_iter_backward_find_char(iter, pred, user_data, limit) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_funptr
  integer(c_int) :: gtk_text_iter_backward_find_char
  type(c_ptr), value :: iter
  type(c_funptr), value :: pred
  type(c_ptr), value :: user_data
  type(c_ptr), value :: limit
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_forward_search (const GtkTextIter *iter, const gchar *str, GtkTextSearchFlags flags, GtkTextIter *match_start, GtkTextIter *match_end, const GtkTextIter *limit);
function gtk_text_iter_forward_search(iter, str, flags, match_start, match_end,&
& limit) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_text_iter_forward_search
  type(c_ptr), value :: iter
  character(kind=c_char), dimension(*) :: str
  integer(c_int), value :: flags
  type(c_ptr), value :: match_start
  type(c_ptr), value :: match_end
  type(c_ptr), value :: limit
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_backward_search (const GtkTextIter *iter, const gchar *str, GtkTextSearchFlags flags, GtkTextIter *match_start, GtkTextIter *match_end, const GtkTextIter *limit);
function gtk_text_iter_backward_search(iter, str, flags, match_start,&
& match_end, limit) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_text_iter_backward_search
  type(c_ptr), value :: iter
  character(kind=c_char), dimension(*) :: str
  integer(c_int), value :: flags
  type(c_ptr), value :: match_start
  type(c_ptr), value :: match_end
  type(c_ptr), value :: limit
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_equal (const GtkTextIter *lhs, const GtkTextIter *rhs);
function gtk_text_iter_equal(lhs, rhs) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_equal
  type(c_ptr), value :: lhs
  type(c_ptr), value :: rhs
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_text_iter_compare (const GtkTextIter *lhs, const GtkTextIter *rhs);
function gtk_text_iter_compare(lhs, rhs) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_compare
  type(c_ptr), value :: lhs
  type(c_ptr), value :: rhs
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_iter_in_range (const GtkTextIter *iter, const GtkTextIter *start, const GtkTextIter *end);
function gtk_text_iter_in_range(iter, start, end) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_iter_in_range
  type(c_ptr), value :: iter
  type(c_ptr), value :: start
  type(c_ptr), value :: end
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_iter_order (GtkTextIter *first, GtkTextIter *second);
subroutine gtk_text_iter_order(first, second) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: first
  type(c_ptr), value :: second
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_notebook_get_type (void) G_GNUC_CONST;
function gtk_notebook_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_notebook_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_notebook_new (void);
function gtk_notebook_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_notebook_new
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_notebook_append_page (GtkNotebook *notebook, GtkWidget *child, GtkWidget *tab_label);
function gtk_notebook_append_page(notebook, child, tab_label) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_notebook_append_page
  type(c_ptr), value :: notebook
  type(c_ptr), value :: child
  type(c_ptr), value :: tab_label
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_notebook_append_page_menu (GtkNotebook *notebook, GtkWidget *child, GtkWidget *tab_label, GtkWidget *menu_label);
function gtk_notebook_append_page_menu(notebook, child, tab_label, menu_label)&
& bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_notebook_append_page_menu
  type(c_ptr), value :: notebook
  type(c_ptr), value :: child
  type(c_ptr), value :: tab_label
  type(c_ptr), value :: menu_label
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_notebook_prepend_page (GtkNotebook *notebook, GtkWidget *child, GtkWidget *tab_label);
function gtk_notebook_prepend_page(notebook, child, tab_label) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_notebook_prepend_page
  type(c_ptr), value :: notebook
  type(c_ptr), value :: child
  type(c_ptr), value :: tab_label
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_notebook_prepend_page_menu (GtkNotebook *notebook, GtkWidget *child, GtkWidget *tab_label, GtkWidget *menu_label);
function gtk_notebook_prepend_page_menu(notebook, child, tab_label, menu_label)&
& bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_notebook_prepend_page_menu
  type(c_ptr), value :: notebook
  type(c_ptr), value :: child
  type(c_ptr), value :: tab_label
  type(c_ptr), value :: menu_label
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_notebook_insert_page (GtkNotebook *notebook, GtkWidget *child, GtkWidget *tab_label, gint position);
function gtk_notebook_insert_page(notebook, child, tab_label, position) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_notebook_insert_page
  type(c_ptr), value :: notebook
  type(c_ptr), value :: child
  type(c_ptr), value :: tab_label
  integer(c_int), value :: position
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_notebook_insert_page_menu (GtkNotebook *notebook, GtkWidget *child, GtkWidget *tab_label, GtkWidget *menu_label, gint position);
function gtk_notebook_insert_page_menu(notebook, child, tab_label, menu_label,&
& position) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_notebook_insert_page_menu
  type(c_ptr), value :: notebook
  type(c_ptr), value :: child
  type(c_ptr), value :: tab_label
  type(c_ptr), value :: menu_label
  integer(c_int), value :: position
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_notebook_remove_page (GtkNotebook *notebook, gint page_num);
subroutine gtk_notebook_remove_page(notebook, page_num) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: notebook
  integer(c_int), value :: page_num
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_notebook_set_group_name (GtkNotebook *notebook, const gchar *group_name);
subroutine gtk_notebook_set_group_name(notebook, group_name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: notebook
  character(kind=c_char), dimension(*) :: group_name
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar *gtk_notebook_get_group_name (GtkNotebook *notebook);
function gtk_notebook_get_group_name(notebook) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_notebook_get_group_name
  type(c_ptr), value :: notebook
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_notebook_get_current_page (GtkNotebook *notebook);
function gtk_notebook_get_current_page(notebook) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_notebook_get_current_page
  type(c_ptr), value :: notebook
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_notebook_get_nth_page (GtkNotebook *notebook, gint page_num);
function gtk_notebook_get_nth_page(notebook, page_num) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_notebook_get_nth_page
  type(c_ptr), value :: notebook
  integer(c_int), value :: page_num
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_notebook_get_n_pages (GtkNotebook *notebook);
function gtk_notebook_get_n_pages(notebook) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_notebook_get_n_pages
  type(c_ptr), value :: notebook
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_notebook_page_num (GtkNotebook *notebook, GtkWidget *child);
function gtk_notebook_page_num(notebook, child) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_notebook_page_num
  type(c_ptr), value :: notebook
  type(c_ptr), value :: child
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_notebook_set_current_page (GtkNotebook *notebook, gint page_num);
subroutine gtk_notebook_set_current_page(notebook, page_num) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: notebook
  integer(c_int), value :: page_num
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_notebook_next_page (GtkNotebook *notebook);
subroutine gtk_notebook_next_page(notebook) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: notebook
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_notebook_prev_page (GtkNotebook *notebook);
subroutine gtk_notebook_prev_page(notebook) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: notebook
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_notebook_set_show_border (GtkNotebook *notebook, gboolean show_border);
subroutine gtk_notebook_set_show_border(notebook, show_border) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: notebook
  integer(c_int), value :: show_border
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_notebook_get_show_border (GtkNotebook *notebook);
function gtk_notebook_get_show_border(notebook) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_notebook_get_show_border
  type(c_ptr), value :: notebook
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_notebook_set_show_tabs (GtkNotebook *notebook, gboolean show_tabs);
subroutine gtk_notebook_set_show_tabs(notebook, show_tabs) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: notebook
  integer(c_int), value :: show_tabs
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_notebook_get_show_tabs (GtkNotebook *notebook);
function gtk_notebook_get_show_tabs(notebook) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_notebook_get_show_tabs
  type(c_ptr), value :: notebook
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_notebook_set_tab_pos (GtkNotebook *notebook, GtkPositionType pos);
subroutine gtk_notebook_set_tab_pos(notebook, pos) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: notebook
  integer(c_int), value :: pos
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkPositionType gtk_notebook_get_tab_pos (GtkNotebook *notebook);
function gtk_notebook_get_tab_pos(notebook) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_notebook_get_tab_pos
  type(c_ptr), value :: notebook
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_notebook_set_scrollable (GtkNotebook *notebook, gboolean scrollable);
subroutine gtk_notebook_set_scrollable(notebook, scrollable) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: notebook
  integer(c_int), value :: scrollable
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_notebook_get_scrollable (GtkNotebook *notebook);
function gtk_notebook_get_scrollable(notebook) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_notebook_get_scrollable
  type(c_ptr), value :: notebook
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_notebook_popup_enable (GtkNotebook *notebook);
subroutine gtk_notebook_popup_enable(notebook) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: notebook
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_notebook_popup_disable (GtkNotebook *notebook);
subroutine gtk_notebook_popup_disable(notebook) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: notebook
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_notebook_get_tab_label (GtkNotebook *notebook, GtkWidget *child);
function gtk_notebook_get_tab_label(notebook, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_notebook_get_tab_label
  type(c_ptr), value :: notebook
  type(c_ptr), value :: child
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_notebook_set_tab_label (GtkNotebook *notebook, GtkWidget *child, GtkWidget *tab_label);
subroutine gtk_notebook_set_tab_label(notebook, child, tab_label) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: notebook
  type(c_ptr), value :: child
  type(c_ptr), value :: tab_label
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_notebook_set_tab_label_text (GtkNotebook *notebook, GtkWidget *child, const gchar *tab_text);
subroutine gtk_notebook_set_tab_label_text(notebook, child, tab_text) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: notebook
  type(c_ptr), value :: child
  character(kind=c_char), dimension(*) :: tab_text
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_notebook_get_tab_label_text (GtkNotebook *notebook, GtkWidget *child);
function gtk_notebook_get_tab_label_text(notebook, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_notebook_get_tab_label_text
  type(c_ptr), value :: notebook
  type(c_ptr), value :: child
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_notebook_get_menu_label (GtkNotebook *notebook, GtkWidget *child);
function gtk_notebook_get_menu_label(notebook, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_notebook_get_menu_label
  type(c_ptr), value :: notebook
  type(c_ptr), value :: child
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_notebook_set_menu_label (GtkNotebook *notebook, GtkWidget *child, GtkWidget *menu_label);
subroutine gtk_notebook_set_menu_label(notebook, child, menu_label) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: notebook
  type(c_ptr), value :: child
  type(c_ptr), value :: menu_label
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_notebook_set_menu_label_text (GtkNotebook *notebook, GtkWidget *child, const gchar *menu_text);
subroutine gtk_notebook_set_menu_label_text(notebook, child, menu_text) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: notebook
  type(c_ptr), value :: child
  character(kind=c_char), dimension(*) :: menu_text
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_notebook_get_menu_label_text (GtkNotebook *notebook, GtkWidget *child);
function gtk_notebook_get_menu_label_text(notebook, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_notebook_get_menu_label_text
  type(c_ptr), value :: notebook
  type(c_ptr), value :: child
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_notebook_reorder_child (GtkNotebook *notebook, GtkWidget *child, gint position);
subroutine gtk_notebook_reorder_child(notebook, child, position) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: notebook
  type(c_ptr), value :: child
  integer(c_int), value :: position
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_notebook_get_tab_reorderable (GtkNotebook *notebook, GtkWidget *child);
function gtk_notebook_get_tab_reorderable(notebook, child) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_notebook_get_tab_reorderable
  type(c_ptr), value :: notebook
  type(c_ptr), value :: child
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_notebook_set_tab_reorderable (GtkNotebook *notebook, GtkWidget *child, gboolean reorderable);
subroutine gtk_notebook_set_tab_reorderable(notebook, child, reorderable)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: notebook
  type(c_ptr), value :: child
  integer(c_int), value :: reorderable
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_notebook_get_tab_detachable (GtkNotebook *notebook, GtkWidget *child);
function gtk_notebook_get_tab_detachable(notebook, child) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_notebook_get_tab_detachable
  type(c_ptr), value :: notebook
  type(c_ptr), value :: child
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_notebook_set_tab_detachable (GtkNotebook *notebook, GtkWidget *child, gboolean detachable);
subroutine gtk_notebook_set_tab_detachable(notebook, child, detachable) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: notebook
  type(c_ptr), value :: child
  integer(c_int), value :: detachable
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_notebook_detach_tab (GtkNotebook *notebook, GtkWidget *child);
subroutine gtk_notebook_detach_tab(notebook, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: notebook
  type(c_ptr), value :: child
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_notebook_get_action_widget (GtkNotebook *notebook, GtkPackType pack_type);
function gtk_notebook_get_action_widget(notebook, pack_type) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_notebook_get_action_widget
  type(c_ptr), value :: notebook
  integer(c_int), value :: pack_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_notebook_set_action_widget (GtkNotebook *notebook, GtkWidget *widget, GtkPackType pack_type);
subroutine gtk_notebook_set_action_widget(notebook, widget, pack_type) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: notebook
  type(c_ptr), value :: widget
  integer(c_int), value :: pack_type
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_notebook_page_get_type (void) G_GNUC_CONST;
function gtk_notebook_page_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_notebook_page_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkNotebookPage *gtk_notebook_get_page (GtkNotebook *notebook, GtkWidget *child);
function gtk_notebook_get_page(notebook, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_notebook_get_page
  type(c_ptr), value :: notebook
  type(c_ptr), value :: child
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_notebook_page_get_child (GtkNotebookPage *page);
function gtk_notebook_page_get_child(page) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_notebook_page_get_child
  type(c_ptr), value :: page
end function

! GDK_AVAILABLE_IN_ALL
!GListModel *gtk_notebook_get_pages (GtkNotebook *notebook);
function gtk_notebook_get_pages(notebook) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_notebook_get_pages
  type(c_ptr), value :: notebook
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_scrollbar_get_type (void) G_GNUC_CONST;
function gtk_scrollbar_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_scrollbar_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_scrollbar_new (GtkOrientation orientation, GtkAdjustment *adjustment);
function gtk_scrollbar_new(orientation, adjustment) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_scrollbar_new
  integer(c_int), value :: orientation
  type(c_ptr), value :: adjustment
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_scrollbar_set_adjustment (GtkScrollbar *self, GtkAdjustment *adjustment);
subroutine gtk_scrollbar_set_adjustment(self, adjustment) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: adjustment
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkAdjustment *gtk_scrollbar_get_adjustment (GtkScrollbar *self);
function gtk_scrollbar_get_adjustment(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_scrollbar_get_adjustment
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GtkFilterListModel * gtk_filter_list_model_new_for_type (GType item_type);
function gtk_filter_list_model_new_for_type(item_type) bind(c)
  use iso_c_binding, only: c_ptr, c_size_t
  type(c_ptr) :: gtk_filter_list_model_new_for_type
  integer(c_size_t), value :: item_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_filter_list_model_set_filter_func (GtkFilterListModel *self, GtkFilterListModelFilterFunc filter_func, gpointer user_data, GDestroyNotify user_destroy);
subroutine gtk_filter_list_model_set_filter_func(self, filter_func, user_data,&
& user_destroy) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: self
  type(c_funptr), value :: filter_func
  type(c_ptr), value :: user_data
  type(c_funptr), value :: user_destroy
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_filter_list_model_set_model (GtkFilterListModel *self, GListModel *model);
subroutine gtk_filter_list_model_set_model(self, model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: model
end subroutine

! GDK_AVAILABLE_IN_ALL
!GListModel * gtk_filter_list_model_get_model (GtkFilterListModel *self);
function gtk_filter_list_model_get_model(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_filter_list_model_get_model
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_filter_list_model_has_filter (GtkFilterListModel *self);
function gtk_filter_list_model_has_filter(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_filter_list_model_has_filter
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_filter_list_model_refilter (GtkFilterListModel *self);
subroutine gtk_filter_list_model_refilter(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_revealer_get_type (void) G_GNUC_CONST;
function gtk_revealer_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_revealer_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_revealer_new (void);
function gtk_revealer_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_revealer_new
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_revealer_get_reveal_child (GtkRevealer *revealer);
function gtk_revealer_get_reveal_child(revealer) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_revealer_get_reveal_child
  type(c_ptr), value :: revealer
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_revealer_set_reveal_child (GtkRevealer *revealer, gboolean reveal_child);
subroutine gtk_revealer_set_reveal_child(revealer, reveal_child) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: revealer
  integer(c_int), value :: reveal_child
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_revealer_get_child_revealed (GtkRevealer *revealer);
function gtk_revealer_get_child_revealed(revealer) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_revealer_get_child_revealed
  type(c_ptr), value :: revealer
end function

! GDK_AVAILABLE_IN_ALL
!guint gtk_revealer_get_transition_duration (GtkRevealer *revealer);
function gtk_revealer_get_transition_duration(revealer) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_revealer_get_transition_duration
  type(c_ptr), value :: revealer
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_revealer_set_transition_duration (GtkRevealer *revealer, guint duration);
subroutine gtk_revealer_set_transition_duration(revealer, duration) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: revealer
  integer(c_int), value :: duration
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_revealer_set_transition_type (GtkRevealer *revealer, GtkRevealerTransitionType transition);
subroutine gtk_revealer_set_transition_type(revealer, transition) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: revealer
  integer(c_int), value :: transition
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkRevealerTransitionType gtk_revealer_get_transition_type (GtkRevealer *revealer);
function gtk_revealer_get_transition_type(revealer) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_revealer_get_transition_type
  type(c_ptr), value :: revealer
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_grid_get_type (void) G_GNUC_CONST;
function gtk_grid_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_grid_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_grid_new (void);
function gtk_grid_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_grid_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_grid_attach (GtkGrid *grid, GtkWidget *child, gint left, gint top, gint width, gint height);
subroutine gtk_grid_attach(grid, child, left, top, width, height) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: grid
  type(c_ptr), value :: child
  integer(c_int), value :: left
  integer(c_int), value :: top
  integer(c_int), value :: width
  integer(c_int), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_grid_attach_next_to (GtkGrid *grid, GtkWidget *child, GtkWidget *sibling, GtkPositionType side, gint width, gint height);
subroutine gtk_grid_attach_next_to(grid, child, sibling, side, width, height)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: grid
  type(c_ptr), value :: child
  type(c_ptr), value :: sibling
  integer(c_int), value :: side
  integer(c_int), value :: width
  integer(c_int), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_grid_get_child_at (GtkGrid *grid, gint left, gint top);
function gtk_grid_get_child_at(grid, left, top) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_grid_get_child_at
  type(c_ptr), value :: grid
  integer(c_int), value :: left
  integer(c_int), value :: top
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_grid_insert_row (GtkGrid *grid, gint position);
subroutine gtk_grid_insert_row(grid, position) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: grid
  integer(c_int), value :: position
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_grid_insert_column (GtkGrid *grid, gint position);
subroutine gtk_grid_insert_column(grid, position) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: grid
  integer(c_int), value :: position
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_grid_remove_row (GtkGrid *grid, gint position);
subroutine gtk_grid_remove_row(grid, position) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: grid
  integer(c_int), value :: position
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_grid_remove_column (GtkGrid *grid, gint position);
subroutine gtk_grid_remove_column(grid, position) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: grid
  integer(c_int), value :: position
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_grid_insert_next_to (GtkGrid *grid, GtkWidget *sibling, GtkPositionType side);
subroutine gtk_grid_insert_next_to(grid, sibling, side) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: grid
  type(c_ptr), value :: sibling
  integer(c_int), value :: side
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_grid_set_row_homogeneous (GtkGrid *grid, gboolean homogeneous);
subroutine gtk_grid_set_row_homogeneous(grid, homogeneous) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: grid
  integer(c_int), value :: homogeneous
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_grid_get_row_homogeneous (GtkGrid *grid);
function gtk_grid_get_row_homogeneous(grid) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_grid_get_row_homogeneous
  type(c_ptr), value :: grid
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_grid_set_row_spacing (GtkGrid *grid, guint spacing);
subroutine gtk_grid_set_row_spacing(grid, spacing) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: grid
  integer(c_int), value :: spacing
end subroutine

! GDK_AVAILABLE_IN_ALL
!guint gtk_grid_get_row_spacing (GtkGrid *grid);
function gtk_grid_get_row_spacing(grid) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_grid_get_row_spacing
  type(c_ptr), value :: grid
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_grid_set_column_homogeneous (GtkGrid *grid, gboolean homogeneous);
subroutine gtk_grid_set_column_homogeneous(grid, homogeneous) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: grid
  integer(c_int), value :: homogeneous
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_grid_get_column_homogeneous (GtkGrid *grid);
function gtk_grid_get_column_homogeneous(grid) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_grid_get_column_homogeneous
  type(c_ptr), value :: grid
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_grid_set_column_spacing (GtkGrid *grid, guint spacing);
subroutine gtk_grid_set_column_spacing(grid, spacing) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: grid
  integer(c_int), value :: spacing
end subroutine

! GDK_AVAILABLE_IN_ALL
!guint gtk_grid_get_column_spacing (GtkGrid *grid);
function gtk_grid_get_column_spacing(grid) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_grid_get_column_spacing
  type(c_ptr), value :: grid
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_grid_set_row_baseline_position (GtkGrid *grid, gint row, GtkBaselinePosition pos);
subroutine gtk_grid_set_row_baseline_position(grid, row, pos) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: grid
  integer(c_int), value :: row
  integer(c_int), value :: pos
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkBaselinePosition gtk_grid_get_row_baseline_position (GtkGrid *grid, gint row);
function gtk_grid_get_row_baseline_position(grid, row) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_grid_get_row_baseline_position
  type(c_ptr), value :: grid
  integer(c_int), value :: row
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_grid_set_baseline_row (GtkGrid *grid, gint row);
subroutine gtk_grid_set_baseline_row(grid, row) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: grid
  integer(c_int), value :: row
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_grid_get_baseline_row (GtkGrid *grid);
function gtk_grid_get_baseline_row(grid) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_grid_get_baseline_row
  type(c_ptr), value :: grid
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_grid_query_child (GtkGrid *grid, GtkWidget *child, gint *left, gint *top, gint *width, gint *height);
subroutine gtk_grid_query_child(grid, child, left, top, width, height) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: grid
  type(c_ptr), value :: child
  type(c_ptr), value :: left
  type(c_ptr), value :: top
  type(c_ptr), value :: width
  type(c_ptr), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_page_setup_get_type (void) G_GNUC_CONST;
function gtk_page_setup_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_page_setup_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkPageSetup * gtk_page_setup_new (void);
function gtk_page_setup_new() bind(c)
  use iso_c_binding, only: c_int
  integer(c_int) :: gtk_page_setup_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkPageSetup * gtk_page_setup_copy (GtkPageSetup *other);
function gtk_page_setup_copy(other) bind(c)
  use iso_c_binding, only: c_int
  integer(c_int) :: gtk_page_setup_copy
  integer(c_int), value :: other
end function

! GDK_AVAILABLE_IN_ALL
!GtkPageOrientation gtk_page_setup_get_orientation (GtkPageSetup *setup);
function gtk_page_setup_get_orientation(setup) bind(c)
  use iso_c_binding, only: c_int
  integer(c_int) :: gtk_page_setup_get_orientation
  integer(c_int), value :: setup
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_page_setup_set_orientation (GtkPageSetup *setup, GtkPageOrientation orientation);
subroutine gtk_page_setup_set_orientation(setup, orientation) bind(c)
  use iso_c_binding, only: c_int
  integer(c_int), value :: setup
  integer(c_int), value :: orientation
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkPaperSize * gtk_page_setup_get_paper_size (GtkPageSetup *setup);
function gtk_page_setup_get_paper_size(setup) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_page_setup_get_paper_size
  integer(c_int), value :: setup
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_page_setup_set_paper_size (GtkPageSetup *setup, GtkPaperSize *size);
subroutine gtk_page_setup_set_paper_size(setup, size) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int), value :: setup
  type(c_ptr), value :: size
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_page_setup_get_top_margin (GtkPageSetup *setup, GtkUnit unit);
function gtk_page_setup_get_top_margin(setup, unit) bind(c)
  use iso_c_binding, only: c_double, c_int
  real(c_double) :: gtk_page_setup_get_top_margin
  integer(c_int), value :: setup
  integer(c_int), value :: unit
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_page_setup_set_top_margin (GtkPageSetup *setup, gdouble margin, GtkUnit unit);
subroutine gtk_page_setup_set_top_margin(setup, margin, unit) bind(c)
  use iso_c_binding, only: c_int, c_double
  integer(c_int), value :: setup
  real(c_double), value :: margin
  integer(c_int), value :: unit
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_page_setup_get_bottom_margin (GtkPageSetup *setup, GtkUnit unit);
function gtk_page_setup_get_bottom_margin(setup, unit) bind(c)
  use iso_c_binding, only: c_double, c_int
  real(c_double) :: gtk_page_setup_get_bottom_margin
  integer(c_int), value :: setup
  integer(c_int), value :: unit
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_page_setup_set_bottom_margin (GtkPageSetup *setup, gdouble margin, GtkUnit unit);
subroutine gtk_page_setup_set_bottom_margin(setup, margin, unit) bind(c)
  use iso_c_binding, only: c_int, c_double
  integer(c_int), value :: setup
  real(c_double), value :: margin
  integer(c_int), value :: unit
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_page_setup_get_left_margin (GtkPageSetup *setup, GtkUnit unit);
function gtk_page_setup_get_left_margin(setup, unit) bind(c)
  use iso_c_binding, only: c_double, c_int
  real(c_double) :: gtk_page_setup_get_left_margin
  integer(c_int), value :: setup
  integer(c_int), value :: unit
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_page_setup_set_left_margin (GtkPageSetup *setup, gdouble margin, GtkUnit unit);
subroutine gtk_page_setup_set_left_margin(setup, margin, unit) bind(c)
  use iso_c_binding, only: c_int, c_double
  integer(c_int), value :: setup
  real(c_double), value :: margin
  integer(c_int), value :: unit
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_page_setup_get_right_margin (GtkPageSetup *setup, GtkUnit unit);
function gtk_page_setup_get_right_margin(setup, unit) bind(c)
  use iso_c_binding, only: c_double, c_int
  real(c_double) :: gtk_page_setup_get_right_margin
  integer(c_int), value :: setup
  integer(c_int), value :: unit
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_page_setup_set_right_margin (GtkPageSetup *setup, gdouble margin, GtkUnit unit);
subroutine gtk_page_setup_set_right_margin(setup, margin, unit) bind(c)
  use iso_c_binding, only: c_int, c_double
  integer(c_int), value :: setup
  real(c_double), value :: margin
  integer(c_int), value :: unit
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_page_setup_set_paper_size_and_default_margins (GtkPageSetup *setup, GtkPaperSize *size);
subroutine gtk_page_setup_set_paper_size_and_default_margins(setup, size)&
& bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int), value :: setup
  type(c_ptr), value :: size
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_page_setup_get_paper_width (GtkPageSetup *setup, GtkUnit unit);
function gtk_page_setup_get_paper_width(setup, unit) bind(c)
  use iso_c_binding, only: c_double, c_int
  real(c_double) :: gtk_page_setup_get_paper_width
  integer(c_int), value :: setup
  integer(c_int), value :: unit
end function

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_page_setup_get_paper_height (GtkPageSetup *setup, GtkUnit unit);
function gtk_page_setup_get_paper_height(setup, unit) bind(c)
  use iso_c_binding, only: c_double, c_int
  real(c_double) :: gtk_page_setup_get_paper_height
  integer(c_int), value :: setup
  integer(c_int), value :: unit
end function

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_page_setup_get_page_width (GtkPageSetup *setup, GtkUnit unit);
function gtk_page_setup_get_page_width(setup, unit) bind(c)
  use iso_c_binding, only: c_double, c_int
  real(c_double) :: gtk_page_setup_get_page_width
  integer(c_int), value :: setup
  integer(c_int), value :: unit
end function

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_page_setup_get_page_height (GtkPageSetup *setup, GtkUnit unit);
function gtk_page_setup_get_page_height(setup, unit) bind(c)
  use iso_c_binding, only: c_double, c_int
  real(c_double) :: gtk_page_setup_get_page_height
  integer(c_int), value :: setup
  integer(c_int), value :: unit
end function

! GDK_AVAILABLE_IN_ALL
!GtkPageSetup *gtk_page_setup_new_from_file (const gchar *file_name, GError **error);
function gtk_page_setup_new_from_file(file_name, error) bind(c)
  use iso_c_binding, only: c_int, c_char, c_ptr
  integer(c_int) :: gtk_page_setup_new_from_file
  character(kind=c_char), dimension(*) :: file_name
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_page_setup_load_file (GtkPageSetup *setup, const char *file_name, GError **error);
function gtk_page_setup_load_file(setup, file_name, error) bind(c)
  use iso_c_binding, only: c_int, c_char, c_ptr
  integer(c_int) :: gtk_page_setup_load_file
  integer(c_int), value :: setup
  character(kind=c_char), dimension(*) :: file_name
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_page_setup_to_file (GtkPageSetup *setup, const char *file_name, GError **error);
function gtk_page_setup_to_file(setup, file_name, error) bind(c)
  use iso_c_binding, only: c_int, c_char, c_ptr
  integer(c_int) :: gtk_page_setup_to_file
  integer(c_int), value :: setup
  character(kind=c_char), dimension(*) :: file_name
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!GtkPageSetup *gtk_page_setup_new_from_key_file (GKeyFile *key_file, const gchar *group_name, GError **error);
function gtk_page_setup_new_from_key_file(key_file, group_name, error) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_page_setup_new_from_key_file
  type(c_ptr), value :: key_file
  character(kind=c_char), dimension(*) :: group_name
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_page_setup_load_key_file (GtkPageSetup *setup, GKeyFile *key_file, const gchar *group_name, GError **error);
function gtk_page_setup_load_key_file(setup, key_file, group_name, error)&
& bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_page_setup_load_key_file
  integer(c_int), value :: setup
  type(c_ptr), value :: key_file
  character(kind=c_char), dimension(*) :: group_name
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_page_setup_to_key_file (GtkPageSetup *setup, GKeyFile *key_file, const gchar *group_name);
subroutine gtk_page_setup_to_key_file(setup, key_file, group_name) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int), value :: setup
  type(c_ptr), value :: key_file
  character(kind=c_char), dimension(*) :: group_name
end subroutine

! GDK_AVAILABLE_IN_ALL
!GVariant *gtk_page_setup_to_gvariant (GtkPageSetup *setup);
function gtk_page_setup_to_gvariant(setup) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_page_setup_to_gvariant
  integer(c_int), value :: setup
end function

! GDK_AVAILABLE_IN_ALL
!GtkPageSetup *gtk_page_setup_new_from_gvariant (GVariant *variant);
function gtk_page_setup_new_from_gvariant(variant) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_page_setup_new_from_gvariant
  type(c_ptr), value :: variant
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_font_button_get_type (void) G_GNUC_CONST;
function gtk_font_button_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_font_button_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_font_button_new (void);
function gtk_font_button_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_font_button_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_font_button_new_with_font (const gchar *fontname);
function gtk_font_button_new_with_font(fontname) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_font_button_new_with_font
  character(kind=c_char), dimension(*) :: fontname
end function

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_font_button_get_title (GtkFontButton *font_button);
function gtk_font_button_get_title(font_button) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_font_button_get_title
  type(c_ptr), value :: font_button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_font_button_set_title (GtkFontButton *font_button, const gchar *title);
subroutine gtk_font_button_set_title(font_button, title) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: font_button
  character(kind=c_char), dimension(*) :: title
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_font_button_get_use_font (GtkFontButton *font_button);
function gtk_font_button_get_use_font(font_button) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_font_button_get_use_font
  type(c_ptr), value :: font_button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_font_button_set_use_font (GtkFontButton *font_button, gboolean use_font);
subroutine gtk_font_button_set_use_font(font_button, use_font) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: font_button
  integer(c_int), value :: use_font
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_font_button_get_use_size (GtkFontButton *font_button);
function gtk_font_button_get_use_size(font_button) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_font_button_get_use_size
  type(c_ptr), value :: font_button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_font_button_set_use_size (GtkFontButton *font_button, gboolean use_size);
subroutine gtk_font_button_set_use_size(font_button, use_size) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: font_button
  integer(c_int), value :: use_size
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_volume_button_get_type (void) G_GNUC_CONST;
function gtk_volume_button_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_volume_button_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_volume_button_new (void);
function gtk_volume_button_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_volume_button_new
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_adjustment_get_type (void) G_GNUC_CONST;
function gtk_adjustment_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_adjustment_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkAdjustment* gtk_adjustment_new (gdouble value, gdouble lower, gdouble upper, gdouble step_increment, gdouble page_increment, gdouble page_size);
function gtk_adjustment_new(value, lower, upper, step_increment,&
& page_increment, page_size) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr) :: gtk_adjustment_new
  real(c_double), value :: value
  real(c_double), value :: lower
  real(c_double), value :: upper
  real(c_double), value :: step_increment
  real(c_double), value :: page_increment
  real(c_double), value :: page_size
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_adjustment_clamp_page (GtkAdjustment *adjustment, gdouble lower, gdouble upper);
subroutine gtk_adjustment_clamp_page(adjustment, lower, upper) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: adjustment
  real(c_double), value :: lower
  real(c_double), value :: upper
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_adjustment_get_value (GtkAdjustment *adjustment);
function gtk_adjustment_get_value(adjustment) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_adjustment_get_value
  type(c_ptr), value :: adjustment
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_adjustment_set_value (GtkAdjustment *adjustment, gdouble value);
subroutine gtk_adjustment_set_value(adjustment, value) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: adjustment
  real(c_double), value :: value
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_adjustment_get_lower (GtkAdjustment *adjustment);
function gtk_adjustment_get_lower(adjustment) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_adjustment_get_lower
  type(c_ptr), value :: adjustment
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_adjustment_set_lower (GtkAdjustment *adjustment, gdouble lower);
subroutine gtk_adjustment_set_lower(adjustment, lower) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: adjustment
  real(c_double), value :: lower
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_adjustment_get_upper (GtkAdjustment *adjustment);
function gtk_adjustment_get_upper(adjustment) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_adjustment_get_upper
  type(c_ptr), value :: adjustment
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_adjustment_set_upper (GtkAdjustment *adjustment, gdouble upper);
subroutine gtk_adjustment_set_upper(adjustment, upper) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: adjustment
  real(c_double), value :: upper
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_adjustment_get_step_increment (GtkAdjustment *adjustment);
function gtk_adjustment_get_step_increment(adjustment) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_adjustment_get_step_increment
  type(c_ptr), value :: adjustment
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_adjustment_set_step_increment (GtkAdjustment *adjustment, gdouble step_increment);
subroutine gtk_adjustment_set_step_increment(adjustment, step_increment)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: adjustment
  real(c_double), value :: step_increment
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_adjustment_get_page_increment (GtkAdjustment *adjustment);
function gtk_adjustment_get_page_increment(adjustment) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_adjustment_get_page_increment
  type(c_ptr), value :: adjustment
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_adjustment_set_page_increment (GtkAdjustment *adjustment, gdouble page_increment);
subroutine gtk_adjustment_set_page_increment(adjustment, page_increment)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: adjustment
  real(c_double), value :: page_increment
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_adjustment_get_page_size (GtkAdjustment *adjustment);
function gtk_adjustment_get_page_size(adjustment) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_adjustment_get_page_size
  type(c_ptr), value :: adjustment
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_adjustment_set_page_size (GtkAdjustment *adjustment, gdouble page_size);
subroutine gtk_adjustment_set_page_size(adjustment, page_size) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: adjustment
  real(c_double), value :: page_size
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_adjustment_configure (GtkAdjustment *adjustment, gdouble value, gdouble lower, gdouble upper, gdouble step_increment, gdouble page_increment, gdouble page_size);
subroutine gtk_adjustment_configure(adjustment, value, lower, upper,&
& step_increment, page_increment, page_size) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: adjustment
  real(c_double), value :: value
  real(c_double), value :: lower
  real(c_double), value :: upper
  real(c_double), value :: step_increment
  real(c_double), value :: page_increment
  real(c_double), value :: page_size
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_adjustment_get_minimum_increment (GtkAdjustment *adjustment);
function gtk_adjustment_get_minimum_increment(adjustment) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_adjustment_get_minimum_increment
  type(c_ptr), value :: adjustment
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_gesture_single_get_type (void) G_GNUC_CONST;
function gtk_gesture_single_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_gesture_single_get_type
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_gesture_single_get_touch_only (GtkGestureSingle *gesture);
function gtk_gesture_single_get_touch_only(gesture) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gesture_single_get_touch_only
  type(c_ptr), value :: gesture
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_gesture_single_set_touch_only (GtkGestureSingle *gesture, gboolean touch_only);
subroutine gtk_gesture_single_set_touch_only(gesture, touch_only) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: gesture
  integer(c_int), value :: touch_only
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_gesture_single_get_exclusive (GtkGestureSingle *gesture);
function gtk_gesture_single_get_exclusive(gesture) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gesture_single_get_exclusive
  type(c_ptr), value :: gesture
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_gesture_single_set_exclusive (GtkGestureSingle *gesture, gboolean exclusive);
subroutine gtk_gesture_single_set_exclusive(gesture, exclusive) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: gesture
  integer(c_int), value :: exclusive
end subroutine

! GDK_AVAILABLE_IN_ALL
!guint gtk_gesture_single_get_button (GtkGestureSingle *gesture);
function gtk_gesture_single_get_button(gesture) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gesture_single_get_button
  type(c_ptr), value :: gesture
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_gesture_single_set_button (GtkGestureSingle *gesture, guint button);
subroutine gtk_gesture_single_set_button(gesture, button) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: gesture
  integer(c_int), value :: button
end subroutine

! GDK_AVAILABLE_IN_ALL
!guint gtk_gesture_single_get_current_button (GtkGestureSingle *gesture);
function gtk_gesture_single_get_current_button(gesture) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gesture_single_get_current_button
  type(c_ptr), value :: gesture
end function

! GDK_AVAILABLE_IN_ALL
!GdkEventSequence * gtk_gesture_single_get_current_sequence (GtkGestureSingle *gesture);
function gtk_gesture_single_get_current_sequence(gesture) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_gesture_single_get_current_sequence
  type(c_ptr), value :: gesture
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_app_chooser_dialog_get_type (void) G_GNUC_CONST;
function gtk_app_chooser_dialog_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_app_chooser_dialog_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_app_chooser_dialog_new (GtkWindow *parent, GtkDialogFlags flags, GFile *file);
function gtk_app_chooser_dialog_new(parent, flags, file) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_app_chooser_dialog_new
  type(c_ptr), value :: parent
  integer(c_int), value :: flags
  type(c_ptr), value :: file
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_app_chooser_dialog_new_for_content_type (GtkWindow *parent, GtkDialogFlags flags, const gchar *content_type);
function gtk_app_chooser_dialog_new_for_content_type(parent, flags,&
& content_type) bind(c)
  use iso_c_binding, only: c_ptr, c_int, c_char
  type(c_ptr) :: gtk_app_chooser_dialog_new_for_content_type
  type(c_ptr), value :: parent
  integer(c_int), value :: flags
  character(kind=c_char), dimension(*) :: content_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_app_chooser_dialog_get_widget (GtkAppChooserDialog *self);
function gtk_app_chooser_dialog_get_widget(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_app_chooser_dialog_get_widget
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_app_chooser_dialog_set_heading (GtkAppChooserDialog *self, const gchar *heading);
subroutine gtk_app_chooser_dialog_set_heading(self, heading) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: heading
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_app_chooser_dialog_get_heading (GtkAppChooserDialog *self);
function gtk_app_chooser_dialog_get_heading(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_app_chooser_dialog_get_heading
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_gesture_drag_get_type (void) G_GNUC_CONST;
function gtk_gesture_drag_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_gesture_drag_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkGesture * gtk_gesture_drag_new (void);
function gtk_gesture_drag_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_gesture_drag_new
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_gesture_drag_get_start_point (GtkGestureDrag *gesture, gdouble *x, gdouble *y);
function gtk_gesture_drag_get_start_point(gesture, x, y) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gesture_drag_get_start_point
  type(c_ptr), value :: gesture
  type(c_ptr), value :: x
  type(c_ptr), value :: y
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_gesture_drag_get_offset (GtkGestureDrag *gesture, gdouble *x, gdouble *y);
function gtk_gesture_drag_get_offset(gesture, x, y) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gesture_drag_get_offset
  type(c_ptr), value :: gesture
  type(c_ptr), value :: x
  type(c_ptr), value :: y
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_map_list_model_set_map_func (GtkMapListModel *self, GtkMapListModelMapFunc map_func, gpointer user_data, GDestroyNotify user_destroy);
subroutine gtk_map_list_model_set_map_func(self, map_func, user_data,&
& user_destroy) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: self
  type(c_funptr), value :: map_func
  type(c_ptr), value :: user_data
  type(c_funptr), value :: user_destroy
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_map_list_model_set_model (GtkMapListModel *self, GListModel *model);
subroutine gtk_map_list_model_set_model(self, model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: model
end subroutine

! GDK_AVAILABLE_IN_ALL
!GListModel * gtk_map_list_model_get_model (GtkMapListModel *self);
function gtk_map_list_model_get_model(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_map_list_model_get_model
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_map_list_model_has_map (GtkMapListModel *self);
function gtk_map_list_model_has_map(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_map_list_model_has_map
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_aspect_frame_get_type (void) G_GNUC_CONST;
function gtk_aspect_frame_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_aspect_frame_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_aspect_frame_new (const gchar *label, gfloat xalign, gfloat yalign, gfloat ratio, gboolean obey_child);
function gtk_aspect_frame_new(label, xalign, yalign, ratio, obey_child) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_float, c_int
  type(c_ptr) :: gtk_aspect_frame_new
  character(kind=c_char), dimension(*) :: label
  real(c_float), value :: xalign
  real(c_float), value :: yalign
  real(c_float), value :: ratio
  integer(c_int), value :: obey_child
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_aspect_frame_set (GtkAspectFrame *aspect_frame, gfloat xalign, gfloat yalign, gfloat ratio, gboolean obey_child);
subroutine gtk_aspect_frame_set(aspect_frame, xalign, yalign, ratio,&
& obey_child) bind(c)
  use iso_c_binding, only: c_ptr, c_float, c_int
  type(c_ptr), value :: aspect_frame
  real(c_float), value :: xalign
  real(c_float), value :: yalign
  real(c_float), value :: ratio
  integer(c_int), value :: obey_child
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_message_dialog_get_type (void) G_GNUC_CONST;
function gtk_message_dialog_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_message_dialog_get_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_message_dialog_set_markup (GtkMessageDialog *message_dialog, const gchar *str);
subroutine gtk_message_dialog_set_markup(message_dialog, str) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: message_dialog
  character(kind=c_char), dimension(*) :: str
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_message_dialog_get_message_area (GtkMessageDialog *message_dialog);
function gtk_message_dialog_get_message_area(message_dialog) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_message_dialog_get_message_area
  type(c_ptr), value :: message_dialog
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_header_bar_get_type (void) G_GNUC_CONST;
function gtk_header_bar_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_header_bar_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_header_bar_new (void);
function gtk_header_bar_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_header_bar_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_header_bar_set_title (GtkHeaderBar *bar, const gchar *title);
subroutine gtk_header_bar_set_title(bar, title) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: bar
  character(kind=c_char), dimension(*) :: title
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar *gtk_header_bar_get_title (GtkHeaderBar *bar);
function gtk_header_bar_get_title(bar) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_header_bar_get_title
  type(c_ptr), value :: bar
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_header_bar_set_subtitle (GtkHeaderBar *bar, const gchar *subtitle);
subroutine gtk_header_bar_set_subtitle(bar, subtitle) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: bar
  character(kind=c_char), dimension(*) :: subtitle
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar *gtk_header_bar_get_subtitle (GtkHeaderBar *bar);
function gtk_header_bar_get_subtitle(bar) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_header_bar_get_subtitle
  type(c_ptr), value :: bar
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_header_bar_set_custom_title (GtkHeaderBar *bar, GtkWidget *title_widget);
subroutine gtk_header_bar_set_custom_title(bar, title_widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: bar
  type(c_ptr), value :: title_widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_header_bar_get_custom_title (GtkHeaderBar *bar);
function gtk_header_bar_get_custom_title(bar) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_header_bar_get_custom_title
  type(c_ptr), value :: bar
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_header_bar_pack_start (GtkHeaderBar *bar, GtkWidget *child);
subroutine gtk_header_bar_pack_start(bar, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: bar
  type(c_ptr), value :: child
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_header_bar_pack_end (GtkHeaderBar *bar, GtkWidget *child);
subroutine gtk_header_bar_pack_end(bar, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: bar
  type(c_ptr), value :: child
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_header_bar_get_show_title_buttons (GtkHeaderBar *bar);
function gtk_header_bar_get_show_title_buttons(bar) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_header_bar_get_show_title_buttons
  type(c_ptr), value :: bar
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_header_bar_set_show_title_buttons (GtkHeaderBar *bar, gboolean setting);
subroutine gtk_header_bar_set_show_title_buttons(bar, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: bar
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_header_bar_set_has_subtitle (GtkHeaderBar *bar, gboolean setting);
subroutine gtk_header_bar_set_has_subtitle(bar, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: bar
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_header_bar_get_has_subtitle (GtkHeaderBar *bar);
function gtk_header_bar_get_has_subtitle(bar) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_header_bar_get_has_subtitle
  type(c_ptr), value :: bar
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_header_bar_set_decoration_layout (GtkHeaderBar *bar, const gchar *layout);
subroutine gtk_header_bar_set_decoration_layout(bar, layout) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: bar
  character(kind=c_char), dimension(*) :: layout
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar *gtk_header_bar_get_decoration_layout (GtkHeaderBar *bar);
function gtk_header_bar_get_decoration_layout(bar) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_header_bar_get_decoration_layout
  type(c_ptr), value :: bar
end function

! GDK_AVAILABLE_IN_ALL
!GQuark gtk_print_error_quark (void);
function gtk_print_error_quark() bind(c)
  use iso_c_binding, only: c_int32_t
  integer(c_int32_t) :: gtk_print_error_quark
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_print_operation_get_type (void) G_GNUC_CONST;
function gtk_print_operation_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_print_operation_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkPrintOperation * gtk_print_operation_new (void);
function gtk_print_operation_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_print_operation_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_operation_set_default_page_setup (GtkPrintOperation *op, GtkPageSetup *default_page_setup);
subroutine gtk_print_operation_set_default_page_setup(op, default_page_setup)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: op
  integer(c_int), value :: default_page_setup
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkPageSetup * gtk_print_operation_get_default_page_setup (GtkPrintOperation *op);
function gtk_print_operation_get_default_page_setup(op) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_operation_get_default_page_setup
  type(c_ptr), value :: op
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_operation_set_print_settings (GtkPrintOperation *op, GtkPrintSettings *print_settings);
subroutine gtk_print_operation_set_print_settings(op, print_settings) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: op
  type(c_ptr), value :: print_settings
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkPrintSettings * gtk_print_operation_get_print_settings (GtkPrintOperation *op);
function gtk_print_operation_get_print_settings(op) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_print_operation_get_print_settings
  type(c_ptr), value :: op
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_operation_set_job_name (GtkPrintOperation *op, const gchar *job_name);
subroutine gtk_print_operation_set_job_name(op, job_name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: op
  character(kind=c_char), dimension(*) :: job_name
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_print_operation_set_n_pages (GtkPrintOperation *op, gint n_pages);
subroutine gtk_print_operation_set_n_pages(op, n_pages) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: op
  integer(c_int), value :: n_pages
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_print_operation_set_current_page (GtkPrintOperation *op, gint current_page);
subroutine gtk_print_operation_set_current_page(op, current_page) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: op
  integer(c_int), value :: current_page
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_print_operation_set_use_full_page (GtkPrintOperation *op, gboolean full_page);
subroutine gtk_print_operation_set_use_full_page(op, full_page) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: op
  integer(c_int), value :: full_page
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_print_operation_set_unit (GtkPrintOperation *op, GtkUnit unit);
subroutine gtk_print_operation_set_unit(op, unit) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: op
  integer(c_int), value :: unit
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_print_operation_set_export_filename (GtkPrintOperation *op, const gchar *filename);
subroutine gtk_print_operation_set_export_filename(op, filename) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: op
  character(kind=c_char), dimension(*) :: filename
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_print_operation_set_track_print_status (GtkPrintOperation *op, gboolean track_status);
subroutine gtk_print_operation_set_track_print_status(op, track_status) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: op
  integer(c_int), value :: track_status
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_print_operation_set_show_progress (GtkPrintOperation *op, gboolean show_progress);
subroutine gtk_print_operation_set_show_progress(op, show_progress) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: op
  integer(c_int), value :: show_progress
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_print_operation_set_allow_async (GtkPrintOperation *op, gboolean allow_async);
subroutine gtk_print_operation_set_allow_async(op, allow_async) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: op
  integer(c_int), value :: allow_async
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_print_operation_set_custom_tab_label (GtkPrintOperation *op, const gchar *label);
subroutine gtk_print_operation_set_custom_tab_label(op, label) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: op
  character(kind=c_char), dimension(*) :: label
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkPrintOperationResult gtk_print_operation_run (GtkPrintOperation *op, GtkPrintOperationAction action, GtkWindow *parent, GError **error);
function gtk_print_operation_run(op, action, parent, error) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_operation_run
  type(c_ptr), value :: op
  integer(c_int), value :: action
  type(c_ptr), value :: parent
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_operation_get_error (GtkPrintOperation *op, GError **error);
subroutine gtk_print_operation_get_error(op, error) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: op
  type(c_ptr), value :: error
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkPrintStatus gtk_print_operation_get_status (GtkPrintOperation *op);
function gtk_print_operation_get_status(op) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_operation_get_status
  type(c_ptr), value :: op
end function

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_print_operation_get_status_string (GtkPrintOperation *op);
function gtk_print_operation_get_status_string(op) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_print_operation_get_status_string
  type(c_ptr), value :: op
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_print_operation_is_finished (GtkPrintOperation *op);
function gtk_print_operation_is_finished(op) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_operation_is_finished
  type(c_ptr), value :: op
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_operation_cancel (GtkPrintOperation *op);
subroutine gtk_print_operation_cancel(op) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: op
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_print_operation_draw_page_finish (GtkPrintOperation *op);
subroutine gtk_print_operation_draw_page_finish(op) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: op
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_print_operation_set_defer_drawing (GtkPrintOperation *op);
subroutine gtk_print_operation_set_defer_drawing(op) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: op
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_print_operation_set_support_selection (GtkPrintOperation *op, gboolean support_selection);
subroutine gtk_print_operation_set_support_selection(op, support_selection)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: op
  integer(c_int), value :: support_selection
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_print_operation_get_support_selection (GtkPrintOperation *op);
function gtk_print_operation_get_support_selection(op) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_operation_get_support_selection
  type(c_ptr), value :: op
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_operation_set_has_selection (GtkPrintOperation *op, gboolean has_selection);
subroutine gtk_print_operation_set_has_selection(op, has_selection) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: op
  integer(c_int), value :: has_selection
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_print_operation_get_has_selection (GtkPrintOperation *op);
function gtk_print_operation_get_has_selection(op) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_operation_get_has_selection
  type(c_ptr), value :: op
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_operation_set_embed_page_setup (GtkPrintOperation *op, gboolean embed);
subroutine gtk_print_operation_set_embed_page_setup(op, embed) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: op
  integer(c_int), value :: embed
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_print_operation_get_embed_page_setup (GtkPrintOperation *op);
function gtk_print_operation_get_embed_page_setup(op) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_operation_get_embed_page_setup
  type(c_ptr), value :: op
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_print_operation_get_n_pages_to_print (GtkPrintOperation *op);
function gtk_print_operation_get_n_pages_to_print(op) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_operation_get_n_pages_to_print
  type(c_ptr), value :: op
end function

! GDK_AVAILABLE_IN_ALL
!GtkPageSetup *gtk_print_run_page_setup_dialog (GtkWindow *parent, GtkPageSetup *page_setup, GtkPrintSettings *settings);
function gtk_print_run_page_setup_dialog(parent, page_setup, settings) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_run_page_setup_dialog
  type(c_ptr), value :: parent
  integer(c_int), value :: page_setup
  type(c_ptr), value :: settings
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_run_page_setup_dialog_async (GtkWindow *parent, GtkPageSetup *page_setup, GtkPrintSettings *settings, GtkPageSetupDoneFunc done_cb, gpointer data);
subroutine gtk_print_run_page_setup_dialog_async(parent, page_setup, settings,&
& done_cb, data) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: parent
  integer(c_int), value :: page_setup
  type(c_ptr), value :: settings
  integer(c_int), value :: done_cb
  type(c_ptr), value :: data
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_password_entry_get_type (void) G_GNUC_CONST;
function gtk_password_entry_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_password_entry_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_password_entry_new (void);
function gtk_password_entry_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_password_entry_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_password_entry_set_show_peek_icon (GtkPasswordEntry *entry, gboolean show_peek_icon);
subroutine gtk_password_entry_set_show_peek_icon(entry, show_peek_icon) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: entry
  integer(c_int), value :: show_peek_icon
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_password_entry_get_show_peek_icon (GtkPasswordEntry *entry);
function gtk_password_entry_get_show_peek_icon(entry) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_password_entry_get_show_peek_icon
  type(c_ptr), value :: entry
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_password_entry_set_extra_menu (GtkPasswordEntry *entry, GMenuModel *model);
subroutine gtk_password_entry_set_extra_menu(entry, model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: entry
  type(c_ptr), value :: model
end subroutine

! GDK_AVAILABLE_IN_ALL
!GMenuModel * gtk_password_entry_get_extra_menu (GtkPasswordEntry *entry);
function gtk_password_entry_get_extra_menu(entry) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_password_entry_get_extra_menu
  type(c_ptr), value :: entry
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_event_controller_legacy_get_type (void) G_GNUC_CONST;
function gtk_event_controller_legacy_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_event_controller_legacy_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkEventController *gtk_event_controller_legacy_new (void);
function gtk_event_controller_legacy_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_event_controller_legacy_new
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_frame_get_type (void) G_GNUC_CONST;
function gtk_frame_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_frame_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_frame_new (const gchar *label);
function gtk_frame_new(label) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_frame_new
  character(kind=c_char), dimension(*) :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_frame_set_label (GtkFrame *frame, const gchar *label);
subroutine gtk_frame_set_label(frame, label) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: frame
  character(kind=c_char), dimension(*) :: label
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_frame_get_label (GtkFrame *frame);
function gtk_frame_get_label(frame) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_frame_get_label
  type(c_ptr), value :: frame
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_frame_set_label_widget (GtkFrame *frame, GtkWidget *label_widget);
subroutine gtk_frame_set_label_widget(frame, label_widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: frame
  type(c_ptr), value :: label_widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_frame_get_label_widget (GtkFrame *frame);
function gtk_frame_get_label_widget(frame) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_frame_get_label_widget
  type(c_ptr), value :: frame
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_frame_set_label_align (GtkFrame *frame, gfloat xalign);
subroutine gtk_frame_set_label_align(frame, xalign) bind(c)
  use iso_c_binding, only: c_ptr, c_float
  type(c_ptr), value :: frame
  real(c_float), value :: xalign
end subroutine

! GDK_AVAILABLE_IN_ALL
!gfloat gtk_frame_get_label_align (GtkFrame *frame);
function gtk_frame_get_label_align(frame) bind(c)
  use iso_c_binding, only: c_float, c_ptr
  real(c_float) :: gtk_frame_get_label_align
  type(c_ptr), value :: frame
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_frame_set_shadow_type (GtkFrame *frame, GtkShadowType type);
subroutine gtk_frame_set_shadow_type(frame, type) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: frame
  integer(c_int), value :: type
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkShadowType gtk_frame_get_shadow_type (GtkFrame *frame);
function gtk_frame_get_shadow_type(frame) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_frame_get_shadow_type
  type(c_ptr), value :: frame
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_text_child_anchor_get_type (void) G_GNUC_CONST;
function gtk_text_child_anchor_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_text_child_anchor_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkTextChildAnchor* gtk_text_child_anchor_new (void);
function gtk_text_child_anchor_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_child_anchor_new
end function

! GDK_AVAILABLE_IN_ALL
!GList* gtk_text_child_anchor_get_widgets (GtkTextChildAnchor *anchor);
function gtk_text_child_anchor_get_widgets(anchor) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_child_anchor_get_widgets
  type(c_ptr), value :: anchor
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_child_anchor_get_deleted (GtkTextChildAnchor *anchor);
function gtk_text_child_anchor_get_deleted(anchor) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_child_anchor_get_deleted
  type(c_ptr), value :: anchor
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_file_chooser_get_type (void) G_GNUC_CONST;
function gtk_file_chooser_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_file_chooser_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GQuark gtk_file_chooser_error_quark (void);
function gtk_file_chooser_error_quark() bind(c)
  use iso_c_binding, only: c_int32_t
  integer(c_int32_t) :: gtk_file_chooser_error_quark
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_file_chooser_set_action (GtkFileChooser *chooser, GtkFileChooserAction action);
subroutine gtk_file_chooser_set_action(chooser, action) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: chooser
  integer(c_int), value :: action
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkFileChooserAction gtk_file_chooser_get_action (GtkFileChooser *chooser);
function gtk_file_chooser_get_action(chooser) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_file_chooser_get_action
  type(c_ptr), value :: chooser
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_file_chooser_set_select_multiple (GtkFileChooser *chooser, gboolean select_multiple);
subroutine gtk_file_chooser_set_select_multiple(chooser, select_multiple)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: chooser
  integer(c_int), value :: select_multiple
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_file_chooser_get_select_multiple (GtkFileChooser *chooser);
function gtk_file_chooser_get_select_multiple(chooser) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_file_chooser_get_select_multiple
  type(c_ptr), value :: chooser
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_file_chooser_set_create_folders (GtkFileChooser *chooser, gboolean create_folders);
subroutine gtk_file_chooser_set_create_folders(chooser, create_folders) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: chooser
  integer(c_int), value :: create_folders
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_file_chooser_get_create_folders (GtkFileChooser *chooser);
function gtk_file_chooser_get_create_folders(chooser) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_file_chooser_get_create_folders
  type(c_ptr), value :: chooser
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_file_chooser_set_current_name (GtkFileChooser *chooser, const gchar *name);
subroutine gtk_file_chooser_set_current_name(chooser, name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: chooser
  character(kind=c_char), dimension(*) :: name
end subroutine

! GDK_AVAILABLE_IN_ALL
!gchar *gtk_file_chooser_get_current_name (GtkFileChooser *chooser);
function gtk_file_chooser_get_current_name(chooser) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_file_chooser_get_current_name
  type(c_ptr), value :: chooser
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_file_chooser_select_all (GtkFileChooser *chooser);
subroutine gtk_file_chooser_select_all(chooser) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: chooser
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_file_chooser_unselect_all (GtkFileChooser *chooser);
subroutine gtk_file_chooser_unselect_all(chooser) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: chooser
end subroutine

! GDK_AVAILABLE_IN_ALL
!GFile * gtk_file_chooser_get_file (GtkFileChooser *chooser);
function gtk_file_chooser_get_file(chooser) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_file_chooser_get_file
  type(c_ptr), value :: chooser
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_file_chooser_set_file (GtkFileChooser *chooser, GFile *file, GError **error);
function gtk_file_chooser_set_file(chooser, file, error) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_file_chooser_set_file
  type(c_ptr), value :: chooser
  type(c_ptr), value :: file
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_file_chooser_select_file (GtkFileChooser *chooser, GFile *file, GError **error);
function gtk_file_chooser_select_file(chooser, file, error) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_file_chooser_select_file
  type(c_ptr), value :: chooser
  type(c_ptr), value :: file
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_file_chooser_unselect_file (GtkFileChooser *chooser, GFile *file);
subroutine gtk_file_chooser_unselect_file(chooser, file) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: chooser
  type(c_ptr), value :: file
end subroutine

! GDK_AVAILABLE_IN_ALL
!GSList * gtk_file_chooser_get_files (GtkFileChooser *chooser);
function gtk_file_chooser_get_files(chooser) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_file_chooser_get_files
  type(c_ptr), value :: chooser
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_file_chooser_set_current_folder (GtkFileChooser *chooser, GFile *file, GError **error);
function gtk_file_chooser_set_current_folder(chooser, file, error) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_file_chooser_set_current_folder
  type(c_ptr), value :: chooser
  type(c_ptr), value :: file
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!GFile * gtk_file_chooser_get_current_folder (GtkFileChooser *chooser);
function gtk_file_chooser_get_current_folder(chooser) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_file_chooser_get_current_folder
  type(c_ptr), value :: chooser
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_file_chooser_add_filter (GtkFileChooser *chooser, GtkFileFilter *filter);
subroutine gtk_file_chooser_add_filter(chooser, filter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: chooser
  type(c_ptr), value :: filter
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_file_chooser_remove_filter (GtkFileChooser *chooser, GtkFileFilter *filter);
subroutine gtk_file_chooser_remove_filter(chooser, filter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: chooser
  type(c_ptr), value :: filter
end subroutine

! GDK_AVAILABLE_IN_ALL
!GSList *gtk_file_chooser_list_filters (GtkFileChooser *chooser);
function gtk_file_chooser_list_filters(chooser) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_file_chooser_list_filters
  type(c_ptr), value :: chooser
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_file_chooser_set_filter (GtkFileChooser *chooser, GtkFileFilter *filter);
subroutine gtk_file_chooser_set_filter(chooser, filter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: chooser
  type(c_ptr), value :: filter
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkFileFilter *gtk_file_chooser_get_filter (GtkFileChooser *chooser);
function gtk_file_chooser_get_filter(chooser) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_file_chooser_get_filter
  type(c_ptr), value :: chooser
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_file_chooser_add_shortcut_folder (GtkFileChooser *chooser, GFile *folder, GError **error);
function gtk_file_chooser_add_shortcut_folder(chooser, folder, error) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_file_chooser_add_shortcut_folder
  type(c_ptr), value :: chooser
  type(c_ptr), value :: folder
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_file_chooser_remove_shortcut_folder (GtkFileChooser *chooser, GFile *folder, GError **error);
function gtk_file_chooser_remove_shortcut_folder(chooser, folder, error)&
& bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_file_chooser_remove_shortcut_folder
  type(c_ptr), value :: chooser
  type(c_ptr), value :: folder
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!GSList *gtk_file_chooser_list_shortcut_folders (GtkFileChooser *chooser);
function gtk_file_chooser_list_shortcut_folders(chooser) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_file_chooser_list_shortcut_folders
  type(c_ptr), value :: chooser
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_file_chooser_add_choice (GtkFileChooser *chooser, const char *id, const char *label, const char **options, const char **option_labels);
subroutine gtk_file_chooser_add_choice(chooser, id, label, options,&
& option_labels) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: chooser
  character(kind=c_char), dimension(*) :: id
  character(kind=c_char), dimension(*) :: label
  type(c_ptr), dimension(*) :: options
  type(c_ptr), dimension(*) :: option_labels
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_file_chooser_remove_choice (GtkFileChooser *chooser, const char *id);
subroutine gtk_file_chooser_remove_choice(chooser, id) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: chooser
  character(kind=c_char), dimension(*) :: id
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_file_chooser_set_choice (GtkFileChooser *chooser, const char *id, const char *option);
subroutine gtk_file_chooser_set_choice(chooser, id, option) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: chooser
  character(kind=c_char), dimension(*) :: id
  character(kind=c_char), dimension(*) :: option
end subroutine

! GDK_AVAILABLE_IN_ALL
!const char *gtk_file_chooser_get_choice (GtkFileChooser *chooser, const char *id);
function gtk_file_chooser_get_choice(chooser, id) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_file_chooser_get_choice
  type(c_ptr), value :: chooser
  character(kind=c_char), dimension(*) :: id
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_cell_renderer_combo_get_type (void) G_GNUC_CONST;
function gtk_cell_renderer_combo_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_cell_renderer_combo_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkCellRenderer *gtk_cell_renderer_combo_new (void);
function gtk_cell_renderer_combo_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_renderer_combo_new
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_tree_model_filter_get_type (void) G_GNUC_CONST;
function gtk_tree_model_filter_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_tree_model_filter_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreeModel *gtk_tree_model_filter_new (GtkTreeModel *child_model, GtkTreePath *root);
function gtk_tree_model_filter_new(child_model, root) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_model_filter_new
  type(c_ptr), value :: child_model
  type(c_ptr), value :: root
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_model_filter_set_visible_func (GtkTreeModelFilter *filter, GtkTreeModelFilterVisibleFunc func, gpointer data, GDestroyNotify destroy);
subroutine gtk_tree_model_filter_set_visible_func(filter, func, data, destroy)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: filter
  type(c_funptr), value :: func
  type(c_ptr), value :: data
  type(c_funptr), value :: destroy
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_model_filter_set_modify_func (GtkTreeModelFilter *filter, gint n_columns, GType *types, GtkTreeModelFilterModifyFunc func, gpointer data, GDestroyNotify destroy);
subroutine gtk_tree_model_filter_set_modify_func(filter, n_columns, types,&
& func, data, destroy) bind(c)
  use iso_c_binding, only: c_ptr, c_int, c_funptr
  type(c_ptr), value :: filter
  integer(c_int), value :: n_columns
  type(c_ptr), value :: types
  type(c_funptr), value :: func
  type(c_ptr), value :: data
  type(c_funptr), value :: destroy
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_model_filter_set_visible_column (GtkTreeModelFilter *filter, gint column);
subroutine gtk_tree_model_filter_set_visible_column(filter, column) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: filter
  integer(c_int), value :: column
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkTreeModel *gtk_tree_model_filter_get_model (GtkTreeModelFilter *filter);
function gtk_tree_model_filter_get_model(filter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_model_filter_get_model
  type(c_ptr), value :: filter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_model_filter_convert_child_iter_to_iter (GtkTreeModelFilter *filter, GtkTreeIter *filter_iter, GtkTreeIter *child_iter);
function gtk_tree_model_filter_convert_child_iter_to_iter(filter, filter_iter,&
& child_iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_model_filter_convert_child_iter_to_iter
  type(c_ptr), value :: filter
  type(c_ptr), value :: filter_iter
  type(c_ptr), value :: child_iter
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_model_filter_convert_iter_to_child_iter (GtkTreeModelFilter *filter, GtkTreeIter *child_iter, GtkTreeIter *filter_iter);
subroutine gtk_tree_model_filter_convert_iter_to_child_iter(filter, child_iter,&
& filter_iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: filter
  type(c_ptr), value :: child_iter
  type(c_ptr), value :: filter_iter
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkTreePath *gtk_tree_model_filter_convert_child_path_to_path (GtkTreeModelFilter *filter, GtkTreePath *child_path);
function gtk_tree_model_filter_convert_child_path_to_path(filter, child_path)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_model_filter_convert_child_path_to_path
  type(c_ptr), value :: filter
  type(c_ptr), value :: child_path
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreePath *gtk_tree_model_filter_convert_path_to_child_path (GtkTreeModelFilter *filter, GtkTreePath *filter_path);
function gtk_tree_model_filter_convert_path_to_child_path(filter, filter_path)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_model_filter_convert_path_to_child_path
  type(c_ptr), value :: filter
  type(c_ptr), value :: filter_path
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_model_filter_refilter (GtkTreeModelFilter *filter);
subroutine gtk_tree_model_filter_refilter(filter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: filter
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_model_filter_clear_cache (GtkTreeModelFilter *filter);
subroutine gtk_tree_model_filter_clear_cache(filter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: filter
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_cell_area_box_get_type (void) G_GNUC_CONST;
function gtk_cell_area_box_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_cell_area_box_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkCellArea *gtk_cell_area_box_new (void);
function gtk_cell_area_box_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_area_box_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_box_pack_start (GtkCellAreaBox *box, GtkCellRenderer *renderer, gboolean expand, gboolean align, gboolean fixed);
subroutine gtk_cell_area_box_pack_start(box, renderer, expand, align, fixed)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: box
  type(c_ptr), value :: renderer
  integer(c_int), value :: expand
  integer(c_int), value :: align
  integer(c_int), value :: fixed
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_box_pack_end (GtkCellAreaBox *box, GtkCellRenderer *renderer, gboolean expand, gboolean align, gboolean fixed);
subroutine gtk_cell_area_box_pack_end(box, renderer, expand, align, fixed)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: box
  type(c_ptr), value :: renderer
  integer(c_int), value :: expand
  integer(c_int), value :: align
  integer(c_int), value :: fixed
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_cell_area_box_get_spacing (GtkCellAreaBox *box);
function gtk_cell_area_box_get_spacing(box) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_cell_area_box_get_spacing
  type(c_ptr), value :: box
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_box_set_spacing (GtkCellAreaBox *box, gint spacing);
subroutine gtk_cell_area_box_set_spacing(box, spacing) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: box
  integer(c_int), value :: spacing
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_list_box_row_get_type (void) G_GNUC_CONST;
function gtk_list_box_row_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_list_box_row_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_list_box_row_new (void);
function gtk_list_box_row_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_list_box_row_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_list_box_row_get_header (GtkListBoxRow *row);
function gtk_list_box_row_get_header(row) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_list_box_row_get_header
  type(c_ptr), value :: row
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_row_set_header (GtkListBoxRow *row, GtkWidget *header);
subroutine gtk_list_box_row_set_header(row, header) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: row
  type(c_ptr), value :: header
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_list_box_row_get_index (GtkListBoxRow *row);
function gtk_list_box_row_get_index(row) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_list_box_row_get_index
  type(c_ptr), value :: row
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_row_changed (GtkListBoxRow *row);
subroutine gtk_list_box_row_changed(row) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: row
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_list_box_row_is_selected (GtkListBoxRow *row);
function gtk_list_box_row_is_selected(row) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_list_box_row_is_selected
  type(c_ptr), value :: row
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_row_set_selectable (GtkListBoxRow *row, gboolean selectable);
subroutine gtk_list_box_row_set_selectable(row, selectable) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: row
  integer(c_int), value :: selectable
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_list_box_row_get_selectable (GtkListBoxRow *row);
function gtk_list_box_row_get_selectable(row) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_list_box_row_get_selectable
  type(c_ptr), value :: row
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_row_set_activatable (GtkListBoxRow *row, gboolean activatable);
subroutine gtk_list_box_row_set_activatable(row, activatable) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: row
  integer(c_int), value :: activatable
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_list_box_row_get_activatable (GtkListBoxRow *row);
function gtk_list_box_row_get_activatable(row) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_list_box_row_get_activatable
  type(c_ptr), value :: row
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_list_box_get_type (void) G_GNUC_CONST;
function gtk_list_box_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_list_box_get_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_prepend (GtkListBox *box, GtkWidget *child);
subroutine gtk_list_box_prepend(box, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: box
  type(c_ptr), value :: child
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_insert (GtkListBox *box, GtkWidget *child, gint position);
subroutine gtk_list_box_insert(box, child, position) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: box
  type(c_ptr), value :: child
  integer(c_int), value :: position
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkListBoxRow* gtk_list_box_get_selected_row (GtkListBox *box);
function gtk_list_box_get_selected_row(box) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_list_box_get_selected_row
  type(c_ptr), value :: box
end function

! GDK_AVAILABLE_IN_ALL
!GtkListBoxRow* gtk_list_box_get_row_at_index (GtkListBox *box, gint index_);
function gtk_list_box_get_row_at_index(box, index_) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_list_box_get_row_at_index
  type(c_ptr), value :: box
  integer(c_int), value :: index_
end function

! GDK_AVAILABLE_IN_ALL
!GtkListBoxRow* gtk_list_box_get_row_at_y (GtkListBox *box, gint y);
function gtk_list_box_get_row_at_y(box, y) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_list_box_get_row_at_y
  type(c_ptr), value :: box
  integer(c_int), value :: y
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_select_row (GtkListBox *box, GtkListBoxRow *row);
subroutine gtk_list_box_select_row(box, row) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: box
  type(c_ptr), value :: row
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_set_placeholder (GtkListBox *box, GtkWidget *placeholder);
subroutine gtk_list_box_set_placeholder(box, placeholder) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: box
  type(c_ptr), value :: placeholder
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_set_adjustment (GtkListBox *box, GtkAdjustment *adjustment);
subroutine gtk_list_box_set_adjustment(box, adjustment) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: box
  type(c_ptr), value :: adjustment
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkAdjustment *gtk_list_box_get_adjustment (GtkListBox *box);
function gtk_list_box_get_adjustment(box) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_list_box_get_adjustment
  type(c_ptr), value :: box
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_selected_foreach (GtkListBox *box, GtkListBoxForeachFunc func, gpointer data);
subroutine gtk_list_box_selected_foreach(box, func, data) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: box
  type(c_funptr), value :: func
  type(c_ptr), value :: data
end subroutine

! GDK_AVAILABLE_IN_ALL
!GList *gtk_list_box_get_selected_rows (GtkListBox *box);
function gtk_list_box_get_selected_rows(box) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_list_box_get_selected_rows
  type(c_ptr), value :: box
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_unselect_row (GtkListBox *box, GtkListBoxRow *row);
subroutine gtk_list_box_unselect_row(box, row) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: box
  type(c_ptr), value :: row
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_select_all (GtkListBox *box);
subroutine gtk_list_box_select_all(box) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: box
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_unselect_all (GtkListBox *box);
subroutine gtk_list_box_unselect_all(box) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: box
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_set_selection_mode (GtkListBox *box, GtkSelectionMode mode);
subroutine gtk_list_box_set_selection_mode(box, mode) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: box
  integer(c_int), value :: mode
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkSelectionMode gtk_list_box_get_selection_mode (GtkListBox *box);
function gtk_list_box_get_selection_mode(box) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_list_box_get_selection_mode
  type(c_ptr), value :: box
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_set_filter_func (GtkListBox *box, GtkListBoxFilterFunc filter_func, gpointer user_data, GDestroyNotify destroy);
subroutine gtk_list_box_set_filter_func(box, filter_func, user_data, destroy)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: box
  type(c_funptr), value :: filter_func
  type(c_ptr), value :: user_data
  type(c_funptr), value :: destroy
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_set_header_func (GtkListBox *box, GtkListBoxUpdateHeaderFunc update_header, gpointer user_data, GDestroyNotify destroy);
subroutine gtk_list_box_set_header_func(box, update_header, user_data, destroy)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: box
  type(c_funptr), value :: update_header
  type(c_ptr), value :: user_data
  type(c_funptr), value :: destroy
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_invalidate_filter (GtkListBox *box);
subroutine gtk_list_box_invalidate_filter(box) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: box
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_invalidate_sort (GtkListBox *box);
subroutine gtk_list_box_invalidate_sort(box) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: box
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_invalidate_headers (GtkListBox *box);
subroutine gtk_list_box_invalidate_headers(box) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: box
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_set_sort_func (GtkListBox *box, GtkListBoxSortFunc sort_func, gpointer user_data, GDestroyNotify destroy);
subroutine gtk_list_box_set_sort_func(box, sort_func, user_data, destroy)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: box
  type(c_funptr), value :: sort_func
  type(c_ptr), value :: user_data
  type(c_funptr), value :: destroy
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_set_activate_on_single_click (GtkListBox *box, gboolean single);
subroutine gtk_list_box_set_activate_on_single_click(box, single) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: box
  integer(c_int), value :: single
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_list_box_get_activate_on_single_click (GtkListBox *box);
function gtk_list_box_get_activate_on_single_click(box) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_list_box_get_activate_on_single_click
  type(c_ptr), value :: box
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_drag_unhighlight_row (GtkListBox *box);
subroutine gtk_list_box_drag_unhighlight_row(box) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: box
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_drag_highlight_row (GtkListBox *box, GtkListBoxRow *row);
subroutine gtk_list_box_drag_highlight_row(box, row) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: box
  type(c_ptr), value :: row
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_list_box_new (void);
function gtk_list_box_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_list_box_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_bind_model (GtkListBox *box, GListModel *model, GtkListBoxCreateWidgetFunc create_widget_func, gpointer user_data, GDestroyNotify user_data_free_func);
subroutine gtk_list_box_bind_model(box, model, create_widget_func, user_data,&
& user_data_free_func) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: box
  type(c_ptr), value :: model
  type(c_funptr), value :: create_widget_func
  type(c_ptr), value :: user_data
  type(c_funptr), value :: user_data_free_func
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_list_box_set_show_separators (GtkListBox *box, gboolean show_separators);
subroutine gtk_list_box_set_show_separators(box, show_separators) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: box
  integer(c_int), value :: show_separators
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_list_box_get_show_separators (GtkListBox *box);
function gtk_list_box_get_show_separators(box) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_list_box_get_show_separators
  type(c_ptr), value :: box
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_gesture_long_press_get_type (void) G_GNUC_CONST;
function gtk_gesture_long_press_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_gesture_long_press_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkGesture * gtk_gesture_long_press_new (void);
function gtk_gesture_long_press_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_gesture_long_press_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_gesture_long_press_set_delay_factor (GtkGestureLongPress *gesture, double delay_factor);
subroutine gtk_gesture_long_press_set_delay_factor(gesture, delay_factor)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: gesture
  real(c_double), value :: delay_factor
end subroutine

! GDK_AVAILABLE_IN_ALL
!double gtk_gesture_long_press_get_delay_factor (GtkGestureLongPress *gesture);
function gtk_gesture_long_press_get_delay_factor(gesture) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_gesture_long_press_get_delay_factor
  type(c_ptr), value :: gesture
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_toggle_button_get_type (void) G_GNUC_CONST;
function gtk_toggle_button_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_toggle_button_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_toggle_button_new (void);
function gtk_toggle_button_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_toggle_button_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_toggle_button_new_with_label (const gchar *label);
function gtk_toggle_button_new_with_label(label) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_toggle_button_new_with_label
  character(kind=c_char), dimension(*) :: label
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_toggle_button_new_with_mnemonic (const gchar *label);
function gtk_toggle_button_new_with_mnemonic(label) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_toggle_button_new_with_mnemonic
  character(kind=c_char), dimension(*) :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_toggle_button_set_active (GtkToggleButton *toggle_button, gboolean is_active);
subroutine gtk_toggle_button_set_active(toggle_button, is_active) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: toggle_button
  integer(c_int), value :: is_active
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_toggle_button_get_active (GtkToggleButton *toggle_button);
function gtk_toggle_button_get_active(toggle_button) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_toggle_button_get_active
  type(c_ptr), value :: toggle_button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_toggle_button_toggled (GtkToggleButton *toggle_button);
subroutine gtk_toggle_button_toggled(toggle_button) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: toggle_button
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_scale_get_type (void) G_GNUC_CONST;
function gtk_scale_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_scale_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_scale_new (GtkOrientation orientation, GtkAdjustment *adjustment);
function gtk_scale_new(orientation, adjustment) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_scale_new
  integer(c_int), value :: orientation
  type(c_ptr), value :: adjustment
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_scale_new_with_range (GtkOrientation orientation, gdouble min, gdouble max, gdouble step);
function gtk_scale_new_with_range(orientation, min, max, step) bind(c)
  use iso_c_binding, only: c_ptr, c_int, c_double
  type(c_ptr) :: gtk_scale_new_with_range
  integer(c_int), value :: orientation
  real(c_double), value :: min
  real(c_double), value :: max
  real(c_double), value :: step
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_scale_set_digits (GtkScale *scale, gint digits);
subroutine gtk_scale_set_digits(scale, digits) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: scale
  integer(c_int), value :: digits
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_scale_get_digits (GtkScale *scale);
function gtk_scale_get_digits(scale) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_scale_get_digits
  type(c_ptr), value :: scale
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_scale_set_draw_value (GtkScale *scale, gboolean draw_value);
subroutine gtk_scale_set_draw_value(scale, draw_value) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: scale
  integer(c_int), value :: draw_value
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_scale_get_draw_value (GtkScale *scale);
function gtk_scale_get_draw_value(scale) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_scale_get_draw_value
  type(c_ptr), value :: scale
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_scale_set_has_origin (GtkScale *scale, gboolean has_origin);
subroutine gtk_scale_set_has_origin(scale, has_origin) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: scale
  integer(c_int), value :: has_origin
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_scale_get_has_origin (GtkScale *scale);
function gtk_scale_get_has_origin(scale) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_scale_get_has_origin
  type(c_ptr), value :: scale
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_scale_set_value_pos (GtkScale *scale, GtkPositionType pos);
subroutine gtk_scale_set_value_pos(scale, pos) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: scale
  integer(c_int), value :: pos
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkPositionType gtk_scale_get_value_pos (GtkScale *scale);
function gtk_scale_get_value_pos(scale) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_scale_get_value_pos
  type(c_ptr), value :: scale
end function

! GDK_AVAILABLE_IN_ALL
!PangoLayout * gtk_scale_get_layout (GtkScale *scale);
function gtk_scale_get_layout(scale) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_scale_get_layout
  type(c_ptr), value :: scale
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_scale_get_layout_offsets (GtkScale *scale, gint *x, gint *y);
subroutine gtk_scale_get_layout_offsets(scale, x, y) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: scale
  type(c_ptr), value :: x
  type(c_ptr), value :: y
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_scale_add_mark (GtkScale *scale, gdouble value, GtkPositionType position, const gchar *markup);
subroutine gtk_scale_add_mark(scale, value, position, markup) bind(c)
  use iso_c_binding, only: c_ptr, c_double, c_int, c_char
  type(c_ptr), value :: scale
  real(c_double), value :: value
  integer(c_int), value :: position
  character(kind=c_char), dimension(*) :: markup
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_scale_clear_marks (GtkScale *scale);
subroutine gtk_scale_clear_marks(scale) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: scale
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_scale_set_format_value_func (GtkScale *scale, GtkScaleFormatValueFunc func, gpointer user_data, GDestroyNotify destroy_notify);
subroutine gtk_scale_set_format_value_func(scale, func, user_data,&
& destroy_notify) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: scale
  type(c_funptr), value :: func
  type(c_ptr), value :: user_data
  type(c_funptr), value :: destroy_notify
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_cell_renderer_pixbuf_get_type (void) G_GNUC_CONST;
function gtk_cell_renderer_pixbuf_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_cell_renderer_pixbuf_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkCellRenderer *gtk_cell_renderer_pixbuf_new (void);
function gtk_cell_renderer_pixbuf_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_renderer_pixbuf_new
end function

! GDK_AVAILABLE_IN_ALL
!GQuark gtk_recent_manager_error_quark (void);
function gtk_recent_manager_error_quark() bind(c)
  use iso_c_binding, only: c_int32_t
  integer(c_int32_t) :: gtk_recent_manager_error_quark
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_recent_manager_get_type (void) G_GNUC_CONST;
function gtk_recent_manager_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_recent_manager_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkRecentManager *gtk_recent_manager_new (void);
function gtk_recent_manager_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_recent_manager_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkRecentManager *gtk_recent_manager_get_default (void);
function gtk_recent_manager_get_default() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_recent_manager_get_default
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_recent_manager_add_item (GtkRecentManager *manager, const gchar *uri);
function gtk_recent_manager_add_item(manager, uri) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_recent_manager_add_item
  type(c_ptr), value :: manager
  character(kind=c_char), dimension(*) :: uri
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_recent_manager_add_full (GtkRecentManager *manager, const gchar *uri, const GtkRecentData *recent_data);
function gtk_recent_manager_add_full(manager, uri, recent_data) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_recent_manager_add_full
  type(c_ptr), value :: manager
  character(kind=c_char), dimension(*) :: uri
  type(c_ptr), value :: recent_data
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_recent_manager_remove_item (GtkRecentManager *manager, const gchar *uri, GError **error);
function gtk_recent_manager_remove_item(manager, uri, error) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_recent_manager_remove_item
  type(c_ptr), value :: manager
  character(kind=c_char), dimension(*) :: uri
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!GtkRecentInfo * gtk_recent_manager_lookup_item (GtkRecentManager *manager, const gchar *uri, GError **error);
function gtk_recent_manager_lookup_item(manager, uri, error) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_recent_manager_lookup_item
  type(c_ptr), value :: manager
  character(kind=c_char), dimension(*) :: uri
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_recent_manager_has_item (GtkRecentManager *manager, const gchar *uri);
function gtk_recent_manager_has_item(manager, uri) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_recent_manager_has_item
  type(c_ptr), value :: manager
  character(kind=c_char), dimension(*) :: uri
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_recent_manager_move_item (GtkRecentManager *manager, const gchar *uri, const gchar *new_uri, GError **error);
function gtk_recent_manager_move_item(manager, uri, new_uri, error) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_recent_manager_move_item
  type(c_ptr), value :: manager
  character(kind=c_char), dimension(*) :: uri
  character(kind=c_char), dimension(*) :: new_uri
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!GList * gtk_recent_manager_get_items (GtkRecentManager *manager);
function gtk_recent_manager_get_items(manager) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_recent_manager_get_items
  type(c_ptr), value :: manager
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_recent_manager_purge_items (GtkRecentManager *manager, GError **error);
function gtk_recent_manager_purge_items(manager, error) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_recent_manager_purge_items
  type(c_ptr), value :: manager
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_recent_info_get_type (void) G_GNUC_CONST;
function gtk_recent_info_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_recent_info_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkRecentInfo * gtk_recent_info_ref (GtkRecentInfo *info);
function gtk_recent_info_ref(info) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_recent_info_ref
  type(c_ptr), value :: info
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_recent_info_unref (GtkRecentInfo *info);
subroutine gtk_recent_info_unref(info) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: info
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_recent_info_get_uri (GtkRecentInfo *info);
function gtk_recent_info_get_uri(info) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_recent_info_get_uri
  type(c_ptr), value :: info
end function

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_recent_info_get_display_name (GtkRecentInfo *info);
function gtk_recent_info_get_display_name(info) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_recent_info_get_display_name
  type(c_ptr), value :: info
end function

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_recent_info_get_description (GtkRecentInfo *info);
function gtk_recent_info_get_description(info) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_recent_info_get_description
  type(c_ptr), value :: info
end function

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_recent_info_get_mime_type (GtkRecentInfo *info);
function gtk_recent_info_get_mime_type(info) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_recent_info_get_mime_type
  type(c_ptr), value :: info
end function

! GDK_AVAILABLE_IN_ALL
!time_t gtk_recent_info_get_added (GtkRecentInfo *info);
function gtk_recent_info_get_added(info) bind(c)
  use iso_c_binding, only: c_long, c_ptr
  integer(c_long) :: gtk_recent_info_get_added
  type(c_ptr), value :: info
end function

! GDK_AVAILABLE_IN_ALL
!time_t gtk_recent_info_get_modified (GtkRecentInfo *info);
function gtk_recent_info_get_modified(info) bind(c)
  use iso_c_binding, only: c_long, c_ptr
  integer(c_long) :: gtk_recent_info_get_modified
  type(c_ptr), value :: info
end function

! GDK_AVAILABLE_IN_ALL
!time_t gtk_recent_info_get_visited (GtkRecentInfo *info);
function gtk_recent_info_get_visited(info) bind(c)
  use iso_c_binding, only: c_long, c_ptr
  integer(c_long) :: gtk_recent_info_get_visited
  type(c_ptr), value :: info
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_recent_info_get_private_hint (GtkRecentInfo *info);
function gtk_recent_info_get_private_hint(info) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_recent_info_get_private_hint
  type(c_ptr), value :: info
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_recent_info_get_application_info (GtkRecentInfo *info, const gchar *app_name, const gchar **app_exec, guint *count, time_t *time_);
function gtk_recent_info_get_application_info(info, app_name, app_exec, count,&
& time_) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_recent_info_get_application_info
  type(c_ptr), value :: info
  character(kind=c_char), dimension(*) :: app_name
  type(c_ptr), dimension(*) :: app_exec
  type(c_ptr), value :: count
  type(c_ptr), value :: time_
end function

! GDK_AVAILABLE_IN_ALL
!GAppInfo * gtk_recent_info_create_app_info (GtkRecentInfo *info, const gchar *app_name, GError **error);
function gtk_recent_info_create_app_info(info, app_name, error) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_recent_info_create_app_info
  type(c_ptr), value :: info
  character(kind=c_char), dimension(*) :: app_name
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!gchar ** gtk_recent_info_get_applications (GtkRecentInfo *info, gsize *length) G_GNUC_MALLOC;
function gtk_recent_info_get_applications(info, length) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_recent_info_get_applications
  type(c_ptr), value :: info
  type(c_ptr), value :: length
end function

! GDK_AVAILABLE_IN_ALL
!gchar * gtk_recent_info_last_application (GtkRecentInfo *info) G_GNUC_MALLOC;
function gtk_recent_info_last_application(info) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_recent_info_last_application
  type(c_ptr), value :: info
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_recent_info_has_application (GtkRecentInfo *info, const gchar *app_name);
function gtk_recent_info_has_application(info, app_name) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_recent_info_has_application
  type(c_ptr), value :: info
  character(kind=c_char), dimension(*) :: app_name
end function

! GDK_AVAILABLE_IN_ALL
!gchar ** gtk_recent_info_get_groups (GtkRecentInfo *info, gsize *length) G_GNUC_MALLOC;
function gtk_recent_info_get_groups(info, length) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_recent_info_get_groups
  type(c_ptr), value :: info
  type(c_ptr), value :: length
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_recent_info_has_group (GtkRecentInfo *info, const gchar *group_name);
function gtk_recent_info_has_group(info, group_name) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_recent_info_has_group
  type(c_ptr), value :: info
  character(kind=c_char), dimension(*) :: group_name
end function

! GDK_AVAILABLE_IN_ALL
!GIcon * gtk_recent_info_get_gicon (GtkRecentInfo *info);
function gtk_recent_info_get_gicon(info) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_recent_info_get_gicon
  type(c_ptr), value :: info
end function

! GDK_AVAILABLE_IN_ALL
!gchar * gtk_recent_info_get_short_name (GtkRecentInfo *info) G_GNUC_MALLOC;
function gtk_recent_info_get_short_name(info) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_recent_info_get_short_name
  type(c_ptr), value :: info
end function

! GDK_AVAILABLE_IN_ALL
!gchar * gtk_recent_info_get_uri_display (GtkRecentInfo *info) G_GNUC_MALLOC;
function gtk_recent_info_get_uri_display(info) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_recent_info_get_uri_display
  type(c_ptr), value :: info
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_recent_info_get_age (GtkRecentInfo *info);
function gtk_recent_info_get_age(info) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_recent_info_get_age
  type(c_ptr), value :: info
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_recent_info_is_local (GtkRecentInfo *info);
function gtk_recent_info_is_local(info) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_recent_info_is_local
  type(c_ptr), value :: info
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_recent_info_exists (GtkRecentInfo *info);
function gtk_recent_info_exists(info) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_recent_info_exists
  type(c_ptr), value :: info
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_recent_info_match (GtkRecentInfo *info_a, GtkRecentInfo *info_b);
function gtk_recent_info_match(info_a, info_b) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_recent_info_match
  type(c_ptr), value :: info_a
  type(c_ptr), value :: info_b
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_overlay_get_type (void) G_GNUC_CONST;
function gtk_overlay_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_overlay_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_overlay_new (void);
function gtk_overlay_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_overlay_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_overlay_add_overlay (GtkOverlay *overlay, GtkWidget *widget);
subroutine gtk_overlay_add_overlay(overlay, widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: overlay
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_overlay_get_measure_overlay (GtkOverlay *overlay, GtkWidget *widget);
function gtk_overlay_get_measure_overlay(overlay, widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_overlay_get_measure_overlay
  type(c_ptr), value :: overlay
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_overlay_set_measure_overlay (GtkOverlay *overlay, GtkWidget *widget, gboolean measure);
subroutine gtk_overlay_set_measure_overlay(overlay, widget, measure) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: overlay
  type(c_ptr), value :: widget
  integer(c_int), value :: measure
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_overlay_get_clip_overlay (GtkOverlay *overlay, GtkWidget *widget);
function gtk_overlay_get_clip_overlay(overlay, widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_overlay_get_clip_overlay
  type(c_ptr), value :: overlay
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_overlay_set_clip_overlay (GtkOverlay *overlay, GtkWidget *widget, gboolean clip_overlay);
subroutine gtk_overlay_set_clip_overlay(overlay, widget, clip_overlay) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: overlay
  type(c_ptr), value :: widget
  integer(c_int), value :: clip_overlay
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_gesture_stylus_get_type (void) G_GNUC_CONST;
function gtk_gesture_stylus_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_gesture_stylus_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkGesture * gtk_gesture_stylus_new (void);
function gtk_gesture_stylus_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_gesture_stylus_new
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_gesture_stylus_get_axis (GtkGestureStylus *gesture, GdkAxisUse axis, gdouble *value);
function gtk_gesture_stylus_get_axis(gesture, axis, value) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gesture_stylus_get_axis
  type(c_ptr), value :: gesture
  integer(c_int), value :: axis
  type(c_ptr), value :: value
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_gesture_stylus_get_axes (GtkGestureStylus *gesture, GdkAxisUse axes[], gdouble **values);
function gtk_gesture_stylus_get_axes(gesture, axes, values) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gesture_stylus_get_axes
  type(c_ptr), value :: gesture
  integer(c_int), value :: axes
  type(c_ptr), value :: values
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_gesture_stylus_get_backlog (GtkGestureStylus *gesture, GdkTimeCoord **backlog, guint *n_elems);
function gtk_gesture_stylus_get_backlog(gesture, backlog, n_elems) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gesture_stylus_get_backlog
  type(c_ptr), value :: gesture
  type(c_ptr), value :: backlog
  type(c_ptr), value :: n_elems
end function

! GDK_AVAILABLE_IN_ALL
!GdkDeviceTool * gtk_gesture_stylus_get_device_tool (GtkGestureStylus *gesture);
function gtk_gesture_stylus_get_device_tool(gesture) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_gesture_stylus_get_device_tool
  type(c_ptr), value :: gesture
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_editable_get_type (void) G_GNUC_CONST;
function gtk_editable_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_editable_get_type
end function

! GDK_AVAILABLE_IN_ALL
!const char * gtk_editable_get_text (GtkEditable *editable);
function gtk_editable_get_text(editable) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_editable_get_text
  type(c_ptr), value :: editable
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_editable_set_text (GtkEditable *editable, const char *text);
subroutine gtk_editable_set_text(editable, text) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: editable
  character(kind=c_char), dimension(*) :: text
end subroutine

! GDK_AVAILABLE_IN_ALL
!char * gtk_editable_get_chars (GtkEditable *editable, int start_pos, int end_pos);
function gtk_editable_get_chars(editable, start_pos, end_pos) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_editable_get_chars
  type(c_ptr), value :: editable
  integer(c_int), value :: start_pos
  integer(c_int), value :: end_pos
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_editable_insert_text (GtkEditable *editable, const char *text, int length, int *position);
subroutine gtk_editable_insert_text(editable, text, length, position) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int
  type(c_ptr), value :: editable
  character(kind=c_char), dimension(*) :: text
  integer(c_int), value :: length
  type(c_ptr), value :: position
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_editable_delete_text (GtkEditable *editable, int start_pos, int end_pos);
subroutine gtk_editable_delete_text(editable, start_pos, end_pos) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: editable
  integer(c_int), value :: start_pos
  integer(c_int), value :: end_pos
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_editable_get_selection_bounds (GtkEditable *editable, int *start_pos, int *end_pos);
function gtk_editable_get_selection_bounds(editable, start_pos, end_pos)&
& bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_editable_get_selection_bounds
  type(c_ptr), value :: editable
  type(c_ptr), value :: start_pos
  type(c_ptr), value :: end_pos
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_editable_delete_selection (GtkEditable *editable);
subroutine gtk_editable_delete_selection(editable) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: editable
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_editable_select_region (GtkEditable *editable, int start_pos, int end_pos);
subroutine gtk_editable_select_region(editable, start_pos, end_pos) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: editable
  integer(c_int), value :: start_pos
  integer(c_int), value :: end_pos
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_editable_set_position (GtkEditable *editable, int position);
subroutine gtk_editable_set_position(editable, position) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: editable
  integer(c_int), value :: position
end subroutine

! GDK_AVAILABLE_IN_ALL
!int gtk_editable_get_position (GtkEditable *editable);
function gtk_editable_get_position(editable) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_editable_get_position
  type(c_ptr), value :: editable
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_editable_get_editable (GtkEditable *editable);
function gtk_editable_get_editable(editable) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_editable_get_editable
  type(c_ptr), value :: editable
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_editable_set_editable (GtkEditable *editable, gboolean is_editable);
subroutine gtk_editable_set_editable(editable, is_editable) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: editable
  integer(c_int), value :: is_editable
end subroutine

! GDK_AVAILABLE_IN_ALL
!float gtk_editable_get_alignment (GtkEditable *editable);
function gtk_editable_get_alignment(editable) bind(c)
  use iso_c_binding, only: c_float, c_ptr
  real(c_float) :: gtk_editable_get_alignment
  type(c_ptr), value :: editable
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_editable_set_alignment (GtkEditable *editable, float xalign);
subroutine gtk_editable_set_alignment(editable, xalign) bind(c)
  use iso_c_binding, only: c_ptr, c_float
  type(c_ptr), value :: editable
  real(c_float), value :: xalign
end subroutine

! GDK_AVAILABLE_IN_ALL
!int gtk_editable_get_width_chars (GtkEditable *editable);
function gtk_editable_get_width_chars(editable) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_editable_get_width_chars
  type(c_ptr), value :: editable
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_editable_set_width_chars (GtkEditable *editable, int n_chars);
subroutine gtk_editable_set_width_chars(editable, n_chars) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: editable
  integer(c_int), value :: n_chars
end subroutine

! GDK_AVAILABLE_IN_ALL
!int gtk_editable_get_max_width_chars (GtkEditable *editable);
function gtk_editable_get_max_width_chars(editable) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_editable_get_max_width_chars
  type(c_ptr), value :: editable
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_editable_set_max_width_chars (GtkEditable *editable, int n_chars);
subroutine gtk_editable_set_max_width_chars(editable, n_chars) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: editable
  integer(c_int), value :: n_chars
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_editable_get_enable_undo (GtkEditable *editable);
function gtk_editable_get_enable_undo(editable) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_editable_get_enable_undo
  type(c_ptr), value :: editable
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_editable_set_enable_undo (GtkEditable *editable, gboolean enable_undo);
subroutine gtk_editable_set_enable_undo(editable, enable_undo) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: editable
  integer(c_int), value :: enable_undo
end subroutine

! GDK_AVAILABLE_IN_ALL
!guint gtk_editable_install_properties (GObjectClass *object_class, guint first_prop);
function gtk_editable_install_properties(object_class, first_prop) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_editable_install_properties
  type(c_ptr), value :: object_class
  integer(c_int), value :: first_prop
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_editable_init_delegate (GtkEditable *editable);
subroutine gtk_editable_init_delegate(editable) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: editable
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_editable_finish_delegate (GtkEditable *editable);
subroutine gtk_editable_finish_delegate(editable) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: editable
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_editable_delegate_set_property (GObject *object, guint prop_id, const GValue *value, GParamSpec *pspec);
function gtk_editable_delegate_set_property(object, prop_id, value, pspec)&
& bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_editable_delegate_set_property
  type(c_ptr), value :: object
  integer(c_int), value :: prop_id
  type(c_ptr), value :: value
  type(c_ptr), value :: pspec
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_editable_delegate_get_property (GObject *object, guint prop_id, GValue *value, GParamSpec *pspec);
function gtk_editable_delegate_get_property(object, prop_id, value, pspec)&
& bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_editable_delegate_get_property
  type(c_ptr), value :: object
  integer(c_int), value :: prop_id
  type(c_ptr), value :: value
  type(c_ptr), value :: pspec
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_viewport_get_type (void) G_GNUC_CONST;
function gtk_viewport_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_viewport_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_viewport_new (GtkAdjustment *hadjustment, GtkAdjustment *vadjustment);
function gtk_viewport_new(hadjustment, vadjustment) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_viewport_new
  type(c_ptr), value :: hadjustment
  type(c_ptr), value :: vadjustment
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_viewport_set_shadow_type (GtkViewport *viewport, GtkShadowType type);
subroutine gtk_viewport_set_shadow_type(viewport, type) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: viewport
  integer(c_int), value :: type
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkShadowType gtk_viewport_get_shadow_type (GtkViewport *viewport);
function gtk_viewport_get_shadow_type(viewport) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_viewport_get_shadow_type
  type(c_ptr), value :: viewport
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_accel_label_get_type (void) G_GNUC_CONST;
function gtk_accel_label_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_accel_label_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_accel_label_new (const gchar *string);
function gtk_accel_label_new(string) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_accel_label_new
  character(kind=c_char), dimension(*) :: string
end function

! GDK_AVAILABLE_IN_ALL
!guint gtk_accel_label_get_accel_width (GtkAccelLabel *accel_label);
function gtk_accel_label_get_accel_width(accel_label) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_accel_label_get_accel_width
  type(c_ptr), value :: accel_label
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_accel_label_refetch (GtkAccelLabel *accel_label);
function gtk_accel_label_refetch(accel_label) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_accel_label_refetch
  type(c_ptr), value :: accel_label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_accel_label_set_accel (GtkAccelLabel *accel_label, guint accelerator_key, GdkModifierType accelerator_mods);
subroutine gtk_accel_label_set_accel(accel_label, accelerator_key,&
& accelerator_mods) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: accel_label
  integer(c_int), value :: accelerator_key
  integer(c_int), value :: accelerator_mods
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_accel_label_get_accel (GtkAccelLabel *accel_label, guint *accelerator_key, GdkModifierType *accelerator_mods);
subroutine gtk_accel_label_get_accel(accel_label, accelerator_key,&
& accelerator_mods) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: accel_label
  type(c_ptr), value :: accelerator_key
  integer(c_int), value :: accelerator_mods
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_accel_label_set_label (GtkAccelLabel *accel_label, const char *text);
subroutine gtk_accel_label_set_label(accel_label, text) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: accel_label
  character(kind=c_char), dimension(*) :: text
end subroutine

! GDK_AVAILABLE_IN_ALL
!const char * gtk_accel_label_get_label (GtkAccelLabel *accel_label);
function gtk_accel_label_get_label(accel_label) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_accel_label_get_label
  type(c_ptr), value :: accel_label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_accel_label_set_use_underline (GtkAccelLabel *accel_label, gboolean setting);
subroutine gtk_accel_label_set_use_underline(accel_label, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: accel_label
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_accel_label_get_use_underline (GtkAccelLabel *accel_label);
function gtk_accel_label_get_use_underline(accel_label) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_accel_label_get_use_underline
  type(c_ptr), value :: accel_label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_layout_manager_allocate (GtkLayoutManager *manager, GtkWidget *widget, int width, int height, int baseline);
subroutine gtk_layout_manager_allocate(manager, widget, width, height,&
& baseline) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: manager
  type(c_ptr), value :: widget
  integer(c_int), value :: width
  integer(c_int), value :: height
  integer(c_int), value :: baseline
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkSizeRequestMode gtk_layout_manager_get_request_mode (GtkLayoutManager *manager);
function gtk_layout_manager_get_request_mode(manager) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_layout_manager_get_request_mode
  type(c_ptr), value :: manager
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_layout_manager_get_widget (GtkLayoutManager *manager);
function gtk_layout_manager_get_widget(manager) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_layout_manager_get_widget
  type(c_ptr), value :: manager
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_layout_manager_layout_changed (GtkLayoutManager *manager);
subroutine gtk_layout_manager_layout_changed(manager) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: manager
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkLayoutChild * gtk_layout_manager_get_layout_child (GtkLayoutManager *manager, GtkWidget *child);
function gtk_layout_manager_get_layout_child(manager, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_layout_manager_get_layout_child
  type(c_ptr), value :: manager
  type(c_ptr), value :: child
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_print_context_get_type (void) G_GNUC_CONST;
function gtk_print_context_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_print_context_get_type
end function

! GDK_AVAILABLE_IN_ALL
!cairo_t *gtk_print_context_get_cairo_context (GtkPrintContext *context);
function gtk_print_context_get_cairo_context(context) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_print_context_get_cairo_context
  type(c_ptr), value :: context
end function

! GDK_AVAILABLE_IN_ALL
!GtkPageSetup *gtk_print_context_get_page_setup (GtkPrintContext *context);
function gtk_print_context_get_page_setup(context) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_context_get_page_setup
  type(c_ptr), value :: context
end function

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_print_context_get_width (GtkPrintContext *context);
function gtk_print_context_get_width(context) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_print_context_get_width
  type(c_ptr), value :: context
end function

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_print_context_get_height (GtkPrintContext *context);
function gtk_print_context_get_height(context) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_print_context_get_height
  type(c_ptr), value :: context
end function

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_print_context_get_dpi_x (GtkPrintContext *context);
function gtk_print_context_get_dpi_x(context) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_print_context_get_dpi_x
  type(c_ptr), value :: context
end function

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_print_context_get_dpi_y (GtkPrintContext *context);
function gtk_print_context_get_dpi_y(context) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_print_context_get_dpi_y
  type(c_ptr), value :: context
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_print_context_get_hard_margins (GtkPrintContext *context, gdouble *top, gdouble *bottom, gdouble *left, gdouble *right);
function gtk_print_context_get_hard_margins(context, top, bottom, left, right)&
& bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_context_get_hard_margins
  type(c_ptr), value :: context
  type(c_ptr), value :: top
  type(c_ptr), value :: bottom
  type(c_ptr), value :: left
  type(c_ptr), value :: right
end function

! GDK_AVAILABLE_IN_ALL
!PangoFontMap *gtk_print_context_get_pango_fontmap (GtkPrintContext *context);
function gtk_print_context_get_pango_fontmap(context) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_print_context_get_pango_fontmap
  type(c_ptr), value :: context
end function

! GDK_AVAILABLE_IN_ALL
!PangoContext *gtk_print_context_create_pango_context (GtkPrintContext *context);
function gtk_print_context_create_pango_context(context) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_print_context_create_pango_context
  type(c_ptr), value :: context
end function

! GDK_AVAILABLE_IN_ALL
!PangoLayout *gtk_print_context_create_pango_layout (GtkPrintContext *context);
function gtk_print_context_create_pango_layout(context) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_print_context_create_pango_layout
  type(c_ptr), value :: context
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_context_set_cairo_context (GtkPrintContext *context, cairo_t *cr, double dpi_x, double dpi_y);
subroutine gtk_print_context_set_cairo_context(context, cr, dpi_x, dpi_y)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: context
  type(c_ptr), value :: cr
  real(c_double), value :: dpi_x
  real(c_double), value :: dpi_y
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_center_layout_set_orientation (GtkCenterLayout *self, GtkOrientation orientation);
subroutine gtk_center_layout_set_orientation(self, orientation) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: orientation
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkOrientation gtk_center_layout_get_orientation (GtkCenterLayout *self);
function gtk_center_layout_get_orientation(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_center_layout_get_orientation
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_center_layout_set_baseline_position (GtkCenterLayout *self, GtkBaselinePosition baseline_position);
subroutine gtk_center_layout_set_baseline_position(self, baseline_position)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: baseline_position
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkBaselinePosition gtk_center_layout_get_baseline_position (GtkCenterLayout *self);
function gtk_center_layout_get_baseline_position(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_center_layout_get_baseline_position
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_center_layout_set_start_widget (GtkCenterLayout *self, GtkWidget *widget);
subroutine gtk_center_layout_set_start_widget(self, widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_center_layout_get_start_widget (GtkCenterLayout *self);
function gtk_center_layout_get_start_widget(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_center_layout_get_start_widget
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_center_layout_set_center_widget (GtkCenterLayout *self, GtkWidget *widget);
subroutine gtk_center_layout_set_center_widget(self, widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_center_layout_get_center_widget (GtkCenterLayout *self);
function gtk_center_layout_get_center_widget(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_center_layout_get_center_widget
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_center_layout_set_end_widget (GtkCenterLayout *self, GtkWidget *widget);
subroutine gtk_center_layout_set_end_widget(self, widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_center_layout_get_end_widget (GtkCenterLayout *self);
function gtk_center_layout_get_end_widget(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_center_layout_get_end_widget
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_app_chooser_button_get_type (void) G_GNUC_CONST;
function gtk_app_chooser_button_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_app_chooser_button_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_app_chooser_button_new (const gchar *content_type);
function gtk_app_chooser_button_new(content_type) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_app_chooser_button_new
  character(kind=c_char), dimension(*) :: content_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_app_chooser_button_append_separator (GtkAppChooserButton *self);
subroutine gtk_app_chooser_button_append_separator(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_app_chooser_button_append_custom_item (GtkAppChooserButton *self, const gchar *name, const gchar *label, GIcon *icon);
subroutine gtk_app_chooser_button_append_custom_item(self, name, label, icon)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: name
  character(kind=c_char), dimension(*) :: label
  type(c_ptr), value :: icon
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_app_chooser_button_set_active_custom_item (GtkAppChooserButton *self, const gchar *name);
subroutine gtk_app_chooser_button_set_active_custom_item(self, name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: name
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_app_chooser_button_set_show_dialog_item (GtkAppChooserButton *self, gboolean setting);
subroutine gtk_app_chooser_button_set_show_dialog_item(self, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_app_chooser_button_get_show_dialog_item (GtkAppChooserButton *self);
function gtk_app_chooser_button_get_show_dialog_item(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_app_chooser_button_get_show_dialog_item
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_app_chooser_button_set_heading (GtkAppChooserButton *self, const gchar *heading);
subroutine gtk_app_chooser_button_set_heading(self, heading) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: heading
end subroutine

! 
!const gchar * gtk_app_chooser_button_get_heading (GtkAppChooserButton *self);
function gtk_app_chooser_button_get_heading(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_app_chooser_button_get_heading
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_app_chooser_button_set_show_default_item (GtkAppChooserButton *self, gboolean setting);
subroutine gtk_app_chooser_button_set_show_default_item(self, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_app_chooser_button_get_show_default_item (GtkAppChooserButton *self);
function gtk_app_chooser_button_get_show_default_item(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_app_chooser_button_get_show_default_item
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_color_button_get_type (void) G_GNUC_CONST;
function gtk_color_button_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_color_button_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_color_button_new (void);
function gtk_color_button_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_color_button_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_color_button_new_with_rgba (const GdkRGBA *rgba);
function gtk_color_button_new_with_rgba(rgba) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_color_button_new_with_rgba
  type(c_ptr), value :: rgba
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_color_button_set_title (GtkColorButton *button, const gchar *title);
subroutine gtk_color_button_set_title(button, title) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: button
  character(kind=c_char), dimension(*) :: title
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar *gtk_color_button_get_title (GtkColorButton *button);
function gtk_color_button_get_title(button) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_color_button_get_title
  type(c_ptr), value :: button
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_emoji_chooser_get_type (void) G_GNUC_CONST;
function gtk_emoji_chooser_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_emoji_chooser_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_emoji_chooser_new (void);
function gtk_emoji_chooser_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_emoji_chooser_new
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_level_bar_get_type (void) G_GNUC_CONST;
function gtk_level_bar_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_level_bar_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_level_bar_new (void);
function gtk_level_bar_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_level_bar_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_level_bar_new_for_interval (gdouble min_value, gdouble max_value);
function gtk_level_bar_new_for_interval(min_value, max_value) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr) :: gtk_level_bar_new_for_interval
  real(c_double), value :: min_value
  real(c_double), value :: max_value
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_level_bar_set_mode (GtkLevelBar *self, GtkLevelBarMode mode);
subroutine gtk_level_bar_set_mode(self, mode) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: mode
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkLevelBarMode gtk_level_bar_get_mode (GtkLevelBar *self);
function gtk_level_bar_get_mode(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_level_bar_get_mode
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_level_bar_set_value (GtkLevelBar *self, gdouble value);
subroutine gtk_level_bar_set_value(self, value) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: self
  real(c_double), value :: value
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_level_bar_get_value (GtkLevelBar *self);
function gtk_level_bar_get_value(self) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_level_bar_get_value
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_level_bar_set_min_value (GtkLevelBar *self, gdouble value);
subroutine gtk_level_bar_set_min_value(self, value) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: self
  real(c_double), value :: value
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_level_bar_get_min_value (GtkLevelBar *self);
function gtk_level_bar_get_min_value(self) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_level_bar_get_min_value
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_level_bar_set_max_value (GtkLevelBar *self, gdouble value);
subroutine gtk_level_bar_set_max_value(self, value) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: self
  real(c_double), value :: value
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_level_bar_get_max_value (GtkLevelBar *self);
function gtk_level_bar_get_max_value(self) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_level_bar_get_max_value
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_level_bar_set_inverted (GtkLevelBar *self, gboolean inverted);
subroutine gtk_level_bar_set_inverted(self, inverted) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: inverted
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_level_bar_get_inverted (GtkLevelBar *self);
function gtk_level_bar_get_inverted(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_level_bar_get_inverted
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_level_bar_add_offset_value (GtkLevelBar *self, const gchar *name, gdouble value);
subroutine gtk_level_bar_add_offset_value(self, name, value) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_double
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: name
  real(c_double), value :: value
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_level_bar_remove_offset_value (GtkLevelBar *self, const gchar *name);
subroutine gtk_level_bar_remove_offset_value(self, name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: name
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_level_bar_get_offset_value (GtkLevelBar *self, const gchar *name, gdouble *value);
function gtk_level_bar_get_offset_value(self, name, value) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_level_bar_get_offset_value
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: name
  type(c_ptr), value :: value
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_popover_get_type (void) G_GNUC_CONST;
function gtk_popover_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_popover_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_popover_new (void);
function gtk_popover_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_popover_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_popover_set_pointing_to (GtkPopover *popover, const GdkRectangle *rect);
subroutine gtk_popover_set_pointing_to(popover, rect) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: popover
  type(c_ptr), value :: rect
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_popover_get_pointing_to (GtkPopover *popover, GdkRectangle *rect);
function gtk_popover_get_pointing_to(popover, rect) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_popover_get_pointing_to
  type(c_ptr), value :: popover
  type(c_ptr), value :: rect
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_popover_set_position (GtkPopover *popover, GtkPositionType position);
subroutine gtk_popover_set_position(popover, position) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: popover
  integer(c_int), value :: position
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkPositionType gtk_popover_get_position (GtkPopover *popover);
function gtk_popover_get_position(popover) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_popover_get_position
  type(c_ptr), value :: popover
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_popover_set_autohide (GtkPopover *popover, gboolean autohide);
subroutine gtk_popover_set_autohide(popover, autohide) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: popover
  integer(c_int), value :: autohide
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_popover_get_autohide (GtkPopover *popover);
function gtk_popover_get_autohide(popover) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_popover_get_autohide
  type(c_ptr), value :: popover
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_popover_set_has_arrow (GtkPopover *popover, gboolean has_arrow);
subroutine gtk_popover_set_has_arrow(popover, has_arrow) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: popover
  integer(c_int), value :: has_arrow
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_popover_get_has_arrow (GtkPopover *popover);
function gtk_popover_get_has_arrow(popover) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_popover_get_has_arrow
  type(c_ptr), value :: popover
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_popover_set_mnemonics_visible (GtkPopover *popover, gboolean mnemonics_visible);
subroutine gtk_popover_set_mnemonics_visible(popover, mnemonics_visible)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: popover
  integer(c_int), value :: mnemonics_visible
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_popover_get_mnemonics_visible (GtkPopover *popover);
function gtk_popover_get_mnemonics_visible(popover) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_popover_get_mnemonics_visible
  type(c_ptr), value :: popover
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_popover_popup (GtkPopover *popover);
subroutine gtk_popover_popup(popover) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: popover
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_popover_popdown (GtkPopover *popover);
subroutine gtk_popover_popdown(popover) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: popover
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_popover_set_default_widget (GtkPopover *popover, GtkWidget *widget);
subroutine gtk_popover_set_default_widget(popover, widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: popover
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_render_check (GtkStyleContext *context, cairo_t *cr, gdouble x, gdouble y, gdouble width, gdouble height);
subroutine gtk_render_check(context, cr, x, y, width, height) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: context
  type(c_ptr), value :: cr
  real(c_double), value :: x
  real(c_double), value :: y
  real(c_double), value :: width
  real(c_double), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_render_option (GtkStyleContext *context, cairo_t *cr, gdouble x, gdouble y, gdouble width, gdouble height);
subroutine gtk_render_option(context, cr, x, y, width, height) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: context
  type(c_ptr), value :: cr
  real(c_double), value :: x
  real(c_double), value :: y
  real(c_double), value :: width
  real(c_double), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_render_arrow (GtkStyleContext *context, cairo_t *cr, gdouble angle, gdouble x, gdouble y, gdouble size);
subroutine gtk_render_arrow(context, cr, angle, x, y, size) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: context
  type(c_ptr), value :: cr
  real(c_double), value :: angle
  real(c_double), value :: x
  real(c_double), value :: y
  real(c_double), value :: size
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_render_background (GtkStyleContext *context, cairo_t *cr, gdouble x, gdouble y, gdouble width, gdouble height);
subroutine gtk_render_background(context, cr, x, y, width, height) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: context
  type(c_ptr), value :: cr
  real(c_double), value :: x
  real(c_double), value :: y
  real(c_double), value :: width
  real(c_double), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_render_frame (GtkStyleContext *context, cairo_t *cr, gdouble x, gdouble y, gdouble width, gdouble height);
subroutine gtk_render_frame(context, cr, x, y, width, height) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: context
  type(c_ptr), value :: cr
  real(c_double), value :: x
  real(c_double), value :: y
  real(c_double), value :: width
  real(c_double), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_render_expander (GtkStyleContext *context, cairo_t *cr, gdouble x, gdouble y, gdouble width, gdouble height);
subroutine gtk_render_expander(context, cr, x, y, width, height) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: context
  type(c_ptr), value :: cr
  real(c_double), value :: x
  real(c_double), value :: y
  real(c_double), value :: width
  real(c_double), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_render_focus (GtkStyleContext *context, cairo_t *cr, gdouble x, gdouble y, gdouble width, gdouble height);
subroutine gtk_render_focus(context, cr, x, y, width, height) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: context
  type(c_ptr), value :: cr
  real(c_double), value :: x
  real(c_double), value :: y
  real(c_double), value :: width
  real(c_double), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_render_layout (GtkStyleContext *context, cairo_t *cr, gdouble x, gdouble y, PangoLayout *layout);
subroutine gtk_render_layout(context, cr, x, y, layout) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: context
  type(c_ptr), value :: cr
  real(c_double), value :: x
  real(c_double), value :: y
  type(c_ptr), value :: layout
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_render_line (GtkStyleContext *context, cairo_t *cr, gdouble x0, gdouble y0, gdouble x1, gdouble y1);
subroutine gtk_render_line(context, cr, x0, y0, x1, y1) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: context
  type(c_ptr), value :: cr
  real(c_double), value :: x0
  real(c_double), value :: y0
  real(c_double), value :: x1
  real(c_double), value :: y1
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_render_slider (GtkStyleContext *context, cairo_t *cr, gdouble x, gdouble y, gdouble width, gdouble height, GtkOrientation orientation);
subroutine gtk_render_slider(context, cr, x, y, width, height, orientation)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_double, c_int
  type(c_ptr), value :: context
  type(c_ptr), value :: cr
  real(c_double), value :: x
  real(c_double), value :: y
  real(c_double), value :: width
  real(c_double), value :: height
  integer(c_int), value :: orientation
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_render_handle (GtkStyleContext *context, cairo_t *cr, gdouble x, gdouble y, gdouble width, gdouble height);
subroutine gtk_render_handle(context, cr, x, y, width, height) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: context
  type(c_ptr), value :: cr
  real(c_double), value :: x
  real(c_double), value :: y
  real(c_double), value :: width
  real(c_double), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_render_activity (GtkStyleContext *context, cairo_t *cr, gdouble x, gdouble y, gdouble width, gdouble height);
subroutine gtk_render_activity(context, cr, x, y, width, height) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: context
  type(c_ptr), value :: cr
  real(c_double), value :: x
  real(c_double), value :: y
  real(c_double), value :: width
  real(c_double), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_render_icon (GtkStyleContext *context, cairo_t *cr, GdkTexture *texture, gdouble x, gdouble y);
subroutine gtk_render_icon(context, cr, texture, x, y) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: context
  type(c_ptr), value :: cr
  type(c_ptr), value :: texture
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_tooltip_get_type (void);
function gtk_tooltip_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_tooltip_get_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tooltip_set_markup (GtkTooltip *tooltip, const gchar *markup);
subroutine gtk_tooltip_set_markup(tooltip, markup) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: tooltip
  character(kind=c_char), dimension(*) :: markup
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tooltip_set_text (GtkTooltip *tooltip, const gchar *text);
subroutine gtk_tooltip_set_text(tooltip, text) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: tooltip
  character(kind=c_char), dimension(*) :: text
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tooltip_set_icon (GtkTooltip *tooltip, GdkPaintable *paintable);
subroutine gtk_tooltip_set_icon(tooltip, paintable) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tooltip
  type(c_ptr), value :: paintable
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tooltip_set_icon_from_icon_name (GtkTooltip *tooltip, const gchar *icon_name);
subroutine gtk_tooltip_set_icon_from_icon_name(tooltip, icon_name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: tooltip
  character(kind=c_char), dimension(*) :: icon_name
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tooltip_set_icon_from_gicon (GtkTooltip *tooltip, GIcon *gicon);
subroutine gtk_tooltip_set_icon_from_gicon(tooltip, gicon) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tooltip
  type(c_ptr), value :: gicon
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tooltip_set_custom (GtkTooltip *tooltip, GtkWidget *custom_widget);
subroutine gtk_tooltip_set_custom(tooltip, custom_widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tooltip
  type(c_ptr), value :: custom_widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tooltip_set_tip_area (GtkTooltip *tooltip, const GdkRectangle *rect);
subroutine gtk_tooltip_set_tip_area(tooltip, rect) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tooltip
  type(c_ptr), value :: rect
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_cell_area_get_type (void) G_GNUC_CONST;
function gtk_cell_area_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_cell_area_get_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_add (GtkCellArea *area, GtkCellRenderer *renderer);
subroutine gtk_cell_area_add(area, renderer) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: area
  type(c_ptr), value :: renderer
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_remove (GtkCellArea *area, GtkCellRenderer *renderer);
subroutine gtk_cell_area_remove(area, renderer) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: area
  type(c_ptr), value :: renderer
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_cell_area_has_renderer (GtkCellArea *area, GtkCellRenderer *renderer);
function gtk_cell_area_has_renderer(area, renderer) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_cell_area_has_renderer
  type(c_ptr), value :: area
  type(c_ptr), value :: renderer
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_foreach (GtkCellArea *area, GtkCellCallback callback, gpointer callback_data);
subroutine gtk_cell_area_foreach(area, callback, callback_data) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: area
  type(c_funptr), value :: callback
  type(c_ptr), value :: callback_data
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_foreach_alloc (GtkCellArea *area, GtkCellAreaContext *context, GtkWidget *widget, const GdkRectangle *cell_area, const GdkRectangle *background_area, GtkCellAllocCallback callback, gpointer callback_data);
subroutine gtk_cell_area_foreach_alloc(area, context, widget, cell_area,&
& background_area, callback, callback_data) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: area
  type(c_ptr), value :: context
  type(c_ptr), value :: widget
  type(c_ptr), value :: cell_area
  type(c_ptr), value :: background_area
  type(c_funptr), value :: callback
  type(c_ptr), value :: callback_data
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_cell_area_event (GtkCellArea *area, GtkCellAreaContext *context, GtkWidget *widget, GdkEvent *event, const GdkRectangle *cell_area, GtkCellRendererState flags);
function gtk_cell_area_event(area, context, widget, event, cell_area, flags)&
& bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_cell_area_event
  type(c_ptr), value :: area
  type(c_ptr), value :: context
  type(c_ptr), value :: widget
  type(c_ptr), value :: event
  type(c_ptr), value :: cell_area
  integer(c_int), value :: flags
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_snapshot (GtkCellArea *area, GtkCellAreaContext *context, GtkWidget *widget, GtkSnapshot *snapshot, const GdkRectangle *background_area, const GdkRectangle *cell_area, GtkCellRendererState flags, gboolean paint_focus);
subroutine gtk_cell_area_snapshot(area, context, widget, snapshot,&
& background_area, cell_area, flags, paint_focus) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: area
  type(c_ptr), value :: context
  type(c_ptr), value :: widget
  type(c_ptr), value :: snapshot
  type(c_ptr), value :: background_area
  type(c_ptr), value :: cell_area
  integer(c_int), value :: flags
  integer(c_int), value :: paint_focus
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_get_cell_allocation (GtkCellArea *area, GtkCellAreaContext *context, GtkWidget *widget, GtkCellRenderer *renderer, const GdkRectangle *cell_area, GdkRectangle *allocation);
subroutine gtk_cell_area_get_cell_allocation(area, context, widget, renderer,&
& cell_area, allocation) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: area
  type(c_ptr), value :: context
  type(c_ptr), value :: widget
  type(c_ptr), value :: renderer
  type(c_ptr), value :: cell_area
  type(c_ptr), value :: allocation
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkCellRenderer *gtk_cell_area_get_cell_at_position (GtkCellArea *area, GtkCellAreaContext *context, GtkWidget *widget, const GdkRectangle *cell_area, gint x, gint y, GdkRectangle *alloc_area);
function gtk_cell_area_get_cell_at_position(area, context, widget, cell_area,&
& x, y, alloc_area) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_cell_area_get_cell_at_position
  type(c_ptr), value :: area
  type(c_ptr), value :: context
  type(c_ptr), value :: widget
  type(c_ptr), value :: cell_area
  integer(c_int), value :: x
  integer(c_int), value :: y
  type(c_ptr), value :: alloc_area
end function

! GDK_AVAILABLE_IN_ALL
!GtkCellAreaContext *gtk_cell_area_create_context (GtkCellArea *area);
function gtk_cell_area_create_context(area) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_area_create_context
  type(c_ptr), value :: area
end function

! GDK_AVAILABLE_IN_ALL
!GtkCellAreaContext *gtk_cell_area_copy_context (GtkCellArea *area, GtkCellAreaContext *context);
function gtk_cell_area_copy_context(area, context) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_area_copy_context
  type(c_ptr), value :: area
  type(c_ptr), value :: context
end function

! GDK_AVAILABLE_IN_ALL
!GtkSizeRequestMode gtk_cell_area_get_request_mode (GtkCellArea *area);
function gtk_cell_area_get_request_mode(area) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_cell_area_get_request_mode
  type(c_ptr), value :: area
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_get_preferred_width (GtkCellArea *area, GtkCellAreaContext *context, GtkWidget *widget, gint *minimum_width, gint *natural_width);
subroutine gtk_cell_area_get_preferred_width(area, context, widget,&
& minimum_width, natural_width) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: area
  type(c_ptr), value :: context
  type(c_ptr), value :: widget
  type(c_ptr), value :: minimum_width
  type(c_ptr), value :: natural_width
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_get_preferred_height_for_width (GtkCellArea *area, GtkCellAreaContext *context, GtkWidget *widget, gint width, gint *minimum_height, gint *natural_height);
subroutine gtk_cell_area_get_preferred_height_for_width(area, context, widget,&
& width, minimum_height, natural_height) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: area
  type(c_ptr), value :: context
  type(c_ptr), value :: widget
  integer(c_int), value :: width
  type(c_ptr), value :: minimum_height
  type(c_ptr), value :: natural_height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_get_preferred_height (GtkCellArea *area, GtkCellAreaContext *context, GtkWidget *widget, gint *minimum_height, gint *natural_height);
subroutine gtk_cell_area_get_preferred_height(area, context, widget,&
& minimum_height, natural_height) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: area
  type(c_ptr), value :: context
  type(c_ptr), value :: widget
  type(c_ptr), value :: minimum_height
  type(c_ptr), value :: natural_height
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_get_preferred_width_for_height (GtkCellArea *area, GtkCellAreaContext *context, GtkWidget *widget, gint height, gint *minimum_width, gint *natural_width);
subroutine gtk_cell_area_get_preferred_width_for_height(area, context, widget,&
& height, minimum_width, natural_width) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: area
  type(c_ptr), value :: context
  type(c_ptr), value :: widget
  integer(c_int), value :: height
  type(c_ptr), value :: minimum_width
  type(c_ptr), value :: natural_width
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_cell_area_get_current_path_string (GtkCellArea *area);
function gtk_cell_area_get_current_path_string(area) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_area_get_current_path_string
  type(c_ptr), value :: area
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_apply_attributes (GtkCellArea *area, GtkTreeModel *tree_model, GtkTreeIter *iter, gboolean is_expander, gboolean is_expanded);
subroutine gtk_cell_area_apply_attributes(area, tree_model, iter, is_expander,&
& is_expanded) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: area
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: iter
  integer(c_int), value :: is_expander
  integer(c_int), value :: is_expanded
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_attribute_connect (GtkCellArea *area, GtkCellRenderer *renderer, const gchar *attribute, gint column);
subroutine gtk_cell_area_attribute_connect(area, renderer, attribute, column)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int
  type(c_ptr), value :: area
  type(c_ptr), value :: renderer
  character(kind=c_char), dimension(*) :: attribute
  integer(c_int), value :: column
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_attribute_disconnect (GtkCellArea *area, GtkCellRenderer *renderer, const gchar *attribute);
subroutine gtk_cell_area_attribute_disconnect(area, renderer, attribute)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: area
  type(c_ptr), value :: renderer
  character(kind=c_char), dimension(*) :: attribute
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_cell_area_attribute_get_column (GtkCellArea *area, GtkCellRenderer *renderer, const gchar *attribute);
function gtk_cell_area_attribute_get_column(area, renderer, attribute) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_cell_area_attribute_get_column
  type(c_ptr), value :: area
  type(c_ptr), value :: renderer
  character(kind=c_char), dimension(*) :: attribute
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_class_install_cell_property (GtkCellAreaClass *aclass, guint property_id, GParamSpec *pspec);
subroutine gtk_cell_area_class_install_cell_property(aclass, property_id,&
& pspec) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: aclass
  integer(c_int), value :: property_id
  type(c_ptr), value :: pspec
end subroutine

! GDK_AVAILABLE_IN_ALL
!GParamSpec* gtk_cell_area_class_find_cell_property (GtkCellAreaClass *aclass, const gchar *property_name);
function gtk_cell_area_class_find_cell_property(aclass, property_name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_cell_area_class_find_cell_property
  type(c_ptr), value :: aclass
  character(kind=c_char), dimension(*) :: property_name
end function

! GDK_AVAILABLE_IN_ALL
!GParamSpec** gtk_cell_area_class_list_cell_properties (GtkCellAreaClass *aclass, guint *n_properties);
function gtk_cell_area_class_list_cell_properties(aclass, n_properties) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_area_class_list_cell_properties
  type(c_ptr), value :: aclass
  type(c_ptr), value :: n_properties
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_cell_set_valist (GtkCellArea *area, GtkCellRenderer *renderer, const gchar *first_property_name, va_list var_args);
subroutine gtk_cell_area_cell_set_valist(area, renderer, first_property_name,&
& var_args) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: area
  type(c_ptr), value :: renderer
  character(kind=c_char), dimension(*) :: first_property_name
  type(c_ptr), value :: var_args
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_cell_get_valist (GtkCellArea *area, GtkCellRenderer *renderer, const gchar *first_property_name, va_list var_args);
subroutine gtk_cell_area_cell_get_valist(area, renderer, first_property_name,&
& var_args) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: area
  type(c_ptr), value :: renderer
  character(kind=c_char), dimension(*) :: first_property_name
  type(c_ptr), value :: var_args
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_cell_set_property (GtkCellArea *area, GtkCellRenderer *renderer, const gchar *property_name, const GValue *value);
subroutine gtk_cell_area_cell_set_property(area, renderer, property_name,&
& value) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: area
  type(c_ptr), value :: renderer
  character(kind=c_char), dimension(*) :: property_name
  type(c_ptr), value :: value
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_cell_get_property (GtkCellArea *area, GtkCellRenderer *renderer, const gchar *property_name, GValue *value);
subroutine gtk_cell_area_cell_get_property(area, renderer, property_name,&
& value) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: area
  type(c_ptr), value :: renderer
  character(kind=c_char), dimension(*) :: property_name
  type(c_ptr), value :: value
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_cell_area_is_activatable (GtkCellArea *area);
function gtk_cell_area_is_activatable(area) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_cell_area_is_activatable
  type(c_ptr), value :: area
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_cell_area_activate (GtkCellArea *area, GtkCellAreaContext *context, GtkWidget *widget, const GdkRectangle *cell_area, GtkCellRendererState flags, gboolean edit_only);
function gtk_cell_area_activate(area, context, widget, cell_area, flags,&
& edit_only) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_cell_area_activate
  type(c_ptr), value :: area
  type(c_ptr), value :: context
  type(c_ptr), value :: widget
  type(c_ptr), value :: cell_area
  integer(c_int), value :: flags
  integer(c_int), value :: edit_only
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_cell_area_focus (GtkCellArea *area, GtkDirectionType direction);
function gtk_cell_area_focus(area, direction) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_cell_area_focus
  type(c_ptr), value :: area
  integer(c_int), value :: direction
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_set_focus_cell (GtkCellArea *area, GtkCellRenderer *renderer);
subroutine gtk_cell_area_set_focus_cell(area, renderer) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: area
  type(c_ptr), value :: renderer
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkCellRenderer *gtk_cell_area_get_focus_cell (GtkCellArea *area);
function gtk_cell_area_get_focus_cell(area) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_area_get_focus_cell
  type(c_ptr), value :: area
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_add_focus_sibling (GtkCellArea *area, GtkCellRenderer *renderer, GtkCellRenderer *sibling);
subroutine gtk_cell_area_add_focus_sibling(area, renderer, sibling) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: area
  type(c_ptr), value :: renderer
  type(c_ptr), value :: sibling
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_remove_focus_sibling (GtkCellArea *area, GtkCellRenderer *renderer, GtkCellRenderer *sibling);
subroutine gtk_cell_area_remove_focus_sibling(area, renderer, sibling) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: area
  type(c_ptr), value :: renderer
  type(c_ptr), value :: sibling
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_cell_area_is_focus_sibling (GtkCellArea *area, GtkCellRenderer *renderer, GtkCellRenderer *sibling);
function gtk_cell_area_is_focus_sibling(area, renderer, sibling) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_cell_area_is_focus_sibling
  type(c_ptr), value :: area
  type(c_ptr), value :: renderer
  type(c_ptr), value :: sibling
end function

! GDK_AVAILABLE_IN_ALL
!const GList * gtk_cell_area_get_focus_siblings (GtkCellArea *area, GtkCellRenderer *renderer);
function gtk_cell_area_get_focus_siblings(area, renderer) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_area_get_focus_siblings
  type(c_ptr), value :: area
  type(c_ptr), value :: renderer
end function

! GDK_AVAILABLE_IN_ALL
!GtkCellRenderer *gtk_cell_area_get_focus_from_sibling (GtkCellArea *area, GtkCellRenderer *renderer);
function gtk_cell_area_get_focus_from_sibling(area, renderer) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_area_get_focus_from_sibling
  type(c_ptr), value :: area
  type(c_ptr), value :: renderer
end function

! GDK_AVAILABLE_IN_ALL
!GtkCellRenderer *gtk_cell_area_get_edited_cell (GtkCellArea *area);
function gtk_cell_area_get_edited_cell(area) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_area_get_edited_cell
  type(c_ptr), value :: area
end function

! GDK_AVAILABLE_IN_ALL
!GtkCellEditable *gtk_cell_area_get_edit_widget (GtkCellArea *area);
function gtk_cell_area_get_edit_widget(area) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_area_get_edit_widget
  type(c_ptr), value :: area
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_cell_area_activate_cell (GtkCellArea *area, GtkWidget *widget, GtkCellRenderer *renderer, GdkEvent *event, const GdkRectangle *cell_area, GtkCellRendererState flags);
function gtk_cell_area_activate_cell(area, widget, renderer, event, cell_area,&
& flags) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_cell_area_activate_cell
  type(c_ptr), value :: area
  type(c_ptr), value :: widget
  type(c_ptr), value :: renderer
  type(c_ptr), value :: event
  type(c_ptr), value :: cell_area
  integer(c_int), value :: flags
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_stop_editing (GtkCellArea *area, gboolean canceled);
subroutine gtk_cell_area_stop_editing(area, canceled) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: area
  integer(c_int), value :: canceled
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_inner_cell_area (GtkCellArea *area, GtkWidget *widget, const GdkRectangle *cell_area, GdkRectangle *inner_area);
subroutine gtk_cell_area_inner_cell_area(area, widget, cell_area, inner_area)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: area
  type(c_ptr), value :: widget
  type(c_ptr), value :: cell_area
  type(c_ptr), value :: inner_area
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_area_request_renderer (GtkCellArea *area, GtkCellRenderer *renderer, GtkOrientation orientation, GtkWidget *widget, gint for_size, gint *minimum_size, gint *natural_size);
subroutine gtk_cell_area_request_renderer(area, renderer, orientation, widget,&
& for_size, minimum_size, natural_size) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: area
  type(c_ptr), value :: renderer
  integer(c_int), value :: orientation
  type(c_ptr), value :: widget
  integer(c_int), value :: for_size
  type(c_ptr), value :: minimum_size
  type(c_ptr), value :: natural_size
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkConstraint * gtk_constraint_new_constant (gpointer target, GtkConstraintAttribute target_attribute, GtkConstraintRelation relation, double constant, int strength);
function gtk_constraint_new_constant(target, target_attribute, relation,&
& constant, strength) bind(c)
  use iso_c_binding, only: c_ptr, c_int, c_double
  type(c_ptr) :: gtk_constraint_new_constant
  type(c_ptr), value :: target
  integer(c_int), value :: target_attribute
  integer(c_int), value :: relation
  real(c_double), value :: constant
  integer(c_int), value :: strength
end function

! GDK_AVAILABLE_IN_ALL
!GtkConstraintTarget * gtk_constraint_get_target (GtkConstraint *constraint);
function gtk_constraint_get_target(constraint) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_constraint_get_target
  type(c_ptr), value :: constraint
end function

! GDK_AVAILABLE_IN_ALL
!GtkConstraintAttribute gtk_constraint_get_target_attribute (GtkConstraint *constraint);
function gtk_constraint_get_target_attribute(constraint) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_constraint_get_target_attribute
  type(c_ptr), value :: constraint
end function

! GDK_AVAILABLE_IN_ALL
!GtkConstraintTarget * gtk_constraint_get_source (GtkConstraint *constraint);
function gtk_constraint_get_source(constraint) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_constraint_get_source
  type(c_ptr), value :: constraint
end function

! GDK_AVAILABLE_IN_ALL
!GtkConstraintAttribute gtk_constraint_get_source_attribute (GtkConstraint *constraint);
function gtk_constraint_get_source_attribute(constraint) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_constraint_get_source_attribute
  type(c_ptr), value :: constraint
end function

! GDK_AVAILABLE_IN_ALL
!GtkConstraintRelation gtk_constraint_get_relation (GtkConstraint *constraint);
function gtk_constraint_get_relation(constraint) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_constraint_get_relation
  type(c_ptr), value :: constraint
end function

! GDK_AVAILABLE_IN_ALL
!double gtk_constraint_get_multiplier (GtkConstraint *constraint);
function gtk_constraint_get_multiplier(constraint) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_constraint_get_multiplier
  type(c_ptr), value :: constraint
end function

! GDK_AVAILABLE_IN_ALL
!double gtk_constraint_get_constant (GtkConstraint *constraint);
function gtk_constraint_get_constant(constraint) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_constraint_get_constant
  type(c_ptr), value :: constraint
end function

! GDK_AVAILABLE_IN_ALL
!int gtk_constraint_get_strength (GtkConstraint *constraint);
function gtk_constraint_get_strength(constraint) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_constraint_get_strength
  type(c_ptr), value :: constraint
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_constraint_is_required (GtkConstraint *constraint);
function gtk_constraint_is_required(constraint) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_constraint_is_required
  type(c_ptr), value :: constraint
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_constraint_is_attached (GtkConstraint *constraint);
function gtk_constraint_is_attached(constraint) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_constraint_is_attached
  type(c_ptr), value :: constraint
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_constraint_is_constant (GtkConstraint *constraint);
function gtk_constraint_is_constant(constraint) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_constraint_is_constant
  type(c_ptr), value :: constraint
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_paper_size_get_type (void) G_GNUC_CONST;
function gtk_paper_size_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_paper_size_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkPaperSize *gtk_paper_size_new (const gchar *name);
function gtk_paper_size_new(name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_paper_size_new
  character(kind=c_char), dimension(*) :: name
end function

! GDK_AVAILABLE_IN_ALL
!GtkPaperSize *gtk_paper_size_new_from_ppd (const gchar *ppd_name, const gchar *ppd_display_name, gdouble width, gdouble height);
function gtk_paper_size_new_from_ppd(ppd_name, ppd_display_name, width, height)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_double
  type(c_ptr) :: gtk_paper_size_new_from_ppd
  character(kind=c_char), dimension(*) :: ppd_name
  character(kind=c_char), dimension(*) :: ppd_display_name
  real(c_double), value :: width
  real(c_double), value :: height
end function

! GDK_AVAILABLE_IN_ALL
!GtkPaperSize *gtk_paper_size_new_from_ipp (const gchar *ipp_name, gdouble width, gdouble height);
function gtk_paper_size_new_from_ipp(ipp_name, width, height) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_double
  type(c_ptr) :: gtk_paper_size_new_from_ipp
  character(kind=c_char), dimension(*) :: ipp_name
  real(c_double), value :: width
  real(c_double), value :: height
end function

! GDK_AVAILABLE_IN_ALL
!GtkPaperSize *gtk_paper_size_new_custom (const gchar *name, const gchar *display_name, gdouble width, gdouble height, GtkUnit unit);
function gtk_paper_size_new_custom(name, display_name, width, height, unit)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_double, c_int
  type(c_ptr) :: gtk_paper_size_new_custom
  character(kind=c_char), dimension(*) :: name
  character(kind=c_char), dimension(*) :: display_name
  real(c_double), value :: width
  real(c_double), value :: height
  integer(c_int), value :: unit
end function

! GDK_AVAILABLE_IN_ALL
!GtkPaperSize *gtk_paper_size_copy (GtkPaperSize *other);
function gtk_paper_size_copy(other) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_paper_size_copy
  type(c_ptr), value :: other
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_paper_size_free (GtkPaperSize *size);
subroutine gtk_paper_size_free(size) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: size
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_paper_size_is_equal (GtkPaperSize *size1, GtkPaperSize *size2);
function gtk_paper_size_is_equal(size1, size2) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_paper_size_is_equal
  type(c_ptr), value :: size1
  type(c_ptr), value :: size2
end function

! GDK_AVAILABLE_IN_ALL
!GList *gtk_paper_size_get_paper_sizes (gboolean include_custom);
function gtk_paper_size_get_paper_sizes(include_custom) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_paper_size_get_paper_sizes
  integer(c_int), value :: include_custom
end function

! GDK_AVAILABLE_IN_ALL
!const gchar *gtk_paper_size_get_name (GtkPaperSize *size);
function gtk_paper_size_get_name(size) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_paper_size_get_name
  type(c_ptr), value :: size
end function

! GDK_AVAILABLE_IN_ALL
!const gchar *gtk_paper_size_get_display_name (GtkPaperSize *size);
function gtk_paper_size_get_display_name(size) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_paper_size_get_display_name
  type(c_ptr), value :: size
end function

! GDK_AVAILABLE_IN_ALL
!const gchar *gtk_paper_size_get_ppd_name (GtkPaperSize *size);
function gtk_paper_size_get_ppd_name(size) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_paper_size_get_ppd_name
  type(c_ptr), value :: size
end function

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_paper_size_get_width (GtkPaperSize *size, GtkUnit unit);
function gtk_paper_size_get_width(size, unit) bind(c)
  use iso_c_binding, only: c_double, c_ptr, c_int
  real(c_double) :: gtk_paper_size_get_width
  type(c_ptr), value :: size
  integer(c_int), value :: unit
end function

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_paper_size_get_height (GtkPaperSize *size, GtkUnit unit);
function gtk_paper_size_get_height(size, unit) bind(c)
  use iso_c_binding, only: c_double, c_ptr, c_int
  real(c_double) :: gtk_paper_size_get_height
  type(c_ptr), value :: size
  integer(c_int), value :: unit
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_paper_size_is_custom (GtkPaperSize *size);
function gtk_paper_size_is_custom(size) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_paper_size_is_custom
  type(c_ptr), value :: size
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_paper_size_is_ipp (GtkPaperSize *size);
function gtk_paper_size_is_ipp(size) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_paper_size_is_ipp
  type(c_ptr), value :: size
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_paper_size_set_size (GtkPaperSize *size, gdouble width, gdouble height, GtkUnit unit);
subroutine gtk_paper_size_set_size(size, width, height, unit) bind(c)
  use iso_c_binding, only: c_ptr, c_double, c_int
  type(c_ptr), value :: size
  real(c_double), value :: width
  real(c_double), value :: height
  integer(c_int), value :: unit
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_paper_size_get_default_top_margin (GtkPaperSize *size, GtkUnit unit);
function gtk_paper_size_get_default_top_margin(size, unit) bind(c)
  use iso_c_binding, only: c_double, c_ptr, c_int
  real(c_double) :: gtk_paper_size_get_default_top_margin
  type(c_ptr), value :: size
  integer(c_int), value :: unit
end function

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_paper_size_get_default_bottom_margin (GtkPaperSize *size, GtkUnit unit);
function gtk_paper_size_get_default_bottom_margin(size, unit) bind(c)
  use iso_c_binding, only: c_double, c_ptr, c_int
  real(c_double) :: gtk_paper_size_get_default_bottom_margin
  type(c_ptr), value :: size
  integer(c_int), value :: unit
end function

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_paper_size_get_default_left_margin (GtkPaperSize *size, GtkUnit unit);
function gtk_paper_size_get_default_left_margin(size, unit) bind(c)
  use iso_c_binding, only: c_double, c_ptr, c_int
  real(c_double) :: gtk_paper_size_get_default_left_margin
  type(c_ptr), value :: size
  integer(c_int), value :: unit
end function

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_paper_size_get_default_right_margin (GtkPaperSize *size, GtkUnit unit);
function gtk_paper_size_get_default_right_margin(size, unit) bind(c)
  use iso_c_binding, only: c_double, c_ptr, c_int
  real(c_double) :: gtk_paper_size_get_default_right_margin
  type(c_ptr), value :: size
  integer(c_int), value :: unit
end function

! GDK_AVAILABLE_IN_ALL
!const gchar *gtk_paper_size_get_default (void);
function gtk_paper_size_get_default() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_paper_size_get_default
end function

! GDK_AVAILABLE_IN_ALL
!GtkPaperSize *gtk_paper_size_new_from_key_file (GKeyFile *key_file, const gchar *group_name, GError **error);
function gtk_paper_size_new_from_key_file(key_file, group_name, error) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_paper_size_new_from_key_file
  type(c_ptr), value :: key_file
  character(kind=c_char), dimension(*) :: group_name
  type(c_ptr), value :: error
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_paper_size_to_key_file (GtkPaperSize *size, GKeyFile *key_file, const gchar *group_name);
subroutine gtk_paper_size_to_key_file(size, key_file, group_name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: size
  type(c_ptr), value :: key_file
  character(kind=c_char), dimension(*) :: group_name
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkPaperSize *gtk_paper_size_new_from_gvariant (GVariant *variant);
function gtk_paper_size_new_from_gvariant(variant) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_paper_size_new_from_gvariant
  type(c_ptr), value :: variant
end function

! GDK_AVAILABLE_IN_ALL
!GVariant *gtk_paper_size_to_gvariant (GtkPaperSize *paper_size);
function gtk_paper_size_to_gvariant(paper_size) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_paper_size_to_gvariant
  type(c_ptr), value :: paper_size
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_shortcut_label_get_type (void) G_GNUC_CONST;
function gtk_shortcut_label_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_shortcut_label_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_shortcut_label_new (const gchar *accelerator);
function gtk_shortcut_label_new(accelerator) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_shortcut_label_new
  character(kind=c_char), dimension(*) :: accelerator
end function

! GDK_AVAILABLE_IN_ALL
!const gchar *gtk_shortcut_label_get_accelerator (GtkShortcutLabel *self);
function gtk_shortcut_label_get_accelerator(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_shortcut_label_get_accelerator
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_shortcut_label_set_accelerator (GtkShortcutLabel *self, const gchar *accelerator);
subroutine gtk_shortcut_label_set_accelerator(self, accelerator) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: accelerator
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar *gtk_shortcut_label_get_disabled_text (GtkShortcutLabel *self);
function gtk_shortcut_label_get_disabled_text(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_shortcut_label_get_disabled_text
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_shortcut_label_set_disabled_text (GtkShortcutLabel *self, const gchar *disabled_text);
subroutine gtk_shortcut_label_set_disabled_text(self, disabled_text) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: disabled_text
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_dialog_get_type (void) G_GNUC_CONST;
function gtk_dialog_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_dialog_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_dialog_new (void);
function gtk_dialog_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_dialog_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_dialog_add_action_widget (GtkDialog *dialog, GtkWidget *child, gint response_id);
subroutine gtk_dialog_add_action_widget(dialog, child, response_id) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: dialog
  type(c_ptr), value :: child
  integer(c_int), value :: response_id
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_dialog_add_button (GtkDialog *dialog, const gchar *button_text, gint response_id);
function gtk_dialog_add_button(dialog, button_text, response_id) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int
  type(c_ptr) :: gtk_dialog_add_button
  type(c_ptr), value :: dialog
  character(kind=c_char), dimension(*) :: button_text
  integer(c_int), value :: response_id
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_dialog_set_response_sensitive (GtkDialog *dialog, gint response_id, gboolean setting);
subroutine gtk_dialog_set_response_sensitive(dialog, response_id, setting)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: dialog
  integer(c_int), value :: response_id
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_dialog_set_default_response (GtkDialog *dialog, gint response_id);
subroutine gtk_dialog_set_default_response(dialog, response_id) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: dialog
  integer(c_int), value :: response_id
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_dialog_get_widget_for_response (GtkDialog *dialog, gint response_id);
function gtk_dialog_get_widget_for_response(dialog, response_id) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_dialog_get_widget_for_response
  type(c_ptr), value :: dialog
  integer(c_int), value :: response_id
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_dialog_get_response_for_widget (GtkDialog *dialog, GtkWidget *widget);
function gtk_dialog_get_response_for_widget(dialog, widget) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_dialog_get_response_for_widget
  type(c_ptr), value :: dialog
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_dialog_response (GtkDialog *dialog, gint response_id);
subroutine gtk_dialog_response(dialog, response_id) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: dialog
  integer(c_int), value :: response_id
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_dialog_run (GtkDialog *dialog);
function gtk_dialog_run(dialog) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_dialog_run
  type(c_ptr), value :: dialog
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_dialog_get_content_area (GtkDialog *dialog);
function gtk_dialog_get_content_area(dialog) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_dialog_get_content_area
  type(c_ptr), value :: dialog
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_dialog_get_header_bar (GtkDialog *dialog);
function gtk_dialog_get_header_bar(dialog) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_dialog_get_header_bar
  type(c_ptr), value :: dialog
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_application_window_get_type (void) G_GNUC_CONST;
function gtk_application_window_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_application_window_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_application_window_new (GtkApplication *application);
function gtk_application_window_new(application) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_application_window_new
  type(c_ptr), value :: application
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_application_window_set_show_menubar (GtkApplicationWindow *window, gboolean show_menubar);
subroutine gtk_application_window_set_show_menubar(window, show_menubar)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: window
  integer(c_int), value :: show_menubar
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_application_window_get_show_menubar (GtkApplicationWindow *window);
function gtk_application_window_get_show_menubar(window) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_application_window_get_show_menubar
  type(c_ptr), value :: window
end function

! GDK_AVAILABLE_IN_ALL
!guint gtk_application_window_get_id (GtkApplicationWindow *window);
function gtk_application_window_get_id(window) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_application_window_get_id
  type(c_ptr), value :: window
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_application_window_set_help_overlay (GtkApplicationWindow *window, GtkShortcutsWindow *help_overlay);
subroutine gtk_application_window_set_help_overlay(window, help_overlay)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: window
  type(c_ptr), value :: help_overlay
end subroutine

! 
!GtkShortcutsWindow * gtk_application_window_get_help_overlay (GtkApplicationWindow *window);
function gtk_application_window_get_help_overlay(window) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_application_window_get_help_overlay
  type(c_ptr), value :: window
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_gesture_click_get_type (void) G_GNUC_CONST;
function gtk_gesture_click_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_gesture_click_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkGesture * gtk_gesture_click_new (void);
function gtk_gesture_click_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_gesture_click_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_gesture_click_set_area (GtkGestureClick *gesture, const GdkRectangle *rect);
subroutine gtk_gesture_click_set_area(gesture, rect) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: gesture
  type(c_ptr), value :: rect
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_gesture_click_get_area (GtkGestureClick *gesture, GdkRectangle *rect);
function gtk_gesture_click_get_area(gesture, rect) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_gesture_click_get_area
  type(c_ptr), value :: gesture
  type(c_ptr), value :: rect
end function

! GDK_AVAILABLE_IN_ALL
!GtkMediaStream * gtk_media_file_new_for_filename (const char *filename);
function gtk_media_file_new_for_filename(filename) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_media_file_new_for_filename
  character(kind=c_char), dimension(*) :: filename
end function

! GDK_AVAILABLE_IN_ALL
!GtkMediaStream * gtk_media_file_new_for_resource (const char *resource_path);
function gtk_media_file_new_for_resource(resource_path) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_media_file_new_for_resource
  character(kind=c_char), dimension(*) :: resource_path
end function

! GDK_AVAILABLE_IN_ALL
!GtkMediaStream * gtk_media_file_new_for_file (GFile *file);
function gtk_media_file_new_for_file(file) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_media_file_new_for_file
  type(c_ptr), value :: file
end function

! GDK_AVAILABLE_IN_ALL
!GtkMediaStream * gtk_media_file_new_for_input_stream (GInputStream *stream);
function gtk_media_file_new_for_input_stream(stream) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_media_file_new_for_input_stream
  type(c_ptr), value :: stream
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_media_file_clear (GtkMediaFile *self);
subroutine gtk_media_file_clear(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_media_file_set_filename (GtkMediaFile *self, const char *filename);
subroutine gtk_media_file_set_filename(self, filename) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: filename
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_media_file_set_resource (GtkMediaFile *self, const char *resource_path);
subroutine gtk_media_file_set_resource(self, resource_path) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: resource_path
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_media_file_set_file (GtkMediaFile *self, GFile *file);
subroutine gtk_media_file_set_file(self, file) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: file
end subroutine

! GDK_AVAILABLE_IN_ALL
!GFile * gtk_media_file_get_file (GtkMediaFile *self);
function gtk_media_file_get_file(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_media_file_get_file
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_media_file_set_input_stream (GtkMediaFile *self, GInputStream *stream);
subroutine gtk_media_file_set_input_stream(self, stream) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: stream
end subroutine

! GDK_AVAILABLE_IN_ALL
!GInputStream * gtk_media_file_get_input_stream (GtkMediaFile *self);
function gtk_media_file_get_input_stream(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_media_file_get_input_stream
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!const GError * gtk_media_stream_get_error (GtkMediaStream *self);
function gtk_media_stream_get_error(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_media_stream_get_error
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_media_stream_has_audio (GtkMediaStream *self);
function gtk_media_stream_has_audio(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_media_stream_has_audio
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_media_stream_has_video (GtkMediaStream *self);
function gtk_media_stream_has_video(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_media_stream_has_video
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_media_stream_play (GtkMediaStream *self);
subroutine gtk_media_stream_play(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_media_stream_pause (GtkMediaStream *self);
subroutine gtk_media_stream_pause(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_media_stream_get_playing (GtkMediaStream *self);
function gtk_media_stream_get_playing(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_media_stream_get_playing
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_media_stream_set_playing (GtkMediaStream *self, gboolean playing);
subroutine gtk_media_stream_set_playing(self, playing) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: playing
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_media_stream_get_ended (GtkMediaStream *self);
function gtk_media_stream_get_ended(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_media_stream_get_ended
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!gint64 gtk_media_stream_get_timestamp (GtkMediaStream *self);
function gtk_media_stream_get_timestamp(self) bind(c)
  use iso_c_binding, only: c_int64_t, c_ptr
  integer(c_int64_t) :: gtk_media_stream_get_timestamp
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!gint64 gtk_media_stream_get_duration (GtkMediaStream *self);
function gtk_media_stream_get_duration(self) bind(c)
  use iso_c_binding, only: c_int64_t, c_ptr
  integer(c_int64_t) :: gtk_media_stream_get_duration
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_media_stream_is_seekable (GtkMediaStream *self);
function gtk_media_stream_is_seekable(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_media_stream_is_seekable
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_media_stream_is_seeking (GtkMediaStream *self);
function gtk_media_stream_is_seeking(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_media_stream_is_seeking
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_media_stream_seek (GtkMediaStream *self, gint64 timestamp);
subroutine gtk_media_stream_seek(self, timestamp) bind(c)
  use iso_c_binding, only: c_ptr, c_int64_t
  type(c_ptr), value :: self
  integer(c_int64_t), value :: timestamp
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_media_stream_get_loop (GtkMediaStream *self);
function gtk_media_stream_get_loop(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_media_stream_get_loop
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_media_stream_set_loop (GtkMediaStream *self, gboolean loop);
subroutine gtk_media_stream_set_loop(self, loop) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: loop
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_media_stream_get_muted (GtkMediaStream *self);
function gtk_media_stream_get_muted(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_media_stream_get_muted
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_media_stream_set_muted (GtkMediaStream *self, gboolean muted);
subroutine gtk_media_stream_set_muted(self, muted) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: muted
end subroutine

! GDK_AVAILABLE_IN_ALL
!double gtk_media_stream_get_volume (GtkMediaStream *self);
function gtk_media_stream_get_volume(self) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_media_stream_get_volume
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_media_stream_set_volume (GtkMediaStream *self, double volume);
subroutine gtk_media_stream_set_volume(self, volume) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: self
  real(c_double), value :: volume
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_media_stream_realize (GtkMediaStream *self, GdkSurface *surface);
subroutine gtk_media_stream_realize(self, surface) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: surface
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_media_stream_unrealize (GtkMediaStream *self, GdkSurface *surface);
subroutine gtk_media_stream_unrealize(self, surface) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: surface
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_media_stream_prepared (GtkMediaStream *self, gboolean has_audio, gboolean has_video, gboolean seekable, gint64 duration);
subroutine gtk_media_stream_prepared(self, has_audio, has_video, seekable,&
& duration) bind(c)
  use iso_c_binding, only: c_ptr, c_int, c_int64_t
  type(c_ptr), value :: self
  integer(c_int), value :: has_audio
  integer(c_int), value :: has_video
  integer(c_int), value :: seekable
  integer(c_int64_t), value :: duration
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_media_stream_unprepared (GtkMediaStream *self);
subroutine gtk_media_stream_unprepared(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_media_stream_update (GtkMediaStream *self, gint64 timestamp);
subroutine gtk_media_stream_update(self, timestamp) bind(c)
  use iso_c_binding, only: c_ptr, c_int64_t
  type(c_ptr), value :: self
  integer(c_int64_t), value :: timestamp
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_media_stream_ended (GtkMediaStream *self);
subroutine gtk_media_stream_ended(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_media_stream_seek_success (GtkMediaStream *self);
subroutine gtk_media_stream_seek_success(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_media_stream_seek_failed (GtkMediaStream *self);
subroutine gtk_media_stream_seek_failed(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_media_stream_gerror (GtkMediaStream *self, GError *error);
subroutine gtk_media_stream_gerror(self, error) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: error
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_media_stream_error_valist (GtkMediaStream *self, GQuark domain, gint code, const gchar *format, va_list args) G_GNUC_PRINTF (4, 0);
subroutine gtk_media_stream_error_valist(self, domain, code, format, args)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int32_t, c_int, c_char
  type(c_ptr), value :: self
  integer(c_int32_t), value :: domain
  integer(c_int), value :: code
  character(kind=c_char), dimension(*) :: format
  type(c_ptr), value :: args
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_assistant_page_get_type (void) G_GNUC_CONST;
function gtk_assistant_page_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_assistant_page_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_assistant_get_type (void) G_GNUC_CONST;
function gtk_assistant_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_assistant_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_assistant_new (void);
function gtk_assistant_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_assistant_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_assistant_next_page (GtkAssistant *assistant);
subroutine gtk_assistant_next_page(assistant) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: assistant
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_assistant_previous_page (GtkAssistant *assistant);
subroutine gtk_assistant_previous_page(assistant) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: assistant
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_assistant_get_current_page (GtkAssistant *assistant);
function gtk_assistant_get_current_page(assistant) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_assistant_get_current_page
  type(c_ptr), value :: assistant
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_assistant_set_current_page (GtkAssistant *assistant, gint page_num);
subroutine gtk_assistant_set_current_page(assistant, page_num) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: assistant
  integer(c_int), value :: page_num
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_assistant_get_n_pages (GtkAssistant *assistant);
function gtk_assistant_get_n_pages(assistant) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_assistant_get_n_pages
  type(c_ptr), value :: assistant
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_assistant_get_nth_page (GtkAssistant *assistant, gint page_num);
function gtk_assistant_get_nth_page(assistant, page_num) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_assistant_get_nth_page
  type(c_ptr), value :: assistant
  integer(c_int), value :: page_num
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_assistant_prepend_page (GtkAssistant *assistant, GtkWidget *page);
function gtk_assistant_prepend_page(assistant, page) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_assistant_prepend_page
  type(c_ptr), value :: assistant
  type(c_ptr), value :: page
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_assistant_append_page (GtkAssistant *assistant, GtkWidget *page);
function gtk_assistant_append_page(assistant, page) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_assistant_append_page
  type(c_ptr), value :: assistant
  type(c_ptr), value :: page
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_assistant_insert_page (GtkAssistant *assistant, GtkWidget *page, gint position);
function gtk_assistant_insert_page(assistant, page, position) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_assistant_insert_page
  type(c_ptr), value :: assistant
  type(c_ptr), value :: page
  integer(c_int), value :: position
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_assistant_remove_page (GtkAssistant *assistant, gint page_num);
subroutine gtk_assistant_remove_page(assistant, page_num) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: assistant
  integer(c_int), value :: page_num
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_assistant_set_forward_page_func (GtkAssistant *assistant, GtkAssistantPageFunc page_func, gpointer data, GDestroyNotify destroy);
subroutine gtk_assistant_set_forward_page_func(assistant, page_func, data,&
& destroy) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: assistant
  type(c_funptr), value :: page_func
  type(c_ptr), value :: data
  type(c_funptr), value :: destroy
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_assistant_set_page_type (GtkAssistant *assistant, GtkWidget *page, GtkAssistantPageType type);
subroutine gtk_assistant_set_page_type(assistant, page, type) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: assistant
  type(c_ptr), value :: page
  integer(c_int), value :: type
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkAssistantPageType gtk_assistant_get_page_type (GtkAssistant *assistant, GtkWidget *page);
function gtk_assistant_get_page_type(assistant, page) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_assistant_get_page_type
  type(c_ptr), value :: assistant
  type(c_ptr), value :: page
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_assistant_set_page_title (GtkAssistant *assistant, GtkWidget *page, const gchar *title);
subroutine gtk_assistant_set_page_title(assistant, page, title) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: assistant
  type(c_ptr), value :: page
  character(kind=c_char), dimension(*) :: title
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_assistant_get_page_title (GtkAssistant *assistant, GtkWidget *page);
function gtk_assistant_get_page_title(assistant, page) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_assistant_get_page_title
  type(c_ptr), value :: assistant
  type(c_ptr), value :: page
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_assistant_set_page_complete (GtkAssistant *assistant, GtkWidget *page, gboolean complete);
subroutine gtk_assistant_set_page_complete(assistant, page, complete) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: assistant
  type(c_ptr), value :: page
  integer(c_int), value :: complete
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_assistant_get_page_complete (GtkAssistant *assistant, GtkWidget *page);
function gtk_assistant_get_page_complete(assistant, page) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_assistant_get_page_complete
  type(c_ptr), value :: assistant
  type(c_ptr), value :: page
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_assistant_add_action_widget (GtkAssistant *assistant, GtkWidget *child);
subroutine gtk_assistant_add_action_widget(assistant, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: assistant
  type(c_ptr), value :: child
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_assistant_remove_action_widget (GtkAssistant *assistant, GtkWidget *child);
subroutine gtk_assistant_remove_action_widget(assistant, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: assistant
  type(c_ptr), value :: child
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_assistant_update_buttons_state (GtkAssistant *assistant);
subroutine gtk_assistant_update_buttons_state(assistant) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: assistant
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_assistant_commit (GtkAssistant *assistant);
subroutine gtk_assistant_commit(assistant) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: assistant
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkAssistantPage * gtk_assistant_get_page (GtkAssistant *assistant, GtkWidget *child);
function gtk_assistant_get_page(assistant, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_assistant_get_page
  type(c_ptr), value :: assistant
  type(c_ptr), value :: child
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_assistant_page_get_child (GtkAssistantPage *page);
function gtk_assistant_page_get_child(page) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_assistant_page_get_child
  type(c_ptr), value :: page
end function

! GDK_AVAILABLE_IN_ALL
!GListModel * gtk_assistant_get_pages (GtkAssistant *assistant);
function gtk_assistant_get_pages(assistant) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_assistant_get_pages
  type(c_ptr), value :: assistant
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_im_multicontext_get_type (void) G_GNUC_CONST;
function gtk_im_multicontext_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_im_multicontext_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkIMContext *gtk_im_multicontext_new (void);
function gtk_im_multicontext_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_im_multicontext_new
end function

! GDK_AVAILABLE_IN_ALL
!const char * gtk_im_multicontext_get_context_id (GtkIMMulticontext *context);
function gtk_im_multicontext_get_context_id(context) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_im_multicontext_get_context_id
  type(c_ptr), value :: context
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_im_multicontext_set_context_id (GtkIMMulticontext *context, const char *context_id);
subroutine gtk_im_multicontext_set_context_id(context, context_id) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: context
  character(kind=c_char), dimension(*) :: context_id
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_cell_layout_get_type (void) G_GNUC_CONST;
function gtk_cell_layout_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_cell_layout_get_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_layout_pack_start (GtkCellLayout *cell_layout, GtkCellRenderer *cell, gboolean expand);
subroutine gtk_cell_layout_pack_start(cell_layout, cell, expand) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: cell_layout
  type(c_ptr), value :: cell
  integer(c_int), value :: expand
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_layout_pack_end (GtkCellLayout *cell_layout, GtkCellRenderer *cell, gboolean expand);
subroutine gtk_cell_layout_pack_end(cell_layout, cell, expand) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: cell_layout
  type(c_ptr), value :: cell
  integer(c_int), value :: expand
end subroutine

! GDK_AVAILABLE_IN_ALL
!GList *gtk_cell_layout_get_cells (GtkCellLayout *cell_layout);
function gtk_cell_layout_get_cells(cell_layout) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_layout_get_cells
  type(c_ptr), value :: cell_layout
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_layout_clear (GtkCellLayout *cell_layout);
subroutine gtk_cell_layout_clear(cell_layout) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: cell_layout
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_layout_add_attribute (GtkCellLayout *cell_layout, GtkCellRenderer *cell, const gchar *attribute, gint column);
subroutine gtk_cell_layout_add_attribute(cell_layout, cell, attribute, column)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int
  type(c_ptr), value :: cell_layout
  type(c_ptr), value :: cell
  character(kind=c_char), dimension(*) :: attribute
  integer(c_int), value :: column
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_layout_set_cell_data_func (GtkCellLayout *cell_layout, GtkCellRenderer *cell, GtkCellLayoutDataFunc func, gpointer func_data, GDestroyNotify destroy);
subroutine gtk_cell_layout_set_cell_data_func(cell_layout, cell, func,&
& func_data, destroy) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: cell_layout
  type(c_ptr), value :: cell
  type(c_funptr), value :: func
  type(c_ptr), value :: func_data
  type(c_funptr), value :: destroy
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_layout_clear_attributes (GtkCellLayout *cell_layout, GtkCellRenderer *cell);
subroutine gtk_cell_layout_clear_attributes(cell_layout, cell) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: cell_layout
  type(c_ptr), value :: cell
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_layout_reorder (GtkCellLayout *cell_layout, GtkCellRenderer *cell, gint position);
subroutine gtk_cell_layout_reorder(cell_layout, cell, position) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: cell_layout
  type(c_ptr), value :: cell
  integer(c_int), value :: position
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkCellArea *gtk_cell_layout_get_area (GtkCellLayout *cell_layout);
function gtk_cell_layout_get_area(cell_layout) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_layout_get_area
  type(c_ptr), value :: cell_layout
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreePath *gtk_tree_path_new (void);
function gtk_tree_path_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_path_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreePath *gtk_tree_path_new_from_string (const gchar *path);
function gtk_tree_path_new_from_string(path) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_tree_path_new_from_string
  character(kind=c_char), dimension(*) :: path
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreePath *gtk_tree_path_new_from_indicesv (gint *indices, gsize length);
function gtk_tree_path_new_from_indicesv(indices, length) bind(c)
  use iso_c_binding, only: c_ptr, c_size_t
  type(c_ptr) :: gtk_tree_path_new_from_indicesv
  type(c_ptr), value :: indices
  integer(c_size_t), value :: length
end function

! GDK_AVAILABLE_IN_ALL
!gchar *gtk_tree_path_to_string (GtkTreePath *path);
function gtk_tree_path_to_string(path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_path_to_string
  type(c_ptr), value :: path
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreePath *gtk_tree_path_new_first (void);
function gtk_tree_path_new_first() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_path_new_first
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_path_append_index (GtkTreePath *path, gint index_);
subroutine gtk_tree_path_append_index(path, index_) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: path
  integer(c_int), value :: index_
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_path_prepend_index (GtkTreePath *path, gint index_);
subroutine gtk_tree_path_prepend_index(path, index_) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: path
  integer(c_int), value :: index_
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_tree_path_get_depth (GtkTreePath *path);
function gtk_tree_path_get_depth(path) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_path_get_depth
  type(c_ptr), value :: path
end function

! GDK_AVAILABLE_IN_ALL
!gint *gtk_tree_path_get_indices (GtkTreePath *path);
function gtk_tree_path_get_indices(path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_path_get_indices
  type(c_ptr), value :: path
end function

! GDK_AVAILABLE_IN_ALL
!gint *gtk_tree_path_get_indices_with_depth (GtkTreePath *path, gint *depth);
function gtk_tree_path_get_indices_with_depth(path, depth) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_path_get_indices_with_depth
  type(c_ptr), value :: path
  type(c_ptr), value :: depth
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_path_free (GtkTreePath *path);
subroutine gtk_tree_path_free(path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: path
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkTreePath *gtk_tree_path_copy (const GtkTreePath *path);
function gtk_tree_path_copy(path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_path_copy
  type(c_ptr), value :: path
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_tree_path_get_type (void) G_GNUC_CONST;
function gtk_tree_path_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_tree_path_get_type
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_tree_path_compare (const GtkTreePath *a, const GtkTreePath *b);
function gtk_tree_path_compare(a, b) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_path_compare
  type(c_ptr), value :: a
  type(c_ptr), value :: b
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_path_next (GtkTreePath *path);
subroutine gtk_tree_path_next(path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: path
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_path_prev (GtkTreePath *path);
function gtk_tree_path_prev(path) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_path_prev
  type(c_ptr), value :: path
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_path_up (GtkTreePath *path);
function gtk_tree_path_up(path) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_path_up
  type(c_ptr), value :: path
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_path_down (GtkTreePath *path);
subroutine gtk_tree_path_down(path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: path
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_path_is_ancestor (GtkTreePath *path, GtkTreePath *descendant);
function gtk_tree_path_is_ancestor(path, descendant) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_path_is_ancestor
  type(c_ptr), value :: path
  type(c_ptr), value :: descendant
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_path_is_descendant (GtkTreePath *path, GtkTreePath *ancestor);
function gtk_tree_path_is_descendant(path, ancestor) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_path_is_descendant
  type(c_ptr), value :: path
  type(c_ptr), value :: ancestor
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_tree_row_reference_get_type (void) G_GNUC_CONST;
function gtk_tree_row_reference_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_tree_row_reference_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreeRowReference *gtk_tree_row_reference_new (GtkTreeModel *model, GtkTreePath *path);
function gtk_tree_row_reference_new(model, path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_row_reference_new
  type(c_ptr), value :: model
  type(c_ptr), value :: path
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreeRowReference *gtk_tree_row_reference_new_proxy (GObject *proxy, GtkTreeModel *model, GtkTreePath *path);
function gtk_tree_row_reference_new_proxy(proxy, model, path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_row_reference_new_proxy
  type(c_ptr), value :: proxy
  type(c_ptr), value :: model
  type(c_ptr), value :: path
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreePath *gtk_tree_row_reference_get_path (GtkTreeRowReference *reference);
function gtk_tree_row_reference_get_path(reference) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_row_reference_get_path
  type(c_ptr), value :: reference
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreeModel *gtk_tree_row_reference_get_model (GtkTreeRowReference *reference);
function gtk_tree_row_reference_get_model(reference) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_row_reference_get_model
  type(c_ptr), value :: reference
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_row_reference_valid (GtkTreeRowReference *reference);
function gtk_tree_row_reference_valid(reference) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_row_reference_valid
  type(c_ptr), value :: reference
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreeRowReference *gtk_tree_row_reference_copy (GtkTreeRowReference *reference);
function gtk_tree_row_reference_copy(reference) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_row_reference_copy
  type(c_ptr), value :: reference
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_row_reference_free (GtkTreeRowReference *reference);
subroutine gtk_tree_row_reference_free(reference) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: reference
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_row_reference_inserted (GObject *proxy, GtkTreePath *path);
subroutine gtk_tree_row_reference_inserted(proxy, path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: proxy
  type(c_ptr), value :: path
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_row_reference_deleted (GObject *proxy, GtkTreePath *path);
subroutine gtk_tree_row_reference_deleted(proxy, path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: proxy
  type(c_ptr), value :: path
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_row_reference_reordered (GObject *proxy, GtkTreePath *path, GtkTreeIter *iter, gint *new_order);
subroutine gtk_tree_row_reference_reordered(proxy, path, iter, new_order)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: proxy
  type(c_ptr), value :: path
  type(c_ptr), value :: iter
  type(c_ptr), value :: new_order
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkTreeIter * gtk_tree_iter_copy (GtkTreeIter *iter);
function gtk_tree_iter_copy(iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_iter_copy
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_iter_free (GtkTreeIter *iter);
subroutine gtk_tree_iter_free(iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: iter
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_tree_iter_get_type (void) G_GNUC_CONST;
function gtk_tree_iter_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_tree_iter_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_tree_model_get_type (void) G_GNUC_CONST;
function gtk_tree_model_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_tree_model_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreeModelFlags gtk_tree_model_get_flags (GtkTreeModel *tree_model);
function gtk_tree_model_get_flags(tree_model) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_model_get_flags
  type(c_ptr), value :: tree_model
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_tree_model_get_n_columns (GtkTreeModel *tree_model);
function gtk_tree_model_get_n_columns(tree_model) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_model_get_n_columns
  type(c_ptr), value :: tree_model
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_tree_model_get_column_type (GtkTreeModel *tree_model, gint index_);
function gtk_tree_model_get_column_type(tree_model, index_) bind(c)
  use iso_c_binding, only: c_size_t, c_ptr, c_int
  integer(c_size_t) :: gtk_tree_model_get_column_type
  type(c_ptr), value :: tree_model
  integer(c_int), value :: index_
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_model_get_iter (GtkTreeModel *tree_model, GtkTreeIter *iter, GtkTreePath *path);
function gtk_tree_model_get_iter(tree_model, iter, path) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_model_get_iter
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: iter
  type(c_ptr), value :: path
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_model_get_iter_from_string (GtkTreeModel *tree_model, GtkTreeIter *iter, const gchar *path_string);
function gtk_tree_model_get_iter_from_string(tree_model, iter, path_string)&
& bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_tree_model_get_iter_from_string
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: iter
  character(kind=c_char), dimension(*) :: path_string
end function

! GDK_AVAILABLE_IN_ALL
!gchar * gtk_tree_model_get_string_from_iter (GtkTreeModel *tree_model, GtkTreeIter *iter);
function gtk_tree_model_get_string_from_iter(tree_model, iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_model_get_string_from_iter
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_model_get_iter_first (GtkTreeModel *tree_model, GtkTreeIter *iter);
function gtk_tree_model_get_iter_first(tree_model, iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_model_get_iter_first
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreePath * gtk_tree_model_get_path (GtkTreeModel *tree_model, GtkTreeIter *iter);
function gtk_tree_model_get_path(tree_model, iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_model_get_path
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_model_get_value (GtkTreeModel *tree_model, GtkTreeIter *iter, gint column, GValue *value);
subroutine gtk_tree_model_get_value(tree_model, iter, column, value) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: iter
  integer(c_int), value :: column
  type(c_ptr), value :: value
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_model_iter_previous (GtkTreeModel *tree_model, GtkTreeIter *iter);
function gtk_tree_model_iter_previous(tree_model, iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_model_iter_previous
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_model_iter_next (GtkTreeModel *tree_model, GtkTreeIter *iter);
function gtk_tree_model_iter_next(tree_model, iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_model_iter_next
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_model_iter_children (GtkTreeModel *tree_model, GtkTreeIter *iter, GtkTreeIter *parent);
function gtk_tree_model_iter_children(tree_model, iter, parent) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_model_iter_children
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: iter
  type(c_ptr), value :: parent
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_model_iter_has_child (GtkTreeModel *tree_model, GtkTreeIter *iter);
function gtk_tree_model_iter_has_child(tree_model, iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_model_iter_has_child
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_tree_model_iter_n_children (GtkTreeModel *tree_model, GtkTreeIter *iter);
function gtk_tree_model_iter_n_children(tree_model, iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_model_iter_n_children
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_model_iter_nth_child (GtkTreeModel *tree_model, GtkTreeIter *iter, GtkTreeIter *parent, gint n);
function gtk_tree_model_iter_nth_child(tree_model, iter, parent, n) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_model_iter_nth_child
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: iter
  type(c_ptr), value :: parent
  integer(c_int), value :: n
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_model_iter_parent (GtkTreeModel *tree_model, GtkTreeIter *iter, GtkTreeIter *child);
function gtk_tree_model_iter_parent(tree_model, iter, child) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_model_iter_parent
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: iter
  type(c_ptr), value :: child
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_model_ref_node (GtkTreeModel *tree_model, GtkTreeIter *iter);
subroutine gtk_tree_model_ref_node(tree_model, iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: iter
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_model_unref_node (GtkTreeModel *tree_model, GtkTreeIter *iter);
subroutine gtk_tree_model_unref_node(tree_model, iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: iter
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_model_get_valist (GtkTreeModel *tree_model, GtkTreeIter *iter, va_list var_args);
subroutine gtk_tree_model_get_valist(tree_model, iter, var_args) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: iter
  type(c_ptr), value :: var_args
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_model_foreach (GtkTreeModel *model, GtkTreeModelForeachFunc func, gpointer user_data);
subroutine gtk_tree_model_foreach(model, func, user_data) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: model
  type(c_funptr), value :: func
  type(c_ptr), value :: user_data
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_model_row_changed (GtkTreeModel *tree_model, GtkTreePath *path, GtkTreeIter *iter);
subroutine gtk_tree_model_row_changed(tree_model, path, iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: path
  type(c_ptr), value :: iter
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_model_row_inserted (GtkTreeModel *tree_model, GtkTreePath *path, GtkTreeIter *iter);
subroutine gtk_tree_model_row_inserted(tree_model, path, iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: path
  type(c_ptr), value :: iter
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_model_row_has_child_toggled (GtkTreeModel *tree_model, GtkTreePath *path, GtkTreeIter *iter);
subroutine gtk_tree_model_row_has_child_toggled(tree_model, path, iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: path
  type(c_ptr), value :: iter
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_model_row_deleted (GtkTreeModel *tree_model, GtkTreePath *path);
subroutine gtk_tree_model_row_deleted(tree_model, path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: path
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_model_rows_reordered (GtkTreeModel *tree_model, GtkTreePath *path, GtkTreeIter *iter, gint *new_order);
subroutine gtk_tree_model_rows_reordered(tree_model, path, iter, new_order)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: path
  type(c_ptr), value :: iter
  type(c_ptr), value :: new_order
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_model_rows_reordered_with_length (GtkTreeModel *tree_model, GtkTreePath *path, GtkTreeIter *iter, gint *new_order, gint length);
subroutine gtk_tree_model_rows_reordered_with_length(tree_model, path, iter,&
& new_order, length) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: path
  type(c_ptr), value :: iter
  type(c_ptr), value :: new_order
  integer(c_int), value :: length
end subroutine

! GDK_AVAILABLE_IN_ALL
!GListModel * gtk_single_selection_get_model (GtkSingleSelection *self);
function gtk_single_selection_get_model(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_single_selection_get_model
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!guint gtk_single_selection_get_selected (GtkSingleSelection *self);
function gtk_single_selection_get_selected(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_single_selection_get_selected
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_single_selection_set_selected (GtkSingleSelection *self, guint position);
subroutine gtk_single_selection_set_selected(self, position) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: position
end subroutine

! GDK_AVAILABLE_IN_ALL
!gpointer gtk_single_selection_get_selected_item (GtkSingleSelection *self);
function gtk_single_selection_get_selected_item(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_single_selection_get_selected_item
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_single_selection_get_autoselect (GtkSingleSelection *self);
function gtk_single_selection_get_autoselect(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_single_selection_get_autoselect
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_single_selection_set_autoselect (GtkSingleSelection *self, gboolean autoselect);
subroutine gtk_single_selection_set_autoselect(self, autoselect) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: autoselect
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_single_selection_get_can_unselect (GtkSingleSelection *self);
function gtk_single_selection_get_can_unselect(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_single_selection_get_can_unselect
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_single_selection_set_can_unselect (GtkSingleSelection *self, gboolean can_unselect);
subroutine gtk_single_selection_set_can_unselect(self, can_unselect) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: can_unselect
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_tree_view_get_type (void) G_GNUC_CONST;
function gtk_tree_view_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_tree_view_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_tree_view_new (void);
function gtk_tree_view_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_view_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_tree_view_new_with_model (GtkTreeModel *model);
function gtk_tree_view_new_with_model(model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_view_new_with_model
  type(c_ptr), value :: model
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreeModel *gtk_tree_view_get_model (GtkTreeView *tree_view);
function gtk_tree_view_get_model(tree_view) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_view_get_model
  type(c_ptr), value :: tree_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_model (GtkTreeView *tree_view, GtkTreeModel *model);
subroutine gtk_tree_view_set_model(tree_view, model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: model
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkTreeSelection *gtk_tree_view_get_selection (GtkTreeView *tree_view);
function gtk_tree_view_get_selection(tree_view) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_view_get_selection
  type(c_ptr), value :: tree_view
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_get_headers_visible (GtkTreeView *tree_view);
function gtk_tree_view_get_headers_visible(tree_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_get_headers_visible
  type(c_ptr), value :: tree_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_headers_visible (GtkTreeView *tree_view, gboolean headers_visible);
subroutine gtk_tree_view_set_headers_visible(tree_view, headers_visible)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  integer(c_int), value :: headers_visible
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_columns_autosize (GtkTreeView *tree_view);
subroutine gtk_tree_view_columns_autosize(tree_view) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_view
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_get_headers_clickable (GtkTreeView *tree_view);
function gtk_tree_view_get_headers_clickable(tree_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_get_headers_clickable
  type(c_ptr), value :: tree_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_headers_clickable (GtkTreeView *tree_view, gboolean setting);
subroutine gtk_tree_view_set_headers_clickable(tree_view, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_get_activate_on_single_click (GtkTreeView *tree_view);
function gtk_tree_view_get_activate_on_single_click(tree_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_get_activate_on_single_click
  type(c_ptr), value :: tree_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_activate_on_single_click (GtkTreeView *tree_view, gboolean single);
subroutine gtk_tree_view_set_activate_on_single_click(tree_view, single)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  integer(c_int), value :: single
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_tree_view_append_column (GtkTreeView *tree_view, GtkTreeViewColumn *column);
function gtk_tree_view_append_column(tree_view, column) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_append_column
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: column
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_tree_view_remove_column (GtkTreeView *tree_view, GtkTreeViewColumn *column);
function gtk_tree_view_remove_column(tree_view, column) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_remove_column
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: column
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_tree_view_insert_column (GtkTreeView *tree_view, GtkTreeViewColumn *column, gint position);
function gtk_tree_view_insert_column(tree_view, column, position) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_insert_column
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: column
  integer(c_int), value :: position
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_tree_view_insert_column_with_data_func (GtkTreeView *tree_view, gint position, const gchar *title, GtkCellRenderer *cell, GtkTreeCellDataFunc func, gpointer data, GDestroyNotify dnotify);
function gtk_tree_view_insert_column_with_data_func(tree_view, position, title,&
& cell, func, data, dnotify) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char, c_funptr
  integer(c_int) :: gtk_tree_view_insert_column_with_data_func
  type(c_ptr), value :: tree_view
  integer(c_int), value :: position
  character(kind=c_char), dimension(*) :: title
  type(c_ptr), value :: cell
  type(c_funptr), value :: func
  type(c_ptr), value :: data
  type(c_funptr), value :: dnotify
end function

! GDK_AVAILABLE_IN_ALL
!guint gtk_tree_view_get_n_columns (GtkTreeView *tree_view);
function gtk_tree_view_get_n_columns(tree_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_get_n_columns
  type(c_ptr), value :: tree_view
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreeViewColumn *gtk_tree_view_get_column (GtkTreeView *tree_view, gint n);
function gtk_tree_view_get_column(tree_view, n) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_tree_view_get_column
  type(c_ptr), value :: tree_view
  integer(c_int), value :: n
end function

! GDK_AVAILABLE_IN_ALL
!GList *gtk_tree_view_get_columns (GtkTreeView *tree_view);
function gtk_tree_view_get_columns(tree_view) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_view_get_columns
  type(c_ptr), value :: tree_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_move_column_after (GtkTreeView *tree_view, GtkTreeViewColumn *column, GtkTreeViewColumn *base_column);
subroutine gtk_tree_view_move_column_after(tree_view, column, base_column)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: column
  type(c_ptr), value :: base_column
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_expander_column (GtkTreeView *tree_view, GtkTreeViewColumn *column);
subroutine gtk_tree_view_set_expander_column(tree_view, column) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: column
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkTreeViewColumn *gtk_tree_view_get_expander_column (GtkTreeView *tree_view);
function gtk_tree_view_get_expander_column(tree_view) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_view_get_expander_column
  type(c_ptr), value :: tree_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_column_drag_function (GtkTreeView *tree_view, GtkTreeViewColumnDropFunc func, gpointer user_data, GDestroyNotify destroy);
subroutine gtk_tree_view_set_column_drag_function(tree_view, func, user_data,&
& destroy) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: tree_view
  type(c_funptr), value :: func
  type(c_ptr), value :: user_data
  type(c_funptr), value :: destroy
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_scroll_to_point (GtkTreeView *tree_view, gint tree_x, gint tree_y);
subroutine gtk_tree_view_scroll_to_point(tree_view, tree_x, tree_y) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  integer(c_int), value :: tree_x
  integer(c_int), value :: tree_y
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_scroll_to_cell (GtkTreeView *tree_view, GtkTreePath *path, GtkTreeViewColumn *column, gboolean use_align, gfloat row_align, gfloat col_align);
subroutine gtk_tree_view_scroll_to_cell(tree_view, path, column, use_align,&
& row_align, col_align) bind(c)
  use iso_c_binding, only: c_ptr, c_int, c_float
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: path
  type(c_ptr), value :: column
  integer(c_int), value :: use_align
  real(c_float), value :: row_align
  real(c_float), value :: col_align
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_row_activated (GtkTreeView *tree_view, GtkTreePath *path, GtkTreeViewColumn *column);
subroutine gtk_tree_view_row_activated(tree_view, path, column) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: path
  type(c_ptr), value :: column
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_expand_all (GtkTreeView *tree_view);
subroutine gtk_tree_view_expand_all(tree_view) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_view
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_collapse_all (GtkTreeView *tree_view);
subroutine gtk_tree_view_collapse_all(tree_view) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_view
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_expand_to_path (GtkTreeView *tree_view, GtkTreePath *path);
subroutine gtk_tree_view_expand_to_path(tree_view, path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: path
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_expand_row (GtkTreeView *tree_view, GtkTreePath *path, gboolean open_all);
function gtk_tree_view_expand_row(tree_view, path, open_all) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_expand_row
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: path
  integer(c_int), value :: open_all
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_collapse_row (GtkTreeView *tree_view, GtkTreePath *path);
function gtk_tree_view_collapse_row(tree_view, path) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_collapse_row
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: path
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_map_expanded_rows (GtkTreeView *tree_view, GtkTreeViewMappingFunc func, gpointer data);
subroutine gtk_tree_view_map_expanded_rows(tree_view, func, data) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: tree_view
  type(c_funptr), value :: func
  type(c_ptr), value :: data
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_row_expanded (GtkTreeView *tree_view, GtkTreePath *path);
function gtk_tree_view_row_expanded(tree_view, path) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_row_expanded
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: path
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_reorderable (GtkTreeView *tree_view, gboolean reorderable);
subroutine gtk_tree_view_set_reorderable(tree_view, reorderable) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  integer(c_int), value :: reorderable
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_get_reorderable (GtkTreeView *tree_view);
function gtk_tree_view_get_reorderable(tree_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_get_reorderable
  type(c_ptr), value :: tree_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_cursor (GtkTreeView *tree_view, GtkTreePath *path, GtkTreeViewColumn *focus_column, gboolean start_editing);
subroutine gtk_tree_view_set_cursor(tree_view, path, focus_column,&
& start_editing) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: path
  type(c_ptr), value :: focus_column
  integer(c_int), value :: start_editing
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_cursor_on_cell (GtkTreeView *tree_view, GtkTreePath *path, GtkTreeViewColumn *focus_column, GtkCellRenderer *focus_cell, gboolean start_editing);
subroutine gtk_tree_view_set_cursor_on_cell(tree_view, path, focus_column,&
& focus_cell, start_editing) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: path
  type(c_ptr), value :: focus_column
  type(c_ptr), value :: focus_cell
  integer(c_int), value :: start_editing
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_get_cursor (GtkTreeView *tree_view, GtkTreePath **path, GtkTreeViewColumn **focus_column);
subroutine gtk_tree_view_get_cursor(tree_view, path, focus_column) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: path
  type(c_ptr), value :: focus_column
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_get_path_at_pos (GtkTreeView *tree_view, gint x, gint y, GtkTreePath **path, GtkTreeViewColumn **column, gint *cell_x, gint *cell_y);
function gtk_tree_view_get_path_at_pos(tree_view, x, y, path, column, cell_x,&
& cell_y) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_get_path_at_pos
  type(c_ptr), value :: tree_view
  integer(c_int), value :: x
  integer(c_int), value :: y
  type(c_ptr), value :: path
  type(c_ptr), value :: column
  type(c_ptr), value :: cell_x
  type(c_ptr), value :: cell_y
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_get_cell_area (GtkTreeView *tree_view, GtkTreePath *path, GtkTreeViewColumn *column, GdkRectangle *rect);
subroutine gtk_tree_view_get_cell_area(tree_view, path, column, rect) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: path
  type(c_ptr), value :: column
  type(c_ptr), value :: rect
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_get_background_area (GtkTreeView *tree_view, GtkTreePath *path, GtkTreeViewColumn *column, GdkRectangle *rect);
subroutine gtk_tree_view_get_background_area(tree_view, path, column, rect)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: path
  type(c_ptr), value :: column
  type(c_ptr), value :: rect
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_get_visible_rect (GtkTreeView *tree_view, GdkRectangle *visible_rect);
subroutine gtk_tree_view_get_visible_rect(tree_view, visible_rect) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: visible_rect
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_get_visible_range (GtkTreeView *tree_view, GtkTreePath **start_path, GtkTreePath **end_path);
function gtk_tree_view_get_visible_range(tree_view, start_path, end_path)&
& bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_get_visible_range
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: start_path
  type(c_ptr), value :: end_path
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_is_blank_at_pos (GtkTreeView *tree_view, gint x, gint y, GtkTreePath **path, GtkTreeViewColumn **column, gint *cell_x, gint *cell_y);
function gtk_tree_view_is_blank_at_pos(tree_view, x, y, path, column, cell_x,&
& cell_y) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_is_blank_at_pos
  type(c_ptr), value :: tree_view
  integer(c_int), value :: x
  integer(c_int), value :: y
  type(c_ptr), value :: path
  type(c_ptr), value :: column
  type(c_ptr), value :: cell_x
  type(c_ptr), value :: cell_y
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_enable_model_drag_source (GtkTreeView *tree_view, GdkModifierType start_button_mask, GdkContentFormats *formats, GdkDragAction actions);
subroutine gtk_tree_view_enable_model_drag_source(tree_view, start_button_mask,&
& formats, actions) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  integer(c_int), value :: start_button_mask
  type(c_ptr), value :: formats
  integer(c_int), value :: actions
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_enable_model_drag_dest (GtkTreeView *tree_view, GdkContentFormats *formats, GdkDragAction actions);
subroutine gtk_tree_view_enable_model_drag_dest(tree_view, formats, actions)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: formats
  integer(c_int), value :: actions
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_unset_rows_drag_source (GtkTreeView *tree_view);
subroutine gtk_tree_view_unset_rows_drag_source(tree_view) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_view
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_unset_rows_drag_dest (GtkTreeView *tree_view);
subroutine gtk_tree_view_unset_rows_drag_dest(tree_view) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_view
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_drag_dest_row (GtkTreeView *tree_view, GtkTreePath *path, GtkTreeViewDropPosition pos);
subroutine gtk_tree_view_set_drag_dest_row(tree_view, path, pos) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: path
  integer(c_int), value :: pos
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_get_drag_dest_row (GtkTreeView *tree_view, GtkTreePath **path, GtkTreeViewDropPosition *pos);
subroutine gtk_tree_view_get_drag_dest_row(tree_view, path, pos) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: path
  integer(c_int), value :: pos
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_get_dest_row_at_pos (GtkTreeView *tree_view, gint drag_x, gint drag_y, GtkTreePath **path, GtkTreeViewDropPosition *pos);
function gtk_tree_view_get_dest_row_at_pos(tree_view, drag_x, drag_y, path,&
& pos) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_get_dest_row_at_pos
  type(c_ptr), value :: tree_view
  integer(c_int), value :: drag_x
  integer(c_int), value :: drag_y
  type(c_ptr), value :: path
  integer(c_int), value :: pos
end function

! GDK_AVAILABLE_IN_ALL
!GdkPaintable *gtk_tree_view_create_row_drag_icon (GtkTreeView *tree_view, GtkTreePath *path);
function gtk_tree_view_create_row_drag_icon(tree_view, path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_view_create_row_drag_icon
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: path
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_enable_search (GtkTreeView *tree_view, gboolean enable_search);
subroutine gtk_tree_view_set_enable_search(tree_view, enable_search) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  integer(c_int), value :: enable_search
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_get_enable_search (GtkTreeView *tree_view);
function gtk_tree_view_get_enable_search(tree_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_get_enable_search
  type(c_ptr), value :: tree_view
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_tree_view_get_search_column (GtkTreeView *tree_view);
function gtk_tree_view_get_search_column(tree_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_get_search_column
  type(c_ptr), value :: tree_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_search_column (GtkTreeView *tree_view, gint column);
subroutine gtk_tree_view_set_search_column(tree_view, column) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  integer(c_int), value :: column
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkTreeViewSearchEqualFunc gtk_tree_view_get_search_equal_func (GtkTreeView *tree_view);
function gtk_tree_view_get_search_equal_func(tree_view) bind(c)
  use iso_c_binding, only: c_funptr, c_ptr
  type(c_funptr) :: gtk_tree_view_get_search_equal_func
  type(c_ptr), value :: tree_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_search_equal_func (GtkTreeView *tree_view, GtkTreeViewSearchEqualFunc search_equal_func, gpointer search_user_data, GDestroyNotify search_destroy);
subroutine gtk_tree_view_set_search_equal_func(tree_view, search_equal_func,&
& search_user_data, search_destroy) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: tree_view
  type(c_funptr), value :: search_equal_func
  type(c_ptr), value :: search_user_data
  type(c_funptr), value :: search_destroy
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkEditable *gtk_tree_view_get_search_entry (GtkTreeView *tree_view);
function gtk_tree_view_get_search_entry(tree_view) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_view_get_search_entry
  type(c_ptr), value :: tree_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_search_entry (GtkTreeView *tree_view, GtkEditable *entry);
subroutine gtk_tree_view_set_search_entry(tree_view, entry) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: entry
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_convert_widget_to_tree_coords (GtkTreeView *tree_view, gint wx, gint wy, gint *tx, gint *ty);
subroutine gtk_tree_view_convert_widget_to_tree_coords(tree_view, wx, wy, tx,&
& ty) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  integer(c_int), value :: wx
  integer(c_int), value :: wy
  type(c_ptr), value :: tx
  type(c_ptr), value :: ty
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_convert_tree_to_widget_coords (GtkTreeView *tree_view, gint tx, gint ty, gint *wx, gint *wy);
subroutine gtk_tree_view_convert_tree_to_widget_coords(tree_view, tx, ty, wx,&
& wy) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  integer(c_int), value :: tx
  integer(c_int), value :: ty
  type(c_ptr), value :: wx
  type(c_ptr), value :: wy
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_convert_widget_to_bin_window_coords (GtkTreeView *tree_view, gint wx, gint wy, gint *bx, gint *by);
subroutine gtk_tree_view_convert_widget_to_bin_window_coords(tree_view, wx, wy,&
& bx, by) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  integer(c_int), value :: wx
  integer(c_int), value :: wy
  type(c_ptr), value :: bx
  type(c_ptr), value :: by
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_convert_bin_window_to_widget_coords (GtkTreeView *tree_view, gint bx, gint by, gint *wx, gint *wy);
subroutine gtk_tree_view_convert_bin_window_to_widget_coords(tree_view, bx, by,&
& wx, wy) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  integer(c_int), value :: bx
  integer(c_int), value :: by
  type(c_ptr), value :: wx
  type(c_ptr), value :: wy
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_convert_tree_to_bin_window_coords (GtkTreeView *tree_view, gint tx, gint ty, gint *bx, gint *by);
subroutine gtk_tree_view_convert_tree_to_bin_window_coords(tree_view, tx, ty,&
& bx, by) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  integer(c_int), value :: tx
  integer(c_int), value :: ty
  type(c_ptr), value :: bx
  type(c_ptr), value :: by
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_convert_bin_window_to_tree_coords (GtkTreeView *tree_view, gint bx, gint by, gint *tx, gint *ty);
subroutine gtk_tree_view_convert_bin_window_to_tree_coords(tree_view, bx, by,&
& tx, ty) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  integer(c_int), value :: bx
  integer(c_int), value :: by
  type(c_ptr), value :: tx
  type(c_ptr), value :: ty
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_fixed_height_mode (GtkTreeView *tree_view, gboolean enable);
subroutine gtk_tree_view_set_fixed_height_mode(tree_view, enable) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  integer(c_int), value :: enable
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_get_fixed_height_mode (GtkTreeView *tree_view);
function gtk_tree_view_get_fixed_height_mode(tree_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_get_fixed_height_mode
  type(c_ptr), value :: tree_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_hover_selection (GtkTreeView *tree_view, gboolean hover);
subroutine gtk_tree_view_set_hover_selection(tree_view, hover) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  integer(c_int), value :: hover
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_get_hover_selection (GtkTreeView *tree_view);
function gtk_tree_view_get_hover_selection(tree_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_get_hover_selection
  type(c_ptr), value :: tree_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_hover_expand (GtkTreeView *tree_view, gboolean expand);
subroutine gtk_tree_view_set_hover_expand(tree_view, expand) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  integer(c_int), value :: expand
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_get_hover_expand (GtkTreeView *tree_view);
function gtk_tree_view_get_hover_expand(tree_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_get_hover_expand
  type(c_ptr), value :: tree_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_rubber_banding (GtkTreeView *tree_view, gboolean enable);
subroutine gtk_tree_view_set_rubber_banding(tree_view, enable) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  integer(c_int), value :: enable
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_get_rubber_banding (GtkTreeView *tree_view);
function gtk_tree_view_get_rubber_banding(tree_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_get_rubber_banding
  type(c_ptr), value :: tree_view
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_is_rubber_banding_active (GtkTreeView *tree_view);
function gtk_tree_view_is_rubber_banding_active(tree_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_is_rubber_banding_active
  type(c_ptr), value :: tree_view
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreeViewRowSeparatorFunc gtk_tree_view_get_row_separator_func (GtkTreeView *tree_view);
function gtk_tree_view_get_row_separator_func(tree_view) bind(c)
  use iso_c_binding, only: c_funptr, c_ptr
  type(c_funptr) :: gtk_tree_view_get_row_separator_func
  type(c_ptr), value :: tree_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_row_separator_func (GtkTreeView *tree_view, GtkTreeViewRowSeparatorFunc func, gpointer data, GDestroyNotify destroy);
subroutine gtk_tree_view_set_row_separator_func(tree_view, func, data, destroy)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: tree_view
  type(c_funptr), value :: func
  type(c_ptr), value :: data
  type(c_funptr), value :: destroy
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkTreeViewGridLines gtk_tree_view_get_grid_lines (GtkTreeView *tree_view);
function gtk_tree_view_get_grid_lines(tree_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_get_grid_lines
  type(c_ptr), value :: tree_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_grid_lines (GtkTreeView *tree_view, GtkTreeViewGridLines grid_lines);
subroutine gtk_tree_view_set_grid_lines(tree_view, grid_lines) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  integer(c_int), value :: grid_lines
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_get_enable_tree_lines (GtkTreeView *tree_view);
function gtk_tree_view_get_enable_tree_lines(tree_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_get_enable_tree_lines
  type(c_ptr), value :: tree_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_enable_tree_lines (GtkTreeView *tree_view, gboolean enabled);
subroutine gtk_tree_view_set_enable_tree_lines(tree_view, enabled) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  integer(c_int), value :: enabled
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_show_expanders (GtkTreeView *tree_view, gboolean enabled);
subroutine gtk_tree_view_set_show_expanders(tree_view, enabled) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  integer(c_int), value :: enabled
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_get_show_expanders (GtkTreeView *tree_view);
function gtk_tree_view_get_show_expanders(tree_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_get_show_expanders
  type(c_ptr), value :: tree_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_level_indentation (GtkTreeView *tree_view, gint indentation);
subroutine gtk_tree_view_set_level_indentation(tree_view, indentation) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  integer(c_int), value :: indentation
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_tree_view_get_level_indentation (GtkTreeView *tree_view);
function gtk_tree_view_get_level_indentation(tree_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_get_level_indentation
  type(c_ptr), value :: tree_view
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_tooltip_row (GtkTreeView *tree_view, GtkTooltip *tooltip, GtkTreePath *path);
subroutine gtk_tree_view_set_tooltip_row(tree_view, tooltip, path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: tooltip
  type(c_ptr), value :: path
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_tooltip_cell (GtkTreeView *tree_view, GtkTooltip *tooltip, GtkTreePath *path, GtkTreeViewColumn *column, GtkCellRenderer *cell);
subroutine gtk_tree_view_set_tooltip_cell(tree_view, tooltip, path, column,&
& cell) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: tooltip
  type(c_ptr), value :: path
  type(c_ptr), value :: column
  type(c_ptr), value :: cell
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_get_tooltip_context(GtkTreeView *tree_view, gint *x, gint *y, gboolean keyboard_tip, GtkTreeModel **model, GtkTreePath **path, GtkTreeIter *iter);
function gtk_tree_view_get_tooltip_context(tree_view, x, y, keyboard_tip,&
& model, path, iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_get_tooltip_context
  type(c_ptr), value :: tree_view
  type(c_ptr), value :: x
  type(c_ptr), value :: y
  integer(c_int), value :: keyboard_tip
  type(c_ptr), value :: model
  type(c_ptr), value :: path
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_set_tooltip_column (GtkTreeView *tree_view, gint column);
subroutine gtk_tree_view_set_tooltip_column(tree_view, column) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_view
  integer(c_int), value :: column
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_tree_view_get_tooltip_column (GtkTreeView *tree_view);
function gtk_tree_view_get_tooltip_column(tree_view) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_get_tooltip_column
  type(c_ptr), value :: tree_view
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_scrollable_get_type (void) G_GNUC_CONST;
function gtk_scrollable_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_scrollable_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkAdjustment *gtk_scrollable_get_hadjustment (GtkScrollable *scrollable);
function gtk_scrollable_get_hadjustment(scrollable) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_scrollable_get_hadjustment
  type(c_ptr), value :: scrollable
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_scrollable_set_hadjustment (GtkScrollable *scrollable, GtkAdjustment *hadjustment);
subroutine gtk_scrollable_set_hadjustment(scrollable, hadjustment) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: scrollable
  type(c_ptr), value :: hadjustment
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkAdjustment *gtk_scrollable_get_vadjustment (GtkScrollable *scrollable);
function gtk_scrollable_get_vadjustment(scrollable) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_scrollable_get_vadjustment
  type(c_ptr), value :: scrollable
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_scrollable_set_vadjustment (GtkScrollable *scrollable, GtkAdjustment *vadjustment);
subroutine gtk_scrollable_set_vadjustment(scrollable, vadjustment) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: scrollable
  type(c_ptr), value :: vadjustment
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkScrollablePolicy gtk_scrollable_get_hscroll_policy (GtkScrollable *scrollable);
function gtk_scrollable_get_hscroll_policy(scrollable) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_scrollable_get_hscroll_policy
  type(c_ptr), value :: scrollable
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_scrollable_set_hscroll_policy (GtkScrollable *scrollable, GtkScrollablePolicy policy);
subroutine gtk_scrollable_set_hscroll_policy(scrollable, policy) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: scrollable
  integer(c_int), value :: policy
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkScrollablePolicy gtk_scrollable_get_vscroll_policy (GtkScrollable *scrollable);
function gtk_scrollable_get_vscroll_policy(scrollable) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_scrollable_get_vscroll_policy
  type(c_ptr), value :: scrollable
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_scrollable_set_vscroll_policy (GtkScrollable *scrollable, GtkScrollablePolicy policy);
subroutine gtk_scrollable_set_vscroll_policy(scrollable, policy) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: scrollable
  integer(c_int), value :: policy
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_scrollable_get_border (GtkScrollable *scrollable, GtkBorder *border);
function gtk_scrollable_get_border(scrollable, border) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_scrollable_get_border
  type(c_ptr), value :: scrollable
  type(c_ptr), value :: border
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_color_chooser_get_type (void) G_GNUC_CONST;
function gtk_color_chooser_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_color_chooser_get_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_color_chooser_get_rgba (GtkColorChooser *chooser, GdkRGBA *color);
subroutine gtk_color_chooser_get_rgba(chooser, color) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: chooser
  type(c_ptr), value :: color
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_color_chooser_set_rgba (GtkColorChooser *chooser, const GdkRGBA *color);
subroutine gtk_color_chooser_set_rgba(chooser, color) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: chooser
  type(c_ptr), value :: color
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_color_chooser_get_use_alpha (GtkColorChooser *chooser);
function gtk_color_chooser_get_use_alpha(chooser) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_color_chooser_get_use_alpha
  type(c_ptr), value :: chooser
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_color_chooser_set_use_alpha (GtkColorChooser *chooser, gboolean use_alpha);
subroutine gtk_color_chooser_set_use_alpha(chooser, use_alpha) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: chooser
  integer(c_int), value :: use_alpha
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_color_chooser_add_palette (GtkColorChooser *chooser, GtkOrientation orientation, gint colors_per_line, gint n_colors, GdkRGBA *colors);
subroutine gtk_color_chooser_add_palette(chooser, orientation, colors_per_line,&
& n_colors, colors) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: chooser
  integer(c_int), value :: orientation
  integer(c_int), value :: colors_per_line
  integer(c_int), value :: n_colors
  type(c_ptr), value :: colors
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_fixed_get_type (void) G_GNUC_CONST;
function gtk_fixed_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_fixed_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_fixed_new (void);
function gtk_fixed_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_fixed_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_fixed_put (GtkFixed *fixed, GtkWidget *widget, gint x, gint y);
subroutine gtk_fixed_put(fixed, widget, x, y) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: fixed
  type(c_ptr), value :: widget
  integer(c_int), value :: x
  integer(c_int), value :: y
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_fixed_move (GtkFixed *fixed, GtkWidget *widget, gint x, gint y);
subroutine gtk_fixed_move(fixed, widget, x, y) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: fixed
  type(c_ptr), value :: widget
  integer(c_int), value :: x
  integer(c_int), value :: y
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_fixed_get_child_position (GtkFixed *fixed, GtkWidget *widget, gint *x, gint *y);
subroutine gtk_fixed_get_child_position(fixed, widget, x, y) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: fixed
  type(c_ptr), value :: widget
  type(c_ptr), value :: x
  type(c_ptr), value :: y
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_fixed_set_child_transform (GtkFixed *fixed, GtkWidget *widget, GskTransform *transform);
subroutine gtk_fixed_set_child_transform(fixed, widget, transform) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: fixed
  type(c_ptr), value :: widget
  type(c_ptr), value :: transform
end subroutine

! GDK_AVAILABLE_IN_ALL
!GskTransform * gtk_fixed_get_child_transform (GtkFixed *fixed, GtkWidget *widget);
function gtk_fixed_get_child_transform(fixed, widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_fixed_get_child_transform
  type(c_ptr), value :: fixed
  type(c_ptr), value :: widget
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_shortcuts_shortcut_get_type (void) G_GNUC_CONST;
function gtk_shortcuts_shortcut_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_shortcuts_shortcut_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_cell_renderer_toggle_get_type (void) G_GNUC_CONST;
function gtk_cell_renderer_toggle_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_cell_renderer_toggle_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkCellRenderer *gtk_cell_renderer_toggle_new (void);
function gtk_cell_renderer_toggle_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_renderer_toggle_new
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_cell_renderer_toggle_get_radio (GtkCellRendererToggle *toggle);
function gtk_cell_renderer_toggle_get_radio(toggle) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_cell_renderer_toggle_get_radio
  type(c_ptr), value :: toggle
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_renderer_toggle_set_radio (GtkCellRendererToggle *toggle, gboolean radio);
subroutine gtk_cell_renderer_toggle_set_radio(toggle, radio) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: toggle
  integer(c_int), value :: radio
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_cell_renderer_toggle_get_active (GtkCellRendererToggle *toggle);
function gtk_cell_renderer_toggle_get_active(toggle) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_cell_renderer_toggle_get_active
  type(c_ptr), value :: toggle
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_renderer_toggle_set_active (GtkCellRendererToggle *toggle, gboolean setting);
subroutine gtk_cell_renderer_toggle_set_active(toggle, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: toggle
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_cell_renderer_toggle_get_activatable (GtkCellRendererToggle *toggle);
function gtk_cell_renderer_toggle_get_activatable(toggle) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_cell_renderer_toggle_get_activatable
  type(c_ptr), value :: toggle
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_renderer_toggle_set_activatable (GtkCellRendererToggle *toggle, gboolean setting);
subroutine gtk_cell_renderer_toggle_set_activatable(toggle, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: toggle
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_selection_model_select_item (GtkSelectionModel *model, guint position, gboolean exclusive);
function gtk_selection_model_select_item(model, position, exclusive) bind(c)
  use iso_c_binding, only: c_int
  integer(c_int) :: gtk_selection_model_select_item
  integer(c_int), value :: model
  integer(c_int), value :: position
  integer(c_int), value :: exclusive
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_selection_model_unselect_item (GtkSelectionModel *model, guint position);
function gtk_selection_model_unselect_item(model, position) bind(c)
  use iso_c_binding, only: c_int
  integer(c_int) :: gtk_selection_model_unselect_item
  integer(c_int), value :: model
  integer(c_int), value :: position
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_selection_model_select_range (GtkSelectionModel *model, guint position, guint n_items, gboolean exclusive);
function gtk_selection_model_select_range(model, position, n_items, exclusive)&
& bind(c)
  use iso_c_binding, only: c_int
  integer(c_int) :: gtk_selection_model_select_range
  integer(c_int), value :: model
  integer(c_int), value :: position
  integer(c_int), value :: n_items
  integer(c_int), value :: exclusive
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_selection_model_unselect_range (GtkSelectionModel *model, guint position, guint n_items);
function gtk_selection_model_unselect_range(model, position, n_items) bind(c)
  use iso_c_binding, only: c_int
  integer(c_int) :: gtk_selection_model_unselect_range
  integer(c_int), value :: model
  integer(c_int), value :: position
  integer(c_int), value :: n_items
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_selection_model_select_all (GtkSelectionModel *model);
function gtk_selection_model_select_all(model) bind(c)
  use iso_c_binding, only: c_int
  integer(c_int) :: gtk_selection_model_select_all
  integer(c_int), value :: model
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_selection_model_unselect_all (GtkSelectionModel *model);
function gtk_selection_model_unselect_all(model) bind(c)
  use iso_c_binding, only: c_int
  integer(c_int) :: gtk_selection_model_unselect_all
  integer(c_int), value :: model
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_selection_model_query_range (GtkSelectionModel *model, guint position, guint *start_range, guint *n_items, gboolean *selected);
subroutine gtk_selection_model_query_range(model, position, start_range,&
& n_items, selected) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int), value :: model
  integer(c_int), value :: position
  type(c_ptr), value :: start_range
  type(c_ptr), value :: n_items
  type(c_ptr), value :: selected
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_selection_model_selection_changed (GtkSelectionModel *model, guint position, guint n_items);
subroutine gtk_selection_model_selection_changed(model, position, n_items)&
& bind(c)
  use iso_c_binding, only: c_int
  integer(c_int), value :: model
  integer(c_int), value :: position
  integer(c_int), value :: n_items
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_file_filter_get_type (void) G_GNUC_CONST;
function gtk_file_filter_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_file_filter_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkFileFilter * gtk_file_filter_new (void);
function gtk_file_filter_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_file_filter_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_file_filter_set_name (GtkFileFilter *filter, const gchar *name);
subroutine gtk_file_filter_set_name(filter, name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: filter
  character(kind=c_char), dimension(*) :: name
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_file_filter_get_name (GtkFileFilter *filter);
function gtk_file_filter_get_name(filter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_file_filter_get_name
  type(c_ptr), value :: filter
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_file_filter_add_mime_type (GtkFileFilter *filter, const gchar *mime_type);
subroutine gtk_file_filter_add_mime_type(filter, mime_type) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: filter
  character(kind=c_char), dimension(*) :: mime_type
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_file_filter_add_pattern (GtkFileFilter *filter, const gchar *pattern);
subroutine gtk_file_filter_add_pattern(filter, pattern) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: filter
  character(kind=c_char), dimension(*) :: pattern
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_file_filter_add_pixbuf_formats (GtkFileFilter *filter);
subroutine gtk_file_filter_add_pixbuf_formats(filter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: filter
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_file_filter_add_custom (GtkFileFilter *filter, GtkFileFilterFlags needed, GtkFileFilterFunc func, gpointer data, GDestroyNotify notify);
subroutine gtk_file_filter_add_custom(filter, needed, func, data, notify)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int, c_funptr
  type(c_ptr), value :: filter
  integer(c_int), value :: needed
  type(c_funptr), value :: func
  type(c_ptr), value :: data
  type(c_funptr), value :: notify
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkFileFilterFlags gtk_file_filter_get_needed (GtkFileFilter *filter);
function gtk_file_filter_get_needed(filter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_file_filter_get_needed
  type(c_ptr), value :: filter
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_file_filter_filter (GtkFileFilter *filter, const GtkFileFilterInfo *filter_info);
function gtk_file_filter_filter(filter, filter_info) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_file_filter_filter
  type(c_ptr), value :: filter
  type(c_ptr), value :: filter_info
end function

! GDK_AVAILABLE_IN_ALL
!GVariant *gtk_file_filter_to_gvariant (GtkFileFilter *filter);
function gtk_file_filter_to_gvariant(filter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_file_filter_to_gvariant
  type(c_ptr), value :: filter
end function

! GDK_AVAILABLE_IN_ALL
!GtkFileFilter *gtk_file_filter_new_from_gvariant (GVariant *variant);
function gtk_file_filter_new_from_gvariant(variant) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_file_filter_new_from_gvariant
  type(c_ptr), value :: variant
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_drop_target_async_get_type (void) G_GNUC_CONST;
function gtk_drop_target_async_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_drop_target_async_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkDropTargetAsync * gtk_drop_target_async_new (GdkContentFormats *formats, GdkDragAction actions);
function gtk_drop_target_async_new(formats, actions) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_drop_target_async_new
  type(c_ptr), value :: formats
  integer(c_int), value :: actions
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_drop_target_async_set_formats (GtkDropTargetAsync *self, GdkContentFormats *formats);
subroutine gtk_drop_target_async_set_formats(self, formats) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: formats
end subroutine

! GDK_AVAILABLE_IN_ALL
!GdkContentFormats * gtk_drop_target_async_get_formats (GtkDropTargetAsync *self);
function gtk_drop_target_async_get_formats(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_drop_target_async_get_formats
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_drop_target_async_set_actions (GtkDropTargetAsync *self, GdkDragAction actions);
subroutine gtk_drop_target_async_set_actions(self, actions) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: actions
end subroutine

! GDK_AVAILABLE_IN_ALL
!GdkDragAction gtk_drop_target_async_get_actions (GtkDropTargetAsync *self);
function gtk_drop_target_async_get_actions(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_drop_target_async_get_actions
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_drop_target_async_reject_drop (GtkDropTargetAsync *self, GdkDrop *drop);
subroutine gtk_drop_target_async_reject_drop(self, drop) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: drop
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_tree_store_get_type (void) G_GNUC_CONST;
function gtk_tree_store_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_tree_store_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreeStore *gtk_tree_store_newv (gint n_columns, GType *types);
function gtk_tree_store_newv(n_columns, types) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_tree_store_newv
  integer(c_int), value :: n_columns
  type(c_ptr), value :: types
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_store_set_column_types (GtkTreeStore *tree_store, gint n_columns, GType *types);
subroutine gtk_tree_store_set_column_types(tree_store, n_columns, types)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_store
  integer(c_int), value :: n_columns
  type(c_ptr), value :: types
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_store_set_value (GtkTreeStore *tree_store, GtkTreeIter *iter, gint column, GValue *value);
subroutine gtk_tree_store_set_value(tree_store, iter, column, value) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_store
  type(c_ptr), value :: iter
  integer(c_int), value :: column
  type(c_ptr), value :: value
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_store_set_valuesv (GtkTreeStore *tree_store, GtkTreeIter *iter, gint *columns, GValue *values, gint n_values);
subroutine gtk_tree_store_set_valuesv(tree_store, iter, columns, values,&
& n_values) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_store
  type(c_ptr), value :: iter
  type(c_ptr), value :: columns
  type(c_ptr), value :: values
  integer(c_int), value :: n_values
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_store_set_valist (GtkTreeStore *tree_store, GtkTreeIter *iter, va_list var_args);
subroutine gtk_tree_store_set_valist(tree_store, iter, var_args) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_store
  type(c_ptr), value :: iter
  type(c_ptr), value :: var_args
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_store_remove (GtkTreeStore *tree_store, GtkTreeIter *iter);
function gtk_tree_store_remove(tree_store, iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_store_remove
  type(c_ptr), value :: tree_store
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_store_insert (GtkTreeStore *tree_store, GtkTreeIter *iter, GtkTreeIter *parent, gint position);
subroutine gtk_tree_store_insert(tree_store, iter, parent, position) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_store
  type(c_ptr), value :: iter
  type(c_ptr), value :: parent
  integer(c_int), value :: position
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_store_insert_before (GtkTreeStore *tree_store, GtkTreeIter *iter, GtkTreeIter *parent, GtkTreeIter *sibling);
subroutine gtk_tree_store_insert_before(tree_store, iter, parent, sibling)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_store
  type(c_ptr), value :: iter
  type(c_ptr), value :: parent
  type(c_ptr), value :: sibling
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_store_insert_after (GtkTreeStore *tree_store, GtkTreeIter *iter, GtkTreeIter *parent, GtkTreeIter *sibling);
subroutine gtk_tree_store_insert_after(tree_store, iter, parent, sibling)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_store
  type(c_ptr), value :: iter
  type(c_ptr), value :: parent
  type(c_ptr), value :: sibling
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_store_insert_with_valuesv (GtkTreeStore *tree_store, GtkTreeIter *iter, GtkTreeIter *parent, gint position, gint *columns, GValue *values, gint n_values);
subroutine gtk_tree_store_insert_with_valuesv(tree_store, iter, parent,&
& position, columns, values, n_values) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_store
  type(c_ptr), value :: iter
  type(c_ptr), value :: parent
  integer(c_int), value :: position
  type(c_ptr), value :: columns
  type(c_ptr), value :: values
  integer(c_int), value :: n_values
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_store_prepend (GtkTreeStore *tree_store, GtkTreeIter *iter, GtkTreeIter *parent);
subroutine gtk_tree_store_prepend(tree_store, iter, parent) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_store
  type(c_ptr), value :: iter
  type(c_ptr), value :: parent
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_store_append (GtkTreeStore *tree_store, GtkTreeIter *iter, GtkTreeIter *parent);
subroutine gtk_tree_store_append(tree_store, iter, parent) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_store
  type(c_ptr), value :: iter
  type(c_ptr), value :: parent
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_store_is_ancestor (GtkTreeStore *tree_store, GtkTreeIter *iter, GtkTreeIter *descendant);
function gtk_tree_store_is_ancestor(tree_store, iter, descendant) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_store_is_ancestor
  type(c_ptr), value :: tree_store
  type(c_ptr), value :: iter
  type(c_ptr), value :: descendant
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_tree_store_iter_depth (GtkTreeStore *tree_store, GtkTreeIter *iter);
function gtk_tree_store_iter_depth(tree_store, iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_store_iter_depth
  type(c_ptr), value :: tree_store
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_store_clear (GtkTreeStore *tree_store);
subroutine gtk_tree_store_clear(tree_store) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_store
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_store_iter_is_valid (GtkTreeStore *tree_store, GtkTreeIter *iter);
function gtk_tree_store_iter_is_valid(tree_store, iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_store_iter_is_valid
  type(c_ptr), value :: tree_store
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_store_reorder (GtkTreeStore *tree_store, GtkTreeIter *parent, gint *new_order);
subroutine gtk_tree_store_reorder(tree_store, parent, new_order) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_store
  type(c_ptr), value :: parent
  type(c_ptr), value :: new_order
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_store_swap (GtkTreeStore *tree_store, GtkTreeIter *a, GtkTreeIter *b);
subroutine gtk_tree_store_swap(tree_store, a, b) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_store
  type(c_ptr), value :: a
  type(c_ptr), value :: b
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_store_move_before (GtkTreeStore *tree_store, GtkTreeIter *iter, GtkTreeIter *position);
subroutine gtk_tree_store_move_before(tree_store, iter, position) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_store
  type(c_ptr), value :: iter
  type(c_ptr), value :: position
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_store_move_after (GtkTreeStore *tree_store, GtkTreeIter *iter, GtkTreeIter *position);
subroutine gtk_tree_store_move_after(tree_store, iter, position) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_store
  type(c_ptr), value :: iter
  type(c_ptr), value :: position
end subroutine

! GDK_AVAILABLE_IN_ALL
!GListModel * gtk_tree_list_model_get_model (GtkTreeListModel *self);
function gtk_tree_list_model_get_model(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_list_model_get_model
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_list_model_get_passthrough (GtkTreeListModel *self);
function gtk_tree_list_model_get_passthrough(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_list_model_get_passthrough
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_list_model_set_autoexpand (GtkTreeListModel *self, gboolean autoexpand);
subroutine gtk_tree_list_model_set_autoexpand(self, autoexpand) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: autoexpand
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_list_model_get_autoexpand (GtkTreeListModel *self);
function gtk_tree_list_model_get_autoexpand(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_list_model_get_autoexpand
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreeListRow * gtk_tree_list_model_get_child_row (GtkTreeListModel *self, guint position);
function gtk_tree_list_model_get_child_row(self, position) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_tree_list_model_get_child_row
  type(c_ptr), value :: self
  integer(c_int), value :: position
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreeListRow * gtk_tree_list_model_get_row (GtkTreeListModel *self, guint position);
function gtk_tree_list_model_get_row(self, position) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_tree_list_model_get_row
  type(c_ptr), value :: self
  integer(c_int), value :: position
end function

! GDK_AVAILABLE_IN_ALL
!gpointer gtk_tree_list_row_get_item (GtkTreeListRow *self);
function gtk_tree_list_row_get_item(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_list_row_get_item
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_list_row_set_expanded (GtkTreeListRow *self, gboolean expanded);
subroutine gtk_tree_list_row_set_expanded(self, expanded) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: expanded
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_list_row_get_expanded (GtkTreeListRow *self);
function gtk_tree_list_row_get_expanded(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_list_row_get_expanded
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_list_row_is_expandable (GtkTreeListRow *self);
function gtk_tree_list_row_is_expandable(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_list_row_is_expandable
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!guint gtk_tree_list_row_get_position (GtkTreeListRow *self);
function gtk_tree_list_row_get_position(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_list_row_get_position
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!guint gtk_tree_list_row_get_depth (GtkTreeListRow *self);
function gtk_tree_list_row_get_depth(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_list_row_get_depth
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GListModel * gtk_tree_list_row_get_children (GtkTreeListRow *self);
function gtk_tree_list_row_get_children(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_list_row_get_children
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreeListRow * gtk_tree_list_row_get_parent (GtkTreeListRow *self);
function gtk_tree_list_row_get_parent(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_list_row_get_parent
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreeListRow * gtk_tree_list_row_get_child_row (GtkTreeListRow *self, guint position);
function gtk_tree_list_row_get_child_row(self, position) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_tree_list_row_get_child_row
  type(c_ptr), value :: self
  integer(c_int), value :: position
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_spinner_get_type (void) G_GNUC_CONST;
function gtk_spinner_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_spinner_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_spinner_new (void);
function gtk_spinner_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_spinner_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_spinner_start (GtkSpinner *spinner);
subroutine gtk_spinner_start(spinner) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: spinner
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_spinner_stop (GtkSpinner *spinner);
subroutine gtk_spinner_stop(spinner) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: spinner
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_spinner_set_spinning (GtkSpinner *spinner, gboolean spinning);
subroutine gtk_spinner_set_spinning(spinner, spinning) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: spinner
  integer(c_int), value :: spinning
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_spinner_get_spinning (GtkSpinner *spinner);
function gtk_spinner_get_spinning(spinner) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_spinner_get_spinning
  type(c_ptr), value :: spinner
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_drag_icon_set_child (GtkDragIcon *self, GtkWidget *child);
subroutine gtk_drag_icon_set_child(self, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: child
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_drag_icon_get_child (GtkDragIcon *self);
function gtk_drag_icon_get_child(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_drag_icon_get_child
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_drag_icon_set_from_paintable (GdkDrag *drag, GdkPaintable *paintable, int hot_x, int hot_y);
subroutine gtk_drag_icon_set_from_paintable(drag, paintable, hot_x, hot_y)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: drag
  type(c_ptr), value :: paintable
  integer(c_int), value :: hot_x
  integer(c_int), value :: hot_y
end subroutine

! 
!GtkWidget * gtk_drag_icon_create_widget_for_value (const GValue *value);
function gtk_drag_icon_create_widget_for_value(value) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_drag_icon_create_widget_for_value
  type(c_ptr), value :: value
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_tree_sortable_get_type (void) G_GNUC_CONST;
function gtk_tree_sortable_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_tree_sortable_get_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_sortable_sort_column_changed (GtkTreeSortable *sortable);
subroutine gtk_tree_sortable_sort_column_changed(sortable) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: sortable
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_sortable_get_sort_column_id (GtkTreeSortable *sortable, gint *sort_column_id, GtkSortType *order);
function gtk_tree_sortable_get_sort_column_id(sortable, sort_column_id, order)&
& bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_sortable_get_sort_column_id
  type(c_ptr), value :: sortable
  type(c_ptr), value :: sort_column_id
  integer(c_int), value :: order
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_sortable_set_sort_column_id (GtkTreeSortable *sortable, gint sort_column_id, GtkSortType order);
subroutine gtk_tree_sortable_set_sort_column_id(sortable, sort_column_id,&
& order) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: sortable
  integer(c_int), value :: sort_column_id
  integer(c_int), value :: order
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_sortable_set_sort_func (GtkTreeSortable *sortable, gint sort_column_id, GtkTreeIterCompareFunc sort_func, gpointer user_data, GDestroyNotify destroy);
subroutine gtk_tree_sortable_set_sort_func(sortable, sort_column_id, sort_func,&
& user_data, destroy) bind(c)
  use iso_c_binding, only: c_ptr, c_int, c_funptr
  type(c_ptr), value :: sortable
  integer(c_int), value :: sort_column_id
  type(c_funptr), value :: sort_func
  type(c_ptr), value :: user_data
  type(c_funptr), value :: destroy
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_sortable_set_default_sort_func (GtkTreeSortable *sortable, GtkTreeIterCompareFunc sort_func, gpointer user_data, GDestroyNotify destroy);
subroutine gtk_tree_sortable_set_default_sort_func(sortable, sort_func,&
& user_data, destroy) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: sortable
  type(c_funptr), value :: sort_func
  type(c_ptr), value :: user_data
  type(c_funptr), value :: destroy
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_sortable_has_default_sort_func (GtkTreeSortable *sortable);
function gtk_tree_sortable_has_default_sort_func(sortable) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_sortable_has_default_sort_func
  type(c_ptr), value :: sortable
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_im_context_simple_get_type (void) G_GNUC_CONST;
function gtk_im_context_simple_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_im_context_simple_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkIMContext *gtk_im_context_simple_new (void);
function gtk_im_context_simple_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_im_context_simple_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_im_context_simple_add_table (GtkIMContextSimple *context_simple, guint16 *data, gint max_seq_len, gint n_seqs);
subroutine gtk_im_context_simple_add_table(context_simple, data, max_seq_len,&
& n_seqs) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: context_simple
  type(c_ptr), value :: data
  integer(c_int), value :: max_seq_len
  integer(c_int), value :: n_seqs
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_im_context_simple_add_compose_file (GtkIMContextSimple *context_simple, const gchar *compose_file);
subroutine gtk_im_context_simple_add_compose_file(context_simple, compose_file)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: context_simple
  character(kind=c_char), dimension(*) :: compose_file
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_print_operation_preview_get_type (void) G_GNUC_CONST;
function gtk_print_operation_preview_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_print_operation_preview_get_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_print_operation_preview_render_page (GtkPrintOperationPreview *preview, gint page_nr);
subroutine gtk_print_operation_preview_render_page(preview, page_nr) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: preview
  integer(c_int), value :: page_nr
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_print_operation_preview_end_preview (GtkPrintOperationPreview *preview);
subroutine gtk_print_operation_preview_end_preview(preview) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: preview
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_print_operation_preview_is_selected (GtkPrintOperationPreview *preview, gint page_nr);
function gtk_print_operation_preview_is_selected(preview, page_nr) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_print_operation_preview_is_selected
  type(c_ptr), value :: preview
  integer(c_int), value :: page_nr
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_native_dialog_hide (GtkNativeDialog *self);
subroutine gtk_native_dialog_hide(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_native_dialog_destroy (GtkNativeDialog *self);
subroutine gtk_native_dialog_destroy(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_native_dialog_get_visible (GtkNativeDialog *self);
function gtk_native_dialog_get_visible(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_native_dialog_get_visible
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_native_dialog_set_modal (GtkNativeDialog *self, gboolean modal);
subroutine gtk_native_dialog_set_modal(self, modal) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: modal
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_native_dialog_get_modal (GtkNativeDialog *self);
function gtk_native_dialog_get_modal(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_native_dialog_get_modal
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_native_dialog_set_title (GtkNativeDialog *self, const char *title);
subroutine gtk_native_dialog_set_title(self, title) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: title
end subroutine

! GDK_AVAILABLE_IN_ALL
!const char * gtk_native_dialog_get_title (GtkNativeDialog *self);
function gtk_native_dialog_get_title(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_native_dialog_get_title
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_native_dialog_set_transient_for (GtkNativeDialog *self, GtkWindow *parent);
subroutine gtk_native_dialog_set_transient_for(self, parent) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: parent
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWindow * gtk_native_dialog_get_transient_for (GtkNativeDialog *self);
function gtk_native_dialog_get_transient_for(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_native_dialog_get_transient_for
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_native_dialog_run (GtkNativeDialog *self);
function gtk_native_dialog_run(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_native_dialog_run
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_switch_get_type (void) G_GNUC_CONST;
function gtk_switch_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_switch_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_switch_new (void);
function gtk_switch_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_switch_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_switch_set_active (GtkSwitch *self, gboolean is_active);
subroutine gtk_switch_set_active(self, is_active) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: is_active
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_switch_get_active (GtkSwitch *self);
function gtk_switch_get_active(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_switch_get_active
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_switch_set_state (GtkSwitch *self, gboolean state);
subroutine gtk_switch_set_state(self, state) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: state
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_switch_get_state (GtkSwitch *self);
function gtk_switch_get_state(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_switch_get_state
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_video_new_for_media_stream (GtkMediaStream *stream);
function gtk_video_new_for_media_stream(stream) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_video_new_for_media_stream
  type(c_ptr), value :: stream
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_video_new_for_file (GFile *file);
function gtk_video_new_for_file(file) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_video_new_for_file
  type(c_ptr), value :: file
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_video_new_for_filename (const char *filename);
function gtk_video_new_for_filename(filename) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_video_new_for_filename
  character(kind=c_char), dimension(*) :: filename
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_video_new_for_resource (const char *resource_path);
function gtk_video_new_for_resource(resource_path) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_video_new_for_resource
  character(kind=c_char), dimension(*) :: resource_path
end function

! GDK_AVAILABLE_IN_ALL
!GtkMediaStream *gtk_video_get_media_stream (GtkVideo *self);
function gtk_video_get_media_stream(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_video_get_media_stream
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_video_set_media_stream (GtkVideo *self, GtkMediaStream *stream);
subroutine gtk_video_set_media_stream(self, stream) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: stream
end subroutine

! GDK_AVAILABLE_IN_ALL
!GFile * gtk_video_get_file (GtkVideo *self);
function gtk_video_get_file(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_video_get_file
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_video_set_file (GtkVideo *self, GFile *file);
subroutine gtk_video_set_file(self, file) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: file
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_video_set_filename (GtkVideo *self, const char *filename);
subroutine gtk_video_set_filename(self, filename) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: filename
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_video_set_resource (GtkVideo *self, const char *resource_path);
subroutine gtk_video_set_resource(self, resource_path) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: self
  character(kind=c_char), dimension(*) :: resource_path
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_video_get_autoplay (GtkVideo *self);
function gtk_video_get_autoplay(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_video_get_autoplay
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_video_set_autoplay (GtkVideo *self, gboolean autoplay);
subroutine gtk_video_set_autoplay(self, autoplay) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: autoplay
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_video_get_loop (GtkVideo *self);
function gtk_video_get_loop(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_video_get_loop
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_video_set_loop (GtkVideo *self, gboolean loop);
subroutine gtk_video_set_loop(self, loop) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: loop
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_progress_bar_get_type (void) G_GNUC_CONST;
function gtk_progress_bar_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_progress_bar_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_progress_bar_new (void);
function gtk_progress_bar_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_progress_bar_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_progress_bar_pulse (GtkProgressBar *pbar);
subroutine gtk_progress_bar_pulse(pbar) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: pbar
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_progress_bar_set_text (GtkProgressBar *pbar, const gchar *text);
subroutine gtk_progress_bar_set_text(pbar, text) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: pbar
  character(kind=c_char), dimension(*) :: text
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_progress_bar_set_fraction (GtkProgressBar *pbar, gdouble fraction);
subroutine gtk_progress_bar_set_fraction(pbar, fraction) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: pbar
  real(c_double), value :: fraction
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_progress_bar_set_pulse_step (GtkProgressBar *pbar, gdouble fraction);
subroutine gtk_progress_bar_set_pulse_step(pbar, fraction) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: pbar
  real(c_double), value :: fraction
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_progress_bar_set_inverted (GtkProgressBar *pbar, gboolean inverted);
subroutine gtk_progress_bar_set_inverted(pbar, inverted) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: pbar
  integer(c_int), value :: inverted
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_progress_bar_get_text (GtkProgressBar *pbar);
function gtk_progress_bar_get_text(pbar) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_progress_bar_get_text
  type(c_ptr), value :: pbar
end function

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_progress_bar_get_fraction (GtkProgressBar *pbar);
function gtk_progress_bar_get_fraction(pbar) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_progress_bar_get_fraction
  type(c_ptr), value :: pbar
end function

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_progress_bar_get_pulse_step (GtkProgressBar *pbar);
function gtk_progress_bar_get_pulse_step(pbar) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_progress_bar_get_pulse_step
  type(c_ptr), value :: pbar
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_progress_bar_get_inverted (GtkProgressBar *pbar);
function gtk_progress_bar_get_inverted(pbar) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_progress_bar_get_inverted
  type(c_ptr), value :: pbar
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_progress_bar_set_ellipsize (GtkProgressBar *pbar, PangoEllipsizeMode mode);
subroutine gtk_progress_bar_set_ellipsize(pbar, mode) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: pbar
  integer(c_int), value :: mode
end subroutine

! GDK_AVAILABLE_IN_ALL
!PangoEllipsizeMode gtk_progress_bar_get_ellipsize (GtkProgressBar *pbar);
function gtk_progress_bar_get_ellipsize(pbar) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_progress_bar_get_ellipsize
  type(c_ptr), value :: pbar
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_progress_bar_set_show_text (GtkProgressBar *pbar, gboolean show_text);
subroutine gtk_progress_bar_set_show_text(pbar, show_text) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: pbar
  integer(c_int), value :: show_text
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_progress_bar_get_show_text (GtkProgressBar *pbar);
function gtk_progress_bar_get_show_text(pbar) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_progress_bar_get_show_text
  type(c_ptr), value :: pbar
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_font_chooser_get_type (void) G_GNUC_CONST;
function gtk_font_chooser_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_font_chooser_get_type
end function

! GDK_AVAILABLE_IN_ALL
!PangoFontFamily *gtk_font_chooser_get_font_family (GtkFontChooser *fontchooser);
function gtk_font_chooser_get_font_family(fontchooser) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_font_chooser_get_font_family
  type(c_ptr), value :: fontchooser
end function

! GDK_AVAILABLE_IN_ALL
!PangoFontFace *gtk_font_chooser_get_font_face (GtkFontChooser *fontchooser);
function gtk_font_chooser_get_font_face(fontchooser) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_font_chooser_get_font_face
  type(c_ptr), value :: fontchooser
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_font_chooser_get_font_size (GtkFontChooser *fontchooser);
function gtk_font_chooser_get_font_size(fontchooser) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_font_chooser_get_font_size
  type(c_ptr), value :: fontchooser
end function

! 
!PangoFontDescription * gtk_font_chooser_get_font_desc (GtkFontChooser *fontchooser);
function gtk_font_chooser_get_font_desc(fontchooser) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_font_chooser_get_font_desc
  type(c_ptr), value :: fontchooser
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_font_chooser_set_font_desc (GtkFontChooser *fontchooser, const PangoFontDescription *font_desc);
subroutine gtk_font_chooser_set_font_desc(fontchooser, font_desc) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: fontchooser
  type(c_ptr), value :: font_desc
end subroutine

! GDK_AVAILABLE_IN_ALL
!gchar* gtk_font_chooser_get_font (GtkFontChooser *fontchooser);
function gtk_font_chooser_get_font(fontchooser) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_font_chooser_get_font
  type(c_ptr), value :: fontchooser
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_font_chooser_set_font (GtkFontChooser *fontchooser, const gchar *fontname);
subroutine gtk_font_chooser_set_font(fontchooser, fontname) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: fontchooser
  character(kind=c_char), dimension(*) :: fontname
end subroutine

! GDK_AVAILABLE_IN_ALL
!gchar* gtk_font_chooser_get_preview_text (GtkFontChooser *fontchooser);
function gtk_font_chooser_get_preview_text(fontchooser) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_font_chooser_get_preview_text
  type(c_ptr), value :: fontchooser
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_font_chooser_set_preview_text (GtkFontChooser *fontchooser, const gchar *text);
subroutine gtk_font_chooser_set_preview_text(fontchooser, text) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: fontchooser
  character(kind=c_char), dimension(*) :: text
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_font_chooser_get_show_preview_entry (GtkFontChooser *fontchooser);
function gtk_font_chooser_get_show_preview_entry(fontchooser) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_font_chooser_get_show_preview_entry
  type(c_ptr), value :: fontchooser
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_font_chooser_set_show_preview_entry (GtkFontChooser *fontchooser, gboolean show_preview_entry);
subroutine gtk_font_chooser_set_show_preview_entry(fontchooser,&
& show_preview_entry) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: fontchooser
  integer(c_int), value :: show_preview_entry
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_font_chooser_set_filter_func (GtkFontChooser *fontchooser, GtkFontFilterFunc filter, gpointer user_data, GDestroyNotify destroy);
subroutine gtk_font_chooser_set_filter_func(fontchooser, filter, user_data,&
& destroy) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: fontchooser
  type(c_funptr), value :: filter
  type(c_ptr), value :: user_data
  type(c_funptr), value :: destroy
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_font_chooser_set_font_map (GtkFontChooser *fontchooser, PangoFontMap *fontmap);
subroutine gtk_font_chooser_set_font_map(fontchooser, fontmap) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: fontchooser
  type(c_ptr), value :: fontmap
end subroutine

! GDK_AVAILABLE_IN_ALL
!PangoFontMap * gtk_font_chooser_get_font_map (GtkFontChooser *fontchooser);
function gtk_font_chooser_get_font_map(fontchooser) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_font_chooser_get_font_map
  type(c_ptr), value :: fontchooser
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_font_chooser_set_level (GtkFontChooser *fontchooser, GtkFontChooserLevel level);
subroutine gtk_font_chooser_set_level(fontchooser, level) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: fontchooser
  integer(c_int), value :: level
end subroutine

! 
!GtkFontChooserLevel gtk_font_chooser_get_level (GtkFontChooser *fontchooser);
function gtk_font_chooser_get_level(fontchooser) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_font_chooser_get_level
  type(c_ptr), value :: fontchooser
end function

! GDK_AVAILABLE_IN_ALL
!char * gtk_font_chooser_get_font_features (GtkFontChooser *fontchooser);
function gtk_font_chooser_get_font_features(fontchooser) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_font_chooser_get_font_features
  type(c_ptr), value :: fontchooser
end function

! GDK_AVAILABLE_IN_ALL
!char * gtk_font_chooser_get_language (GtkFontChooser *fontchooser);
function gtk_font_chooser_get_language(fontchooser) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_font_chooser_get_language
  type(c_ptr), value :: fontchooser
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_font_chooser_set_language (GtkFontChooser *fontchooser, const char *language);
subroutine gtk_font_chooser_set_language(fontchooser, language) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: fontchooser
  character(kind=c_char), dimension(*) :: language
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_separator_get_type (void) G_GNUC_CONST;
function gtk_separator_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_separator_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_separator_new (GtkOrientation orientation);
function gtk_separator_new(orientation) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_separator_new
  integer(c_int), value :: orientation
end function

! GDK_AVAILABLE_IN_ALL
!GtkMediaStream *gtk_media_controls_get_media_stream (GtkMediaControls *controls);
function gtk_media_controls_get_media_stream(controls) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_media_controls_get_media_stream
  type(c_ptr), value :: controls
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_media_controls_set_media_stream (GtkMediaControls *controls, GtkMediaStream *stream);
subroutine gtk_media_controls_set_media_stream(controls, stream) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: controls
  type(c_ptr), value :: stream
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_tree_view_column_get_type (void) G_GNUC_CONST;
function gtk_tree_view_column_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_tree_view_column_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreeViewColumn *gtk_tree_view_column_new (void);
function gtk_tree_view_column_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_view_column_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreeViewColumn *gtk_tree_view_column_new_with_area (GtkCellArea *area);
function gtk_tree_view_column_new_with_area(area) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_view_column_new_with_area
  type(c_ptr), value :: area
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_pack_start (GtkTreeViewColumn *tree_column, GtkCellRenderer *cell, gboolean expand);
subroutine gtk_tree_view_column_pack_start(tree_column, cell, expand) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_column
  type(c_ptr), value :: cell
  integer(c_int), value :: expand
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_pack_end (GtkTreeViewColumn *tree_column, GtkCellRenderer *cell, gboolean expand);
subroutine gtk_tree_view_column_pack_end(tree_column, cell, expand) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_column
  type(c_ptr), value :: cell
  integer(c_int), value :: expand
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_clear (GtkTreeViewColumn *tree_column);
subroutine gtk_tree_view_column_clear(tree_column) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_column
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_add_attribute (GtkTreeViewColumn *tree_column, GtkCellRenderer *cell_renderer, const gchar *attribute, gint column);
subroutine gtk_tree_view_column_add_attribute(tree_column, cell_renderer,&
& attribute, column) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int
  type(c_ptr), value :: tree_column
  type(c_ptr), value :: cell_renderer
  character(kind=c_char), dimension(*) :: attribute
  integer(c_int), value :: column
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_set_cell_data_func (GtkTreeViewColumn *tree_column, GtkCellRenderer *cell_renderer, GtkTreeCellDataFunc func, gpointer func_data, GDestroyNotify destroy);
subroutine gtk_tree_view_column_set_cell_data_func(tree_column, cell_renderer,&
& func, func_data, destroy) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: tree_column
  type(c_ptr), value :: cell_renderer
  type(c_funptr), value :: func
  type(c_ptr), value :: func_data
  type(c_funptr), value :: destroy
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_clear_attributes (GtkTreeViewColumn *tree_column, GtkCellRenderer *cell_renderer);
subroutine gtk_tree_view_column_clear_attributes(tree_column, cell_renderer)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_column
  type(c_ptr), value :: cell_renderer
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_set_spacing (GtkTreeViewColumn *tree_column, gint spacing);
subroutine gtk_tree_view_column_set_spacing(tree_column, spacing) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_column
  integer(c_int), value :: spacing
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_tree_view_column_get_spacing (GtkTreeViewColumn *tree_column);
function gtk_tree_view_column_get_spacing(tree_column) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_column_get_spacing
  type(c_ptr), value :: tree_column
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_set_visible (GtkTreeViewColumn *tree_column, gboolean visible);
subroutine gtk_tree_view_column_set_visible(tree_column, visible) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_column
  integer(c_int), value :: visible
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_column_get_visible (GtkTreeViewColumn *tree_column);
function gtk_tree_view_column_get_visible(tree_column) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_column_get_visible
  type(c_ptr), value :: tree_column
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_set_resizable (GtkTreeViewColumn *tree_column, gboolean resizable);
subroutine gtk_tree_view_column_set_resizable(tree_column, resizable) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_column
  integer(c_int), value :: resizable
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_column_get_resizable (GtkTreeViewColumn *tree_column);
function gtk_tree_view_column_get_resizable(tree_column) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_column_get_resizable
  type(c_ptr), value :: tree_column
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_set_sizing (GtkTreeViewColumn *tree_column, GtkTreeViewColumnSizing type);
subroutine gtk_tree_view_column_set_sizing(tree_column, type) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_column
  integer(c_int), value :: type
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkTreeViewColumnSizing gtk_tree_view_column_get_sizing (GtkTreeViewColumn *tree_column);
function gtk_tree_view_column_get_sizing(tree_column) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_column_get_sizing
  type(c_ptr), value :: tree_column
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_tree_view_column_get_x_offset (GtkTreeViewColumn *tree_column);
function gtk_tree_view_column_get_x_offset(tree_column) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_column_get_x_offset
  type(c_ptr), value :: tree_column
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_tree_view_column_get_width (GtkTreeViewColumn *tree_column);
function gtk_tree_view_column_get_width(tree_column) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_column_get_width
  type(c_ptr), value :: tree_column
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_tree_view_column_get_fixed_width (GtkTreeViewColumn *tree_column);
function gtk_tree_view_column_get_fixed_width(tree_column) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_column_get_fixed_width
  type(c_ptr), value :: tree_column
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_set_fixed_width (GtkTreeViewColumn *tree_column, gint fixed_width);
subroutine gtk_tree_view_column_set_fixed_width(tree_column, fixed_width)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_column
  integer(c_int), value :: fixed_width
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_set_min_width (GtkTreeViewColumn *tree_column, gint min_width);
subroutine gtk_tree_view_column_set_min_width(tree_column, min_width) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_column
  integer(c_int), value :: min_width
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_tree_view_column_get_min_width (GtkTreeViewColumn *tree_column);
function gtk_tree_view_column_get_min_width(tree_column) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_column_get_min_width
  type(c_ptr), value :: tree_column
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_set_max_width (GtkTreeViewColumn *tree_column, gint max_width);
subroutine gtk_tree_view_column_set_max_width(tree_column, max_width) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_column
  integer(c_int), value :: max_width
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_tree_view_column_get_max_width (GtkTreeViewColumn *tree_column);
function gtk_tree_view_column_get_max_width(tree_column) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_column_get_max_width
  type(c_ptr), value :: tree_column
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_clicked (GtkTreeViewColumn *tree_column);
subroutine gtk_tree_view_column_clicked(tree_column) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_column
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_set_title (GtkTreeViewColumn *tree_column, const gchar *title);
subroutine gtk_tree_view_column_set_title(tree_column, title) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: tree_column
  character(kind=c_char), dimension(*) :: title
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_tree_view_column_get_title (GtkTreeViewColumn *tree_column);
function gtk_tree_view_column_get_title(tree_column) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_view_column_get_title
  type(c_ptr), value :: tree_column
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_set_expand (GtkTreeViewColumn *tree_column, gboolean expand);
subroutine gtk_tree_view_column_set_expand(tree_column, expand) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_column
  integer(c_int), value :: expand
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_column_get_expand (GtkTreeViewColumn *tree_column);
function gtk_tree_view_column_get_expand(tree_column) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_column_get_expand
  type(c_ptr), value :: tree_column
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_set_clickable (GtkTreeViewColumn *tree_column, gboolean clickable);
subroutine gtk_tree_view_column_set_clickable(tree_column, clickable) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_column
  integer(c_int), value :: clickable
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_column_get_clickable (GtkTreeViewColumn *tree_column);
function gtk_tree_view_column_get_clickable(tree_column) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_column_get_clickable
  type(c_ptr), value :: tree_column
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_set_widget (GtkTreeViewColumn *tree_column, GtkWidget *widget);
subroutine gtk_tree_view_column_set_widget(tree_column, widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_column
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_tree_view_column_get_widget (GtkTreeViewColumn *tree_column);
function gtk_tree_view_column_get_widget(tree_column) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_view_column_get_widget
  type(c_ptr), value :: tree_column
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_set_alignment (GtkTreeViewColumn *tree_column, gfloat xalign);
subroutine gtk_tree_view_column_set_alignment(tree_column, xalign) bind(c)
  use iso_c_binding, only: c_ptr, c_float
  type(c_ptr), value :: tree_column
  real(c_float), value :: xalign
end subroutine

! GDK_AVAILABLE_IN_ALL
!gfloat gtk_tree_view_column_get_alignment (GtkTreeViewColumn *tree_column);
function gtk_tree_view_column_get_alignment(tree_column) bind(c)
  use iso_c_binding, only: c_float, c_ptr
  real(c_float) :: gtk_tree_view_column_get_alignment
  type(c_ptr), value :: tree_column
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_set_reorderable (GtkTreeViewColumn *tree_column, gboolean reorderable);
subroutine gtk_tree_view_column_set_reorderable(tree_column, reorderable)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_column
  integer(c_int), value :: reorderable
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_column_get_reorderable (GtkTreeViewColumn *tree_column);
function gtk_tree_view_column_get_reorderable(tree_column) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_column_get_reorderable
  type(c_ptr), value :: tree_column
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_set_sort_column_id (GtkTreeViewColumn *tree_column, gint sort_column_id);
subroutine gtk_tree_view_column_set_sort_column_id(tree_column, sort_column_id)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_column
  integer(c_int), value :: sort_column_id
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_tree_view_column_get_sort_column_id (GtkTreeViewColumn *tree_column);
function gtk_tree_view_column_get_sort_column_id(tree_column) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_column_get_sort_column_id
  type(c_ptr), value :: tree_column
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_set_sort_indicator (GtkTreeViewColumn *tree_column, gboolean setting);
subroutine gtk_tree_view_column_set_sort_indicator(tree_column, setting)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_column
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_column_get_sort_indicator (GtkTreeViewColumn *tree_column);
function gtk_tree_view_column_get_sort_indicator(tree_column) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_column_get_sort_indicator
  type(c_ptr), value :: tree_column
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_set_sort_order (GtkTreeViewColumn *tree_column, GtkSortType order);
subroutine gtk_tree_view_column_set_sort_order(tree_column, order) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_column
  integer(c_int), value :: order
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkSortType gtk_tree_view_column_get_sort_order (GtkTreeViewColumn *tree_column);
function gtk_tree_view_column_get_sort_order(tree_column) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_column_get_sort_order
  type(c_ptr), value :: tree_column
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_cell_set_cell_data (GtkTreeViewColumn *tree_column, GtkTreeModel *tree_model, GtkTreeIter *iter, gboolean is_expander, gboolean is_expanded);
subroutine gtk_tree_view_column_cell_set_cell_data(tree_column, tree_model,&
& iter, is_expander, is_expanded) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: tree_column
  type(c_ptr), value :: tree_model
  type(c_ptr), value :: iter
  integer(c_int), value :: is_expander
  integer(c_int), value :: is_expanded
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_cell_get_size (GtkTreeViewColumn *tree_column, int *x_offset, int *y_offset, int *width, int *height);
subroutine gtk_tree_view_column_cell_get_size(tree_column, x_offset, y_offset,&
& width, height) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_column
  type(c_ptr), value :: x_offset
  type(c_ptr), value :: y_offset
  type(c_ptr), value :: width
  type(c_ptr), value :: height
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_column_cell_is_visible (GtkTreeViewColumn *tree_column);
function gtk_tree_view_column_cell_is_visible(tree_column) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_column_cell_is_visible
  type(c_ptr), value :: tree_column
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_focus_cell (GtkTreeViewColumn *tree_column, GtkCellRenderer *cell);
subroutine gtk_tree_view_column_focus_cell(tree_column, cell) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_column
  type(c_ptr), value :: cell
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_view_column_cell_get_position (GtkTreeViewColumn *tree_column, GtkCellRenderer *cell_renderer, gint *x_offset, gint *width);
function gtk_tree_view_column_cell_get_position(tree_column, cell_renderer,&
& x_offset, width) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_view_column_cell_get_position
  type(c_ptr), value :: tree_column
  type(c_ptr), value :: cell_renderer
  type(c_ptr), value :: x_offset
  type(c_ptr), value :: width
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_view_column_queue_resize (GtkTreeViewColumn *tree_column);
subroutine gtk_tree_view_column_queue_resize(tree_column) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: tree_column
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_tree_view_column_get_tree_view (GtkTreeViewColumn *tree_column);
function gtk_tree_view_column_get_tree_view(tree_column) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_view_column_get_tree_view
  type(c_ptr), value :: tree_column
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_tree_view_column_get_button (GtkTreeViewColumn *tree_column);
function gtk_tree_view_column_get_button(tree_column) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_view_column_get_button
  type(c_ptr), value :: tree_column
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_text_buffer_get_type (void) G_GNUC_CONST;
function gtk_text_buffer_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_text_buffer_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkTextBuffer *gtk_text_buffer_new (GtkTextTagTable *table);
function gtk_text_buffer_new(table) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_buffer_new
  type(c_ptr), value :: table
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_text_buffer_get_line_count (GtkTextBuffer *buffer);
function gtk_text_buffer_get_line_count(buffer) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_buffer_get_line_count
  type(c_ptr), value :: buffer
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_text_buffer_get_char_count (GtkTextBuffer *buffer);
function gtk_text_buffer_get_char_count(buffer) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_buffer_get_char_count
  type(c_ptr), value :: buffer
end function

! GDK_AVAILABLE_IN_ALL
!GtkTextTagTable* gtk_text_buffer_get_tag_table (GtkTextBuffer *buffer);
function gtk_text_buffer_get_tag_table(buffer) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_buffer_get_tag_table
  type(c_ptr), value :: buffer
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_set_text (GtkTextBuffer *buffer, const gchar *text, gint len);
subroutine gtk_text_buffer_set_text(buffer, text, len) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int
  type(c_ptr), value :: buffer
  character(kind=c_char), dimension(*) :: text
  integer(c_int), value :: len
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_insert (GtkTextBuffer *buffer, GtkTextIter *iter, const gchar *text, gint len);
subroutine gtk_text_buffer_insert(buffer, iter, text, len) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int
  type(c_ptr), value :: buffer
  type(c_ptr), value :: iter
  character(kind=c_char), dimension(*) :: text
  integer(c_int), value :: len
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_insert_at_cursor (GtkTextBuffer *buffer, const gchar *text, gint len);
subroutine gtk_text_buffer_insert_at_cursor(buffer, text, len) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int
  type(c_ptr), value :: buffer
  character(kind=c_char), dimension(*) :: text
  integer(c_int), value :: len
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_buffer_insert_interactive (GtkTextBuffer *buffer, GtkTextIter *iter, const gchar *text, gint len, gboolean default_editable);
function gtk_text_buffer_insert_interactive(buffer, iter, text, len,&
& default_editable) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_text_buffer_insert_interactive
  type(c_ptr), value :: buffer
  type(c_ptr), value :: iter
  character(kind=c_char), dimension(*) :: text
  integer(c_int), value :: len
  integer(c_int), value :: default_editable
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_buffer_insert_interactive_at_cursor (GtkTextBuffer *buffer, const gchar *text, gint len, gboolean default_editable);
function gtk_text_buffer_insert_interactive_at_cursor(buffer, text, len,&
& default_editable) bind(c)
  use iso_c_binding, only: c_int, c_ptr, c_char
  integer(c_int) :: gtk_text_buffer_insert_interactive_at_cursor
  type(c_ptr), value :: buffer
  character(kind=c_char), dimension(*) :: text
  integer(c_int), value :: len
  integer(c_int), value :: default_editable
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_insert_range (GtkTextBuffer *buffer, GtkTextIter *iter, const GtkTextIter *start, const GtkTextIter *end);
subroutine gtk_text_buffer_insert_range(buffer, iter, start, end) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
  type(c_ptr), value :: iter
  type(c_ptr), value :: start
  type(c_ptr), value :: end
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_buffer_insert_range_interactive (GtkTextBuffer *buffer, GtkTextIter *iter, const GtkTextIter *start, const GtkTextIter *end, gboolean default_editable);
function gtk_text_buffer_insert_range_interactive(buffer, iter, start, end,&
& default_editable) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_buffer_insert_range_interactive
  type(c_ptr), value :: buffer
  type(c_ptr), value :: iter
  type(c_ptr), value :: start
  type(c_ptr), value :: end
  integer(c_int), value :: default_editable
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_insert_markup (GtkTextBuffer *buffer, GtkTextIter *iter, const gchar *markup, gint len);
subroutine gtk_text_buffer_insert_markup(buffer, iter, markup, len) bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int
  type(c_ptr), value :: buffer
  type(c_ptr), value :: iter
  character(kind=c_char), dimension(*) :: markup
  integer(c_int), value :: len
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_delete (GtkTextBuffer *buffer, GtkTextIter *start, GtkTextIter *end);
subroutine gtk_text_buffer_delete(buffer, start, end) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
  type(c_ptr), value :: start
  type(c_ptr), value :: end
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_buffer_delete_interactive (GtkTextBuffer *buffer, GtkTextIter *start_iter, GtkTextIter *end_iter, gboolean default_editable);
function gtk_text_buffer_delete_interactive(buffer, start_iter, end_iter,&
& default_editable) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_buffer_delete_interactive
  type(c_ptr), value :: buffer
  type(c_ptr), value :: start_iter
  type(c_ptr), value :: end_iter
  integer(c_int), value :: default_editable
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_buffer_backspace (GtkTextBuffer *buffer, GtkTextIter *iter, gboolean interactive, gboolean default_editable);
function gtk_text_buffer_backspace(buffer, iter, interactive, default_editable)&
& bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_buffer_backspace
  type(c_ptr), value :: buffer
  type(c_ptr), value :: iter
  integer(c_int), value :: interactive
  integer(c_int), value :: default_editable
end function

! GDK_AVAILABLE_IN_ALL
!gchar *gtk_text_buffer_get_text (GtkTextBuffer *buffer, const GtkTextIter *start, const GtkTextIter *end, gboolean include_hidden_chars);
function gtk_text_buffer_get_text(buffer, start, end, include_hidden_chars)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_text_buffer_get_text
  type(c_ptr), value :: buffer
  type(c_ptr), value :: start
  type(c_ptr), value :: end
  integer(c_int), value :: include_hidden_chars
end function

! GDK_AVAILABLE_IN_ALL
!gchar *gtk_text_buffer_get_slice (GtkTextBuffer *buffer, const GtkTextIter *start, const GtkTextIter *end, gboolean include_hidden_chars);
function gtk_text_buffer_get_slice(buffer, start, end, include_hidden_chars)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_text_buffer_get_slice
  type(c_ptr), value :: buffer
  type(c_ptr), value :: start
  type(c_ptr), value :: end
  integer(c_int), value :: include_hidden_chars
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_insert_paintable (GtkTextBuffer *buffer, GtkTextIter *iter, GdkPaintable *paintable);
subroutine gtk_text_buffer_insert_paintable(buffer, iter, paintable) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
  type(c_ptr), value :: iter
  type(c_ptr), value :: paintable
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_insert_child_anchor (GtkTextBuffer *buffer, GtkTextIter *iter, GtkTextChildAnchor *anchor);
subroutine gtk_text_buffer_insert_child_anchor(buffer, iter, anchor) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
  type(c_ptr), value :: iter
  type(c_ptr), value :: anchor
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkTextChildAnchor *gtk_text_buffer_create_child_anchor (GtkTextBuffer *buffer, GtkTextIter *iter);
function gtk_text_buffer_create_child_anchor(buffer, iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_buffer_create_child_anchor
  type(c_ptr), value :: buffer
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_add_mark (GtkTextBuffer *buffer, GtkTextMark *mark, const GtkTextIter *where);
subroutine gtk_text_buffer_add_mark(buffer, mark, where) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
  type(c_ptr), value :: mark
  type(c_ptr), value :: where
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkTextMark *gtk_text_buffer_create_mark (GtkTextBuffer *buffer, const gchar *mark_name, const GtkTextIter *where, gboolean left_gravity);
function gtk_text_buffer_create_mark(buffer, mark_name, where, left_gravity)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_char, c_int
  type(c_ptr) :: gtk_text_buffer_create_mark
  type(c_ptr), value :: buffer
  character(kind=c_char), dimension(*) :: mark_name
  type(c_ptr), value :: where
  integer(c_int), value :: left_gravity
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_move_mark (GtkTextBuffer *buffer, GtkTextMark *mark, const GtkTextIter *where);
subroutine gtk_text_buffer_move_mark(buffer, mark, where) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
  type(c_ptr), value :: mark
  type(c_ptr), value :: where
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_delete_mark (GtkTextBuffer *buffer, GtkTextMark *mark);
subroutine gtk_text_buffer_delete_mark(buffer, mark) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
  type(c_ptr), value :: mark
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkTextMark* gtk_text_buffer_get_mark (GtkTextBuffer *buffer, const gchar *name);
function gtk_text_buffer_get_mark(buffer, name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_text_buffer_get_mark
  type(c_ptr), value :: buffer
  character(kind=c_char), dimension(*) :: name
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_move_mark_by_name (GtkTextBuffer *buffer, const gchar *name, const GtkTextIter *where);
subroutine gtk_text_buffer_move_mark_by_name(buffer, name, where) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: buffer
  character(kind=c_char), dimension(*) :: name
  type(c_ptr), value :: where
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_delete_mark_by_name (GtkTextBuffer *buffer, const gchar *name);
subroutine gtk_text_buffer_delete_mark_by_name(buffer, name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: buffer
  character(kind=c_char), dimension(*) :: name
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkTextMark* gtk_text_buffer_get_insert (GtkTextBuffer *buffer);
function gtk_text_buffer_get_insert(buffer) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_buffer_get_insert
  type(c_ptr), value :: buffer
end function

! GDK_AVAILABLE_IN_ALL
!GtkTextMark* gtk_text_buffer_get_selection_bound (GtkTextBuffer *buffer);
function gtk_text_buffer_get_selection_bound(buffer) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_buffer_get_selection_bound
  type(c_ptr), value :: buffer
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_place_cursor (GtkTextBuffer *buffer, const GtkTextIter *where);
subroutine gtk_text_buffer_place_cursor(buffer, where) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
  type(c_ptr), value :: where
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_select_range (GtkTextBuffer *buffer, const GtkTextIter *ins, const GtkTextIter *bound);
subroutine gtk_text_buffer_select_range(buffer, ins, bound) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
  type(c_ptr), value :: ins
  type(c_ptr), value :: bound
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_apply_tag (GtkTextBuffer *buffer, GtkTextTag *tag, const GtkTextIter *start, const GtkTextIter *end);
subroutine gtk_text_buffer_apply_tag(buffer, tag, start, end) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
  type(c_ptr), value :: tag
  type(c_ptr), value :: start
  type(c_ptr), value :: end
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_remove_tag (GtkTextBuffer *buffer, GtkTextTag *tag, const GtkTextIter *start, const GtkTextIter *end);
subroutine gtk_text_buffer_remove_tag(buffer, tag, start, end) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
  type(c_ptr), value :: tag
  type(c_ptr), value :: start
  type(c_ptr), value :: end
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_apply_tag_by_name (GtkTextBuffer *buffer, const gchar *name, const GtkTextIter *start, const GtkTextIter *end);
subroutine gtk_text_buffer_apply_tag_by_name(buffer, name, start, end) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: buffer
  character(kind=c_char), dimension(*) :: name
  type(c_ptr), value :: start
  type(c_ptr), value :: end
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_remove_tag_by_name (GtkTextBuffer *buffer, const gchar *name, const GtkTextIter *start, const GtkTextIter *end);
subroutine gtk_text_buffer_remove_tag_by_name(buffer, name, start, end) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: buffer
  character(kind=c_char), dimension(*) :: name
  type(c_ptr), value :: start
  type(c_ptr), value :: end
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_remove_all_tags (GtkTextBuffer *buffer, const GtkTextIter *start, const GtkTextIter *end);
subroutine gtk_text_buffer_remove_all_tags(buffer, start, end) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
  type(c_ptr), value :: start
  type(c_ptr), value :: end
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_get_iter_at_line_offset (GtkTextBuffer *buffer, GtkTextIter *iter, gint line_number, gint char_offset);
subroutine gtk_text_buffer_get_iter_at_line_offset(buffer, iter, line_number,&
& char_offset) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: buffer
  type(c_ptr), value :: iter
  integer(c_int), value :: line_number
  integer(c_int), value :: char_offset
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_get_iter_at_line_index (GtkTextBuffer *buffer, GtkTextIter *iter, gint line_number, gint byte_index);
subroutine gtk_text_buffer_get_iter_at_line_index(buffer, iter, line_number,&
& byte_index) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: buffer
  type(c_ptr), value :: iter
  integer(c_int), value :: line_number
  integer(c_int), value :: byte_index
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_get_iter_at_offset (GtkTextBuffer *buffer, GtkTextIter *iter, gint char_offset);
subroutine gtk_text_buffer_get_iter_at_offset(buffer, iter, char_offset)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: buffer
  type(c_ptr), value :: iter
  integer(c_int), value :: char_offset
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_get_iter_at_line (GtkTextBuffer *buffer, GtkTextIter *iter, gint line_number);
subroutine gtk_text_buffer_get_iter_at_line(buffer, iter, line_number) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: buffer
  type(c_ptr), value :: iter
  integer(c_int), value :: line_number
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_get_start_iter (GtkTextBuffer *buffer, GtkTextIter *iter);
subroutine gtk_text_buffer_get_start_iter(buffer, iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
  type(c_ptr), value :: iter
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_get_end_iter (GtkTextBuffer *buffer, GtkTextIter *iter);
subroutine gtk_text_buffer_get_end_iter(buffer, iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
  type(c_ptr), value :: iter
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_get_bounds (GtkTextBuffer *buffer, GtkTextIter *start, GtkTextIter *end);
subroutine gtk_text_buffer_get_bounds(buffer, start, end) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
  type(c_ptr), value :: start
  type(c_ptr), value :: end
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_get_iter_at_mark (GtkTextBuffer *buffer, GtkTextIter *iter, GtkTextMark *mark);
subroutine gtk_text_buffer_get_iter_at_mark(buffer, iter, mark) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
  type(c_ptr), value :: iter
  type(c_ptr), value :: mark
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_get_iter_at_child_anchor (GtkTextBuffer *buffer, GtkTextIter *iter, GtkTextChildAnchor *anchor);
subroutine gtk_text_buffer_get_iter_at_child_anchor(buffer, iter, anchor)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
  type(c_ptr), value :: iter
  type(c_ptr), value :: anchor
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_buffer_get_modified (GtkTextBuffer *buffer);
function gtk_text_buffer_get_modified(buffer) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_buffer_get_modified
  type(c_ptr), value :: buffer
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_set_modified (GtkTextBuffer *buffer, gboolean setting);
subroutine gtk_text_buffer_set_modified(buffer, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: buffer
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_buffer_get_has_selection (GtkTextBuffer *buffer);
function gtk_text_buffer_get_has_selection(buffer) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_buffer_get_has_selection
  type(c_ptr), value :: buffer
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_add_selection_clipboard (GtkTextBuffer *buffer, GdkClipboard *clipboard);
subroutine gtk_text_buffer_add_selection_clipboard(buffer, clipboard) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
  type(c_ptr), value :: clipboard
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_remove_selection_clipboard (GtkTextBuffer *buffer, GdkClipboard *clipboard);
subroutine gtk_text_buffer_remove_selection_clipboard(buffer, clipboard)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
  type(c_ptr), value :: clipboard
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_cut_clipboard (GtkTextBuffer *buffer, GdkClipboard *clipboard, gboolean default_editable);
subroutine gtk_text_buffer_cut_clipboard(buffer, clipboard, default_editable)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: buffer
  type(c_ptr), value :: clipboard
  integer(c_int), value :: default_editable
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_copy_clipboard (GtkTextBuffer *buffer, GdkClipboard *clipboard);
subroutine gtk_text_buffer_copy_clipboard(buffer, clipboard) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
  type(c_ptr), value :: clipboard
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_paste_clipboard (GtkTextBuffer *buffer, GdkClipboard *clipboard, GtkTextIter *override_location, gboolean default_editable);
subroutine gtk_text_buffer_paste_clipboard(buffer, clipboard,&
& override_location, default_editable) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: buffer
  type(c_ptr), value :: clipboard
  type(c_ptr), value :: override_location
  integer(c_int), value :: default_editable
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_buffer_get_selection_bounds (GtkTextBuffer *buffer, GtkTextIter *start, GtkTextIter *end);
function gtk_text_buffer_get_selection_bounds(buffer, start, end) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_buffer_get_selection_bounds
  type(c_ptr), value :: buffer
  type(c_ptr), value :: start
  type(c_ptr), value :: end
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_buffer_delete_selection (GtkTextBuffer *buffer, gboolean interactive, gboolean default_editable);
function gtk_text_buffer_delete_selection(buffer, interactive,&
& default_editable) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_buffer_delete_selection
  type(c_ptr), value :: buffer
  integer(c_int), value :: interactive
  integer(c_int), value :: default_editable
end function

! 
!GdkContentProvider * gtk_text_buffer_get_selection_content (GtkTextBuffer *buffer);
function gtk_text_buffer_get_selection_content(buffer) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_text_buffer_get_selection_content
  type(c_ptr), value :: buffer
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_buffer_get_can_undo (GtkTextBuffer *buffer);
function gtk_text_buffer_get_can_undo(buffer) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_buffer_get_can_undo
  type(c_ptr), value :: buffer
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_buffer_get_can_redo (GtkTextBuffer *buffer);
function gtk_text_buffer_get_can_redo(buffer) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_buffer_get_can_redo
  type(c_ptr), value :: buffer
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_text_buffer_get_enable_undo (GtkTextBuffer *buffer);
function gtk_text_buffer_get_enable_undo(buffer) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_buffer_get_enable_undo
  type(c_ptr), value :: buffer
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_set_enable_undo (GtkTextBuffer *buffer, gboolean enable_undo);
subroutine gtk_text_buffer_set_enable_undo(buffer, enable_undo) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: buffer
  integer(c_int), value :: enable_undo
end subroutine

! GDK_AVAILABLE_IN_ALL
!guint gtk_text_buffer_get_max_undo_levels (GtkTextBuffer *buffer);
function gtk_text_buffer_get_max_undo_levels(buffer) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_text_buffer_get_max_undo_levels
  type(c_ptr), value :: buffer
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_set_max_undo_levels (GtkTextBuffer *buffer, guint max_undo_levels);
subroutine gtk_text_buffer_set_max_undo_levels(buffer, max_undo_levels) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: buffer
  integer(c_int), value :: max_undo_levels
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_undo (GtkTextBuffer *buffer);
subroutine gtk_text_buffer_undo(buffer) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_redo (GtkTextBuffer *buffer);
subroutine gtk_text_buffer_redo(buffer) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_begin_irreversible_action (GtkTextBuffer *buffer);
subroutine gtk_text_buffer_begin_irreversible_action(buffer) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_end_irreversible_action (GtkTextBuffer *buffer);
subroutine gtk_text_buffer_end_irreversible_action(buffer) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_begin_user_action (GtkTextBuffer *buffer);
subroutine gtk_text_buffer_begin_user_action(buffer) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_text_buffer_end_user_action (GtkTextBuffer *buffer);
subroutine gtk_text_buffer_end_user_action(buffer) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: buffer
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_stack_sidebar_get_type (void) G_GNUC_CONST;
function gtk_stack_sidebar_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_stack_sidebar_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_stack_sidebar_new (void);
function gtk_stack_sidebar_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_stack_sidebar_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_stack_sidebar_set_stack (GtkStackSidebar *self, GtkStack *stack);
subroutine gtk_stack_sidebar_set_stack(self, stack) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: stack
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkStack * gtk_stack_sidebar_get_stack (GtkStackSidebar *self);
function gtk_stack_sidebar_get_stack(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_stack_sidebar_get_stack
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_image_get_type (void) G_GNUC_CONST;
function gtk_image_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_image_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_image_new (void);
function gtk_image_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_image_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_image_new_from_file (const gchar *filename);
function gtk_image_new_from_file(filename) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_image_new_from_file
  character(kind=c_char), dimension(*) :: filename
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_image_new_from_resource (const gchar *resource_path);
function gtk_image_new_from_resource(resource_path) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_image_new_from_resource
  character(kind=c_char), dimension(*) :: resource_path
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_image_new_from_pixbuf (GdkPixbuf *pixbuf);
function gtk_image_new_from_pixbuf(pixbuf) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_image_new_from_pixbuf
  type(c_ptr), value :: pixbuf
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_image_new_from_paintable (GdkPaintable *paintable);
function gtk_image_new_from_paintable(paintable) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_image_new_from_paintable
  type(c_ptr), value :: paintable
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_image_new_from_icon_name (const gchar *icon_name);
function gtk_image_new_from_icon_name(icon_name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_image_new_from_icon_name
  character(kind=c_char), dimension(*) :: icon_name
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_image_new_from_gicon (GIcon *icon);
function gtk_image_new_from_gicon(icon) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_image_new_from_gicon
  type(c_ptr), value :: icon
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_image_clear (GtkImage *image);
subroutine gtk_image_clear(image) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: image
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_image_set_from_file (GtkImage *image, const gchar *filename);
subroutine gtk_image_set_from_file(image, filename) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: image
  character(kind=c_char), dimension(*) :: filename
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_image_set_from_resource (GtkImage *image, const gchar *resource_path);
subroutine gtk_image_set_from_resource(image, resource_path) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: image
  character(kind=c_char), dimension(*) :: resource_path
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_image_set_from_pixbuf (GtkImage *image, GdkPixbuf *pixbuf);
subroutine gtk_image_set_from_pixbuf(image, pixbuf) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: image
  type(c_ptr), value :: pixbuf
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_image_set_from_paintable (GtkImage *image, GdkPaintable *paintable);
subroutine gtk_image_set_from_paintable(image, paintable) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: image
  type(c_ptr), value :: paintable
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_image_set_from_icon_name (GtkImage *image, const gchar *icon_name);
subroutine gtk_image_set_from_icon_name(image, icon_name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: image
  character(kind=c_char), dimension(*) :: icon_name
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_image_set_from_gicon (GtkImage *image, GIcon *icon);
subroutine gtk_image_set_from_gicon(image, icon) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: image
  type(c_ptr), value :: icon
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_image_set_pixel_size (GtkImage *image, gint pixel_size);
subroutine gtk_image_set_pixel_size(image, pixel_size) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: image
  integer(c_int), value :: pixel_size
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_image_set_icon_size (GtkImage *image, GtkIconSize icon_size);
subroutine gtk_image_set_icon_size(image, icon_size) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: image
  integer(c_int), value :: icon_size
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkImageType gtk_image_get_storage_type (GtkImage *image);
function gtk_image_get_storage_type(image) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_image_get_storage_type
  type(c_ptr), value :: image
end function

! GDK_AVAILABLE_IN_ALL
!GdkPaintable *gtk_image_get_paintable (GtkImage *image);
function gtk_image_get_paintable(image) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_image_get_paintable
  type(c_ptr), value :: image
end function

! GDK_AVAILABLE_IN_ALL
!const char *gtk_image_get_icon_name (GtkImage *image);
function gtk_image_get_icon_name(image) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_image_get_icon_name
  type(c_ptr), value :: image
end function

! GDK_AVAILABLE_IN_ALL
!GIcon * gtk_image_get_gicon (GtkImage *image);
function gtk_image_get_gicon(image) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_image_get_gicon
  type(c_ptr), value :: image
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_image_get_pixel_size (GtkImage *image);
function gtk_image_get_pixel_size(image) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_image_get_pixel_size
  type(c_ptr), value :: image
end function

! GDK_AVAILABLE_IN_ALL
!GtkIconSize gtk_image_get_icon_size (GtkImage *image);
function gtk_image_get_icon_size(image) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_image_get_icon_size
  type(c_ptr), value :: image
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_label_get_type (void) G_GNUC_CONST;
function gtk_label_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_label_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_label_new (const gchar *str);
function gtk_label_new(str) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_label_new
  character(kind=c_char), dimension(*) :: str
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_label_new_with_mnemonic (const gchar *str);
function gtk_label_new_with_mnemonic(str) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_label_new_with_mnemonic
  character(kind=c_char), dimension(*) :: str
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_label_set_text (GtkLabel *label, const gchar *str);
subroutine gtk_label_set_text(label, str) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: label
  character(kind=c_char), dimension(*) :: str
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar* gtk_label_get_text (GtkLabel *label);
function gtk_label_get_text(label) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_label_get_text
  type(c_ptr), value :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_label_set_attributes (GtkLabel *label, PangoAttrList *attrs);
subroutine gtk_label_set_attributes(label, attrs) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: label
  type(c_ptr), value :: attrs
end subroutine

! GDK_AVAILABLE_IN_ALL
!PangoAttrList *gtk_label_get_attributes (GtkLabel *label);
function gtk_label_get_attributes(label) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_label_get_attributes
  type(c_ptr), value :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_label_set_label (GtkLabel *label, const gchar *str);
subroutine gtk_label_set_label(label, str) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: label
  character(kind=c_char), dimension(*) :: str
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_label_get_label (GtkLabel *label);
function gtk_label_get_label(label) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_label_get_label
  type(c_ptr), value :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_label_set_markup (GtkLabel *label, const gchar *str);
subroutine gtk_label_set_markup(label, str) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: label
  character(kind=c_char), dimension(*) :: str
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_label_set_use_markup (GtkLabel *label, gboolean setting);
subroutine gtk_label_set_use_markup(label, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: label
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_label_get_use_markup (GtkLabel *label);
function gtk_label_get_use_markup(label) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_label_get_use_markup
  type(c_ptr), value :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_label_set_use_underline (GtkLabel *label, gboolean setting);
subroutine gtk_label_set_use_underline(label, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: label
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_label_get_use_underline (GtkLabel *label);
function gtk_label_get_use_underline(label) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_label_get_use_underline
  type(c_ptr), value :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_label_set_markup_with_mnemonic (GtkLabel *label, const gchar *str);
subroutine gtk_label_set_markup_with_mnemonic(label, str) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: label
  character(kind=c_char), dimension(*) :: str
end subroutine

! GDK_AVAILABLE_IN_ALL
!guint gtk_label_get_mnemonic_keyval (GtkLabel *label);
function gtk_label_get_mnemonic_keyval(label) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_label_get_mnemonic_keyval
  type(c_ptr), value :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_label_set_mnemonic_widget (GtkLabel *label, GtkWidget *widget);
subroutine gtk_label_set_mnemonic_widget(label, widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: label
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_label_get_mnemonic_widget (GtkLabel *label);
function gtk_label_get_mnemonic_widget(label) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_label_get_mnemonic_widget
  type(c_ptr), value :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_label_set_text_with_mnemonic (GtkLabel *label, const gchar *str);
subroutine gtk_label_set_text_with_mnemonic(label, str) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: label
  character(kind=c_char), dimension(*) :: str
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_label_set_justify (GtkLabel *label, GtkJustification jtype);
subroutine gtk_label_set_justify(label, jtype) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: label
  integer(c_int), value :: jtype
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkJustification gtk_label_get_justify (GtkLabel *label);
function gtk_label_get_justify(label) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_label_get_justify
  type(c_ptr), value :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_label_set_ellipsize (GtkLabel *label, PangoEllipsizeMode mode);
subroutine gtk_label_set_ellipsize(label, mode) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: label
  integer(c_int), value :: mode
end subroutine

! GDK_AVAILABLE_IN_ALL
!PangoEllipsizeMode gtk_label_get_ellipsize (GtkLabel *label);
function gtk_label_get_ellipsize(label) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_label_get_ellipsize
  type(c_ptr), value :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_label_set_width_chars (GtkLabel *label, gint n_chars);
subroutine gtk_label_set_width_chars(label, n_chars) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: label
  integer(c_int), value :: n_chars
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_label_get_width_chars (GtkLabel *label);
function gtk_label_get_width_chars(label) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_label_get_width_chars
  type(c_ptr), value :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_label_set_max_width_chars (GtkLabel *label, gint n_chars);
subroutine gtk_label_set_max_width_chars(label, n_chars) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: label
  integer(c_int), value :: n_chars
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_label_get_max_width_chars (GtkLabel *label);
function gtk_label_get_max_width_chars(label) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_label_get_max_width_chars
  type(c_ptr), value :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_label_set_lines (GtkLabel *label, gint lines);
subroutine gtk_label_set_lines(label, lines) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: label
  integer(c_int), value :: lines
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_label_get_lines (GtkLabel *label);
function gtk_label_get_lines(label) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_label_get_lines
  type(c_ptr), value :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_label_set_pattern (GtkLabel *label, const gchar *pattern);
subroutine gtk_label_set_pattern(label, pattern) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: label
  character(kind=c_char), dimension(*) :: pattern
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_label_set_wrap (GtkLabel *label, gboolean wrap);
subroutine gtk_label_set_wrap(label, wrap) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: label
  integer(c_int), value :: wrap
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_label_get_wrap (GtkLabel *label);
function gtk_label_get_wrap(label) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_label_get_wrap
  type(c_ptr), value :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_label_set_wrap_mode (GtkLabel *label, PangoWrapMode wrap_mode);
subroutine gtk_label_set_wrap_mode(label, wrap_mode) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: label
  integer(c_int), value :: wrap_mode
end subroutine

! GDK_AVAILABLE_IN_ALL
!PangoWrapMode gtk_label_get_wrap_mode (GtkLabel *label);
function gtk_label_get_wrap_mode(label) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_label_get_wrap_mode
  type(c_ptr), value :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_label_set_selectable (GtkLabel *label, gboolean setting);
subroutine gtk_label_set_selectable(label, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: label
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_label_get_selectable (GtkLabel *label);
function gtk_label_get_selectable(label) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_label_get_selectable
  type(c_ptr), value :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_label_select_region (GtkLabel *label, gint start_offset, gint end_offset);
subroutine gtk_label_select_region(label, start_offset, end_offset) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: label
  integer(c_int), value :: start_offset
  integer(c_int), value :: end_offset
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_label_get_selection_bounds (GtkLabel *label, gint *start, gint *end);
function gtk_label_get_selection_bounds(label, start, end) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_label_get_selection_bounds
  type(c_ptr), value :: label
  type(c_ptr), value :: start
  type(c_ptr), value :: end
end function

! GDK_AVAILABLE_IN_ALL
!PangoLayout *gtk_label_get_layout (GtkLabel *label);
function gtk_label_get_layout(label) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_label_get_layout
  type(c_ptr), value :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_label_get_layout_offsets (GtkLabel *label, gint *x, gint *y);
subroutine gtk_label_get_layout_offsets(label, x, y) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: label
  type(c_ptr), value :: x
  type(c_ptr), value :: y
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_label_set_single_line_mode (GtkLabel *label, gboolean single_line_mode);
subroutine gtk_label_set_single_line_mode(label, single_line_mode) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: label
  integer(c_int), value :: single_line_mode
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_label_get_single_line_mode (GtkLabel *label);
function gtk_label_get_single_line_mode(label) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_label_get_single_line_mode
  type(c_ptr), value :: label
end function

! GDK_AVAILABLE_IN_ALL
!const gchar *gtk_label_get_current_uri (GtkLabel *label);
function gtk_label_get_current_uri(label) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_label_get_current_uri
  type(c_ptr), value :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_label_set_track_visited_links (GtkLabel *label, gboolean track_links);
subroutine gtk_label_set_track_visited_links(label, track_links) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: label
  integer(c_int), value :: track_links
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_label_get_track_visited_links (GtkLabel *label);
function gtk_label_get_track_visited_links(label) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_label_get_track_visited_links
  type(c_ptr), value :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_label_set_xalign (GtkLabel *label, gfloat xalign);
subroutine gtk_label_set_xalign(label, xalign) bind(c)
  use iso_c_binding, only: c_ptr, c_float
  type(c_ptr), value :: label
  real(c_float), value :: xalign
end subroutine

! GDK_AVAILABLE_IN_ALL
!gfloat gtk_label_get_xalign (GtkLabel *label);
function gtk_label_get_xalign(label) bind(c)
  use iso_c_binding, only: c_float, c_ptr
  real(c_float) :: gtk_label_get_xalign
  type(c_ptr), value :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_label_set_yalign (GtkLabel *label, gfloat yalign);
subroutine gtk_label_set_yalign(label, yalign) bind(c)
  use iso_c_binding, only: c_ptr, c_float
  type(c_ptr), value :: label
  real(c_float), value :: yalign
end subroutine

! GDK_AVAILABLE_IN_ALL
!gfloat gtk_label_get_yalign (GtkLabel *label);
function gtk_label_get_yalign(label) bind(c)
  use iso_c_binding, only: c_float, c_ptr
  real(c_float) :: gtk_label_get_yalign
  type(c_ptr), value :: label
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_label_set_extra_menu (GtkLabel *label, GMenuModel *model);
subroutine gtk_label_set_extra_menu(label, model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: label
  type(c_ptr), value :: model
end subroutine

! GDK_AVAILABLE_IN_ALL
!GMenuModel * gtk_label_get_extra_menu (GtkLabel *label);
function gtk_label_get_extra_menu(label) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_label_get_extra_menu
  type(c_ptr), value :: label
end function

! GDK_AVAILABLE_IN_ALL
!GtkSliceListModel * gtk_slice_list_model_new_for_type (GType item_type);
function gtk_slice_list_model_new_for_type(item_type) bind(c)
  use iso_c_binding, only: c_ptr, c_size_t
  type(c_ptr) :: gtk_slice_list_model_new_for_type
  integer(c_size_t), value :: item_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_slice_list_model_set_model (GtkSliceListModel *self, GListModel *model);
subroutine gtk_slice_list_model_set_model(self, model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: self
  type(c_ptr), value :: model
end subroutine

! GDK_AVAILABLE_IN_ALL
!GListModel * gtk_slice_list_model_get_model (GtkSliceListModel *self);
function gtk_slice_list_model_get_model(self) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_slice_list_model_get_model
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_slice_list_model_set_offset (GtkSliceListModel *self, guint offset);
subroutine gtk_slice_list_model_set_offset(self, offset) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: offset
end subroutine

! GDK_AVAILABLE_IN_ALL
!guint gtk_slice_list_model_get_offset (GtkSliceListModel *self);
function gtk_slice_list_model_get_offset(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_slice_list_model_get_offset
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_slice_list_model_set_size (GtkSliceListModel *self, guint size);
subroutine gtk_slice_list_model_set_size(self, size) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: self
  integer(c_int), value :: size
end subroutine

! GDK_AVAILABLE_IN_ALL
!guint gtk_slice_list_model_get_size (GtkSliceListModel *self);
function gtk_slice_list_model_get_size(self) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_slice_list_model_get_size
  type(c_ptr), value :: self
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_mount_operation_get_type (void);
function gtk_mount_operation_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_mount_operation_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GMountOperation *gtk_mount_operation_new (GtkWindow *parent);
function gtk_mount_operation_new(parent) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_mount_operation_new
  type(c_ptr), value :: parent
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_mount_operation_is_showing (GtkMountOperation *op);
function gtk_mount_operation_is_showing(op) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_mount_operation_is_showing
  type(c_ptr), value :: op
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_mount_operation_set_parent (GtkMountOperation *op, GtkWindow *parent);
subroutine gtk_mount_operation_set_parent(op, parent) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: op
  type(c_ptr), value :: parent
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWindow * gtk_mount_operation_get_parent (GtkMountOperation *op);
function gtk_mount_operation_get_parent(op) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_mount_operation_get_parent
  type(c_ptr), value :: op
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_mount_operation_set_display(GtkMountOperation *op, GdkDisplay *display);
subroutine gtk_mount_operation_set_display(op, display) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: op
  type(c_ptr), value :: display
end subroutine

! GDK_AVAILABLE_IN_ALL
!GdkDisplay * gtk_mount_operation_get_display(GtkMountOperation *op);
function gtk_mount_operation_get_display(op) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_mount_operation_get_display
  type(c_ptr), value :: op
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_actionable_get_type (void) G_GNUC_CONST;
function gtk_actionable_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_actionable_get_type
end function

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_actionable_get_action_name (GtkActionable *actionable);
function gtk_actionable_get_action_name(actionable) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_actionable_get_action_name
  type(c_ptr), value :: actionable
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_actionable_set_action_name (GtkActionable *actionable, const gchar *action_name);
subroutine gtk_actionable_set_action_name(actionable, action_name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: actionable
  character(kind=c_char), dimension(*) :: action_name
end subroutine

! GDK_AVAILABLE_IN_ALL
!GVariant * gtk_actionable_get_action_target_value (GtkActionable *actionable);
function gtk_actionable_get_action_target_value(actionable) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_actionable_get_action_target_value
  type(c_ptr), value :: actionable
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_actionable_set_action_target_value (GtkActionable *actionable, GVariant *target_value);
subroutine gtk_actionable_set_action_target_value(actionable, target_value)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: actionable
  type(c_ptr), value :: target_value
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_actionable_set_detailed_action_name (GtkActionable *actionable, const gchar *detailed_action_name);
subroutine gtk_actionable_set_detailed_action_name(actionable,&
& detailed_action_name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: actionable
  character(kind=c_char), dimension(*) :: detailed_action_name
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_test_register_all_types (void);
subroutine gtk_test_register_all_types() bind(c)
  use iso_c_binding, only: 
end subroutine

! GDK_AVAILABLE_IN_ALL
!const GType* gtk_test_list_all_types (guint *n_types);
function gtk_test_list_all_types(n_types) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_test_list_all_types
  type(c_ptr), value :: n_types
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_test_widget_wait_for_draw (GtkWidget *widget);
subroutine gtk_test_widget_wait_for_draw(widget) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: widget
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_file_chooser_widget_get_type (void) G_GNUC_CONST;
function gtk_file_chooser_widget_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_file_chooser_widget_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget *gtk_file_chooser_widget_new (GtkFileChooserAction action);
function gtk_file_chooser_widget_new(action) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_file_chooser_widget_new
  integer(c_int), value :: action
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_tree_selection_get_type (void) G_GNUC_CONST;
function gtk_tree_selection_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_tree_selection_get_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_selection_set_mode (GtkTreeSelection *selection, GtkSelectionMode type);
subroutine gtk_tree_selection_set_mode(selection, type) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: selection
  integer(c_int), value :: type
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkSelectionMode gtk_tree_selection_get_mode (GtkTreeSelection *selection);
function gtk_tree_selection_get_mode(selection) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_selection_get_mode
  type(c_ptr), value :: selection
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_selection_set_select_function (GtkTreeSelection *selection, GtkTreeSelectionFunc func, gpointer data, GDestroyNotify destroy);
subroutine gtk_tree_selection_set_select_function(selection, func, data,&
& destroy) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: selection
  type(c_funptr), value :: func
  type(c_ptr), value :: data
  type(c_funptr), value :: destroy
end subroutine

! GDK_AVAILABLE_IN_ALL
!gpointer gtk_tree_selection_get_user_data (GtkTreeSelection *selection);
function gtk_tree_selection_get_user_data(selection) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_selection_get_user_data
  type(c_ptr), value :: selection
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreeView* gtk_tree_selection_get_tree_view (GtkTreeSelection *selection);
function gtk_tree_selection_get_tree_view(selection) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_selection_get_tree_view
  type(c_ptr), value :: selection
end function

! GDK_AVAILABLE_IN_ALL
!GtkTreeSelectionFunc gtk_tree_selection_get_select_function (GtkTreeSelection *selection);
function gtk_tree_selection_get_select_function(selection) bind(c)
  use iso_c_binding, only: c_funptr, c_ptr
  type(c_funptr) :: gtk_tree_selection_get_select_function
  type(c_ptr), value :: selection
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_selection_get_selected (GtkTreeSelection *selection, GtkTreeModel **model, GtkTreeIter *iter);
function gtk_tree_selection_get_selected(selection, model, iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_selection_get_selected
  type(c_ptr), value :: selection
  type(c_ptr), value :: model
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!GList * gtk_tree_selection_get_selected_rows (GtkTreeSelection *selection, GtkTreeModel **model);
function gtk_tree_selection_get_selected_rows(selection, model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_tree_selection_get_selected_rows
  type(c_ptr), value :: selection
  type(c_ptr), value :: model
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_tree_selection_count_selected_rows (GtkTreeSelection *selection);
function gtk_tree_selection_count_selected_rows(selection) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_selection_count_selected_rows
  type(c_ptr), value :: selection
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_selection_selected_foreach (GtkTreeSelection *selection, GtkTreeSelectionForeachFunc func, gpointer data);
subroutine gtk_tree_selection_selected_foreach(selection, func, data) bind(c)
  use iso_c_binding, only: c_ptr, c_funptr
  type(c_ptr), value :: selection
  type(c_funptr), value :: func
  type(c_ptr), value :: data
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_selection_select_path (GtkTreeSelection *selection, GtkTreePath *path);
subroutine gtk_tree_selection_select_path(selection, path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: selection
  type(c_ptr), value :: path
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_selection_unselect_path (GtkTreeSelection *selection, GtkTreePath *path);
subroutine gtk_tree_selection_unselect_path(selection, path) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: selection
  type(c_ptr), value :: path
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_selection_select_iter (GtkTreeSelection *selection, GtkTreeIter *iter);
subroutine gtk_tree_selection_select_iter(selection, iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: selection
  type(c_ptr), value :: iter
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_selection_unselect_iter (GtkTreeSelection *selection, GtkTreeIter *iter);
subroutine gtk_tree_selection_unselect_iter(selection, iter) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: selection
  type(c_ptr), value :: iter
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_selection_path_is_selected (GtkTreeSelection *selection, GtkTreePath *path);
function gtk_tree_selection_path_is_selected(selection, path) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_selection_path_is_selected
  type(c_ptr), value :: selection
  type(c_ptr), value :: path
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_tree_selection_iter_is_selected (GtkTreeSelection *selection, GtkTreeIter *iter);
function gtk_tree_selection_iter_is_selected(selection, iter) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_tree_selection_iter_is_selected
  type(c_ptr), value :: selection
  type(c_ptr), value :: iter
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_selection_select_all (GtkTreeSelection *selection);
subroutine gtk_tree_selection_select_all(selection) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: selection
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_selection_unselect_all (GtkTreeSelection *selection);
subroutine gtk_tree_selection_unselect_all(selection) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: selection
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_selection_select_range (GtkTreeSelection *selection, GtkTreePath *start_path, GtkTreePath *end_path);
subroutine gtk_tree_selection_select_range(selection, start_path, end_path)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: selection
  type(c_ptr), value :: start_path
  type(c_ptr), value :: end_path
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_tree_selection_unselect_range (GtkTreeSelection *selection, GtkTreePath *start_path, GtkTreePath *end_path);
subroutine gtk_tree_selection_unselect_range(selection, start_path, end_path)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: selection
  type(c_ptr), value :: start_path
  type(c_ptr), value :: end_path
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_distribute_natural_allocation (gint extra_space, guint n_requested_sizes, GtkRequestedSize *sizes);
function gtk_distribute_natural_allocation(extra_space, n_requested_sizes,&
& sizes) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_distribute_natural_allocation
  integer(c_int), value :: extra_space
  integer(c_int), value :: n_requested_sizes
  type(c_ptr), value :: sizes
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_paned_get_type (void) G_GNUC_CONST;
function gtk_paned_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_paned_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_paned_new (GtkOrientation orientation);
function gtk_paned_new(orientation) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_paned_new
  integer(c_int), value :: orientation
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_paned_add1 (GtkPaned *paned, GtkWidget *child);
subroutine gtk_paned_add1(paned, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: paned
  type(c_ptr), value :: child
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_paned_add2 (GtkPaned *paned, GtkWidget *child);
subroutine gtk_paned_add2(paned, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: paned
  type(c_ptr), value :: child
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_paned_pack1 (GtkPaned *paned, GtkWidget *child, gboolean resize, gboolean shrink);
subroutine gtk_paned_pack1(paned, child, resize, shrink) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: paned
  type(c_ptr), value :: child
  integer(c_int), value :: resize
  integer(c_int), value :: shrink
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_paned_pack2 (GtkPaned *paned, GtkWidget *child, gboolean resize, gboolean shrink);
subroutine gtk_paned_pack2(paned, child, resize, shrink) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: paned
  type(c_ptr), value :: child
  integer(c_int), value :: resize
  integer(c_int), value :: shrink
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_paned_get_position (GtkPaned *paned);
function gtk_paned_get_position(paned) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_paned_get_position
  type(c_ptr), value :: paned
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_paned_set_position (GtkPaned *paned, gint position);
subroutine gtk_paned_set_position(paned, position) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: paned
  integer(c_int), value :: position
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_paned_get_child1 (GtkPaned *paned);
function gtk_paned_get_child1(paned) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_paned_get_child1
  type(c_ptr), value :: paned
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_paned_get_child2 (GtkPaned *paned);
function gtk_paned_get_child2(paned) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_paned_get_child2
  type(c_ptr), value :: paned
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_paned_set_wide_handle (GtkPaned *paned, gboolean wide);
subroutine gtk_paned_set_wide_handle(paned, wide) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: paned
  integer(c_int), value :: wide
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_paned_get_wide_handle (GtkPaned *paned);
function gtk_paned_get_wide_handle(paned) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_paned_get_wide_handle
  type(c_ptr), value :: paned
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_link_button_get_type (void) G_GNUC_CONST;
function gtk_link_button_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_link_button_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_link_button_new (const gchar *uri);
function gtk_link_button_new(uri) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_link_button_new
  character(kind=c_char), dimension(*) :: uri
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget * gtk_link_button_new_with_label (const gchar *uri, const gchar *label);
function gtk_link_button_new_with_label(uri, label) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr) :: gtk_link_button_new_with_label
  character(kind=c_char), dimension(*) :: uri
  character(kind=c_char), dimension(*) :: label
end function

! GDK_AVAILABLE_IN_ALL
!const gchar * gtk_link_button_get_uri (GtkLinkButton *link_button);
function gtk_link_button_get_uri(link_button) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_link_button_get_uri
  type(c_ptr), value :: link_button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_link_button_set_uri (GtkLinkButton *link_button, const gchar *uri);
subroutine gtk_link_button_set_uri(link_button, uri) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: link_button
  character(kind=c_char), dimension(*) :: uri
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_link_button_get_visited (GtkLinkButton *link_button);
function gtk_link_button_get_visited(link_button) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_link_button_get_visited
  type(c_ptr), value :: link_button
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_link_button_set_visited (GtkLinkButton *link_button, gboolean visited);
subroutine gtk_link_button_set_visited(link_button, visited) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: link_button
  integer(c_int), value :: visited
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_entry_get_type (void) G_GNUC_CONST;
function gtk_entry_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_entry_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_entry_new (void);
function gtk_entry_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_entry_new
end function

! GDK_AVAILABLE_IN_ALL
!GtkWidget* gtk_entry_new_with_buffer (GtkEntryBuffer *buffer);
function gtk_entry_new_with_buffer(buffer) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_entry_new_with_buffer
  type(c_ptr), value :: buffer
end function

! GDK_AVAILABLE_IN_ALL
!GtkEntryBuffer* gtk_entry_get_buffer (GtkEntry *entry);
function gtk_entry_get_buffer(entry) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_entry_get_buffer
  type(c_ptr), value :: entry
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_buffer (GtkEntry *entry, GtkEntryBuffer *buffer);
subroutine gtk_entry_set_buffer(entry, buffer) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: entry
  type(c_ptr), value :: buffer
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_visibility (GtkEntry *entry, gboolean visible);
subroutine gtk_entry_set_visibility(entry, visible) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: entry
  integer(c_int), value :: visible
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_entry_get_visibility (GtkEntry *entry);
function gtk_entry_get_visibility(entry) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_entry_get_visibility
  type(c_ptr), value :: entry
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_invisible_char (GtkEntry *entry, gunichar ch);
subroutine gtk_entry_set_invisible_char(entry, ch) bind(c)
  use iso_c_binding, only: c_ptr, c_int32_t
  type(c_ptr), value :: entry
  integer(c_int32_t), value :: ch
end subroutine

! GDK_AVAILABLE_IN_ALL
!gunichar gtk_entry_get_invisible_char (GtkEntry *entry);
function gtk_entry_get_invisible_char(entry) bind(c)
  use iso_c_binding, only: c_int32_t, c_ptr
  integer(c_int32_t) :: gtk_entry_get_invisible_char
  type(c_ptr), value :: entry
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_unset_invisible_char (GtkEntry *entry);
subroutine gtk_entry_unset_invisible_char(entry) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: entry
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_has_frame (GtkEntry *entry, gboolean setting);
subroutine gtk_entry_set_has_frame(entry, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: entry
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_entry_get_has_frame (GtkEntry *entry);
function gtk_entry_get_has_frame(entry) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_entry_get_has_frame
  type(c_ptr), value :: entry
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_overwrite_mode (GtkEntry *entry, gboolean overwrite);
subroutine gtk_entry_set_overwrite_mode(entry, overwrite) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: entry
  integer(c_int), value :: overwrite
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_entry_get_overwrite_mode (GtkEntry *entry);
function gtk_entry_get_overwrite_mode(entry) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_entry_get_overwrite_mode
  type(c_ptr), value :: entry
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_max_length (GtkEntry *entry, gint max);
subroutine gtk_entry_set_max_length(entry, max) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: entry
  integer(c_int), value :: max
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_entry_get_max_length (GtkEntry *entry);
function gtk_entry_get_max_length(entry) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_entry_get_max_length
  type(c_ptr), value :: entry
end function

! GDK_AVAILABLE_IN_ALL
!guint16 gtk_entry_get_text_length (GtkEntry *entry);
function gtk_entry_get_text_length(entry) bind(c)
  use iso_c_binding, only: c_int16_t, c_ptr
  integer(c_int16_t) :: gtk_entry_get_text_length
  type(c_ptr), value :: entry
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_activates_default (GtkEntry *entry, gboolean setting);
subroutine gtk_entry_set_activates_default(entry, setting) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: entry
  integer(c_int), value :: setting
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_entry_get_activates_default (GtkEntry *entry);
function gtk_entry_get_activates_default(entry) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_entry_get_activates_default
  type(c_ptr), value :: entry
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_alignment (GtkEntry *entry, gfloat xalign);
subroutine gtk_entry_set_alignment(entry, xalign) bind(c)
  use iso_c_binding, only: c_ptr, c_float
  type(c_ptr), value :: entry
  real(c_float), value :: xalign
end subroutine

! GDK_AVAILABLE_IN_ALL
!gfloat gtk_entry_get_alignment (GtkEntry *entry);
function gtk_entry_get_alignment(entry) bind(c)
  use iso_c_binding, only: c_float, c_ptr
  real(c_float) :: gtk_entry_get_alignment
  type(c_ptr), value :: entry
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_completion (GtkEntry *entry, GtkEntryCompletion *completion);
subroutine gtk_entry_set_completion(entry, completion) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: entry
  type(c_ptr), value :: completion
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkEntryCompletion *gtk_entry_get_completion (GtkEntry *entry);
function gtk_entry_get_completion(entry) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_entry_get_completion
  type(c_ptr), value :: entry
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_progress_fraction (GtkEntry *entry, gdouble fraction);
subroutine gtk_entry_set_progress_fraction(entry, fraction) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: entry
  real(c_double), value :: fraction
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_entry_get_progress_fraction (GtkEntry *entry);
function gtk_entry_get_progress_fraction(entry) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_entry_get_progress_fraction
  type(c_ptr), value :: entry
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_progress_pulse_step (GtkEntry *entry, gdouble fraction);
subroutine gtk_entry_set_progress_pulse_step(entry, fraction) bind(c)
  use iso_c_binding, only: c_ptr, c_double
  type(c_ptr), value :: entry
  real(c_double), value :: fraction
end subroutine

! GDK_AVAILABLE_IN_ALL
!gdouble gtk_entry_get_progress_pulse_step (GtkEntry *entry);
function gtk_entry_get_progress_pulse_step(entry) bind(c)
  use iso_c_binding, only: c_double, c_ptr
  real(c_double) :: gtk_entry_get_progress_pulse_step
  type(c_ptr), value :: entry
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_progress_pulse (GtkEntry *entry);
subroutine gtk_entry_progress_pulse(entry) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: entry
end subroutine

! GDK_AVAILABLE_IN_ALL
!const gchar* gtk_entry_get_placeholder_text (GtkEntry *entry);
function gtk_entry_get_placeholder_text(entry) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_entry_get_placeholder_text
  type(c_ptr), value :: entry
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_placeholder_text (GtkEntry *entry, const gchar *text);
subroutine gtk_entry_set_placeholder_text(entry, text) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: entry
  character(kind=c_char), dimension(*) :: text
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_icon_from_paintable (GtkEntry *entry, GtkEntryIconPosition icon_pos, GdkPaintable *paintable);
subroutine gtk_entry_set_icon_from_paintable(entry, icon_pos, paintable)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: entry
  integer(c_int), value :: icon_pos
  type(c_ptr), value :: paintable
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_icon_from_icon_name (GtkEntry *entry, GtkEntryIconPosition icon_pos, const gchar *icon_name);
subroutine gtk_entry_set_icon_from_icon_name(entry, icon_pos, icon_name)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int, c_char
  type(c_ptr), value :: entry
  integer(c_int), value :: icon_pos
  character(kind=c_char), dimension(*) :: icon_name
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_icon_from_gicon (GtkEntry *entry, GtkEntryIconPosition icon_pos, GIcon *icon);
subroutine gtk_entry_set_icon_from_gicon(entry, icon_pos, icon) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: entry
  integer(c_int), value :: icon_pos
  type(c_ptr), value :: icon
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkImageType gtk_entry_get_icon_storage_type (GtkEntry *entry, GtkEntryIconPosition icon_pos);
function gtk_entry_get_icon_storage_type(entry, icon_pos) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_entry_get_icon_storage_type
  type(c_ptr), value :: entry
  integer(c_int), value :: icon_pos
end function

! GDK_AVAILABLE_IN_ALL
!GdkPaintable * gtk_entry_get_icon_paintable (GtkEntry *entry, GtkEntryIconPosition icon_pos);
function gtk_entry_get_icon_paintable(entry, icon_pos) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_entry_get_icon_paintable
  type(c_ptr), value :: entry
  integer(c_int), value :: icon_pos
end function

! GDK_AVAILABLE_IN_ALL
!const gchar* gtk_entry_get_icon_name (GtkEntry *entry, GtkEntryIconPosition icon_pos);
function gtk_entry_get_icon_name(entry, icon_pos) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_entry_get_icon_name
  type(c_ptr), value :: entry
  integer(c_int), value :: icon_pos
end function

! GDK_AVAILABLE_IN_ALL
!GIcon* gtk_entry_get_icon_gicon (GtkEntry *entry, GtkEntryIconPosition icon_pos);
function gtk_entry_get_icon_gicon(entry, icon_pos) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_entry_get_icon_gicon
  type(c_ptr), value :: entry
  integer(c_int), value :: icon_pos
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_icon_activatable (GtkEntry *entry, GtkEntryIconPosition icon_pos, gboolean activatable);
subroutine gtk_entry_set_icon_activatable(entry, icon_pos, activatable) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: entry
  integer(c_int), value :: icon_pos
  integer(c_int), value :: activatable
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_entry_get_icon_activatable (GtkEntry *entry, GtkEntryIconPosition icon_pos);
function gtk_entry_get_icon_activatable(entry, icon_pos) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_entry_get_icon_activatable
  type(c_ptr), value :: entry
  integer(c_int), value :: icon_pos
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_icon_sensitive (GtkEntry *entry, GtkEntryIconPosition icon_pos, gboolean sensitive);
subroutine gtk_entry_set_icon_sensitive(entry, icon_pos, sensitive) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: entry
  integer(c_int), value :: icon_pos
  integer(c_int), value :: sensitive
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_entry_get_icon_sensitive (GtkEntry *entry, GtkEntryIconPosition icon_pos);
function gtk_entry_get_icon_sensitive(entry, icon_pos) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_entry_get_icon_sensitive
  type(c_ptr), value :: entry
  integer(c_int), value :: icon_pos
end function

! GDK_AVAILABLE_IN_ALL
!gint gtk_entry_get_icon_at_pos (GtkEntry *entry, gint x, gint y);
function gtk_entry_get_icon_at_pos(entry, x, y) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_entry_get_icon_at_pos
  type(c_ptr), value :: entry
  integer(c_int), value :: x
  integer(c_int), value :: y
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_icon_tooltip_text (GtkEntry *entry, GtkEntryIconPosition icon_pos, const gchar *tooltip);
subroutine gtk_entry_set_icon_tooltip_text(entry, icon_pos, tooltip) bind(c)
  use iso_c_binding, only: c_ptr, c_int, c_char
  type(c_ptr), value :: entry
  integer(c_int), value :: icon_pos
  character(kind=c_char), dimension(*) :: tooltip
end subroutine

! GDK_AVAILABLE_IN_ALL
!gchar * gtk_entry_get_icon_tooltip_text (GtkEntry *entry, GtkEntryIconPosition icon_pos);
function gtk_entry_get_icon_tooltip_text(entry, icon_pos) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_entry_get_icon_tooltip_text
  type(c_ptr), value :: entry
  integer(c_int), value :: icon_pos
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_icon_tooltip_markup (GtkEntry *entry, GtkEntryIconPosition icon_pos, const gchar *tooltip);
subroutine gtk_entry_set_icon_tooltip_markup(entry, icon_pos, tooltip) bind(c)
  use iso_c_binding, only: c_ptr, c_int, c_char
  type(c_ptr), value :: entry
  integer(c_int), value :: icon_pos
  character(kind=c_char), dimension(*) :: tooltip
end subroutine

! GDK_AVAILABLE_IN_ALL
!gchar * gtk_entry_get_icon_tooltip_markup (GtkEntry *entry, GtkEntryIconPosition icon_pos);
function gtk_entry_get_icon_tooltip_markup(entry, icon_pos) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr) :: gtk_entry_get_icon_tooltip_markup
  type(c_ptr), value :: entry
  integer(c_int), value :: icon_pos
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_icon_drag_source (GtkEntry *entry, GtkEntryIconPosition icon_pos, GdkContentProvider *provider, GdkDragAction actions);
subroutine gtk_entry_set_icon_drag_source(entry, icon_pos, provider, actions)&
& bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: entry
  integer(c_int), value :: icon_pos
  type(c_ptr), value :: provider
  integer(c_int), value :: actions
end subroutine

! GDK_AVAILABLE_IN_ALL
!gint gtk_entry_get_current_icon_drag_source (GtkEntry *entry);
function gtk_entry_get_current_icon_drag_source(entry) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_entry_get_current_icon_drag_source
  type(c_ptr), value :: entry
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_get_icon_area (GtkEntry *entry, GtkEntryIconPosition icon_pos, GdkRectangle *icon_area);
subroutine gtk_entry_get_icon_area(entry, icon_pos, icon_area) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: entry
  integer(c_int), value :: icon_pos
  type(c_ptr), value :: icon_area
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_reset_im_context (GtkEntry *entry);
subroutine gtk_entry_reset_im_context(entry) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: entry
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_input_purpose (GtkEntry *entry, GtkInputPurpose purpose);
subroutine gtk_entry_set_input_purpose(entry, purpose) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: entry
  integer(c_int), value :: purpose
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkInputPurpose gtk_entry_get_input_purpose (GtkEntry *entry);
function gtk_entry_get_input_purpose(entry) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_entry_get_input_purpose
  type(c_ptr), value :: entry
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_input_hints (GtkEntry *entry, GtkInputHints hints);
subroutine gtk_entry_set_input_hints(entry, hints) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: entry
  integer(c_int), value :: hints
end subroutine

! GDK_AVAILABLE_IN_ALL
!GtkInputHints gtk_entry_get_input_hints (GtkEntry *entry);
function gtk_entry_get_input_hints(entry) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_entry_get_input_hints
  type(c_ptr), value :: entry
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_attributes (GtkEntry *entry, PangoAttrList *attrs);
subroutine gtk_entry_set_attributes(entry, attrs) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: entry
  type(c_ptr), value :: attrs
end subroutine

! GDK_AVAILABLE_IN_ALL
!PangoAttrList *gtk_entry_get_attributes (GtkEntry *entry);
function gtk_entry_get_attributes(entry) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_entry_get_attributes
  type(c_ptr), value :: entry
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_tabs (GtkEntry *entry, PangoTabArray *tabs);
subroutine gtk_entry_set_tabs(entry, tabs) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: entry
  type(c_ptr), value :: tabs
end subroutine

! GDK_AVAILABLE_IN_ALL
!PangoTabArray *gtk_entry_get_tabs (GtkEntry *entry);
function gtk_entry_get_tabs(entry) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_entry_get_tabs
  type(c_ptr), value :: entry
end function

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_entry_grab_focus_without_selecting (GtkEntry *entry);
function gtk_entry_grab_focus_without_selecting(entry) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_entry_grab_focus_without_selecting
  type(c_ptr), value :: entry
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_entry_set_extra_menu (GtkEntry *entry, GMenuModel *model);
subroutine gtk_entry_set_extra_menu(entry, model) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: entry
  type(c_ptr), value :: model
end subroutine

! GDK_AVAILABLE_IN_ALL
!GMenuModel * gtk_entry_get_extra_menu (GtkEntry *entry);
function gtk_entry_get_extra_menu(entry) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_entry_get_extra_menu
  type(c_ptr), value :: entry
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_settings_get_type (void) G_GNUC_CONST;
function gtk_settings_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_settings_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkSettings* gtk_settings_get_default (void);
function gtk_settings_get_default() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_settings_get_default
end function

! GDK_AVAILABLE_IN_ALL
!GtkSettings* gtk_settings_get_for_display (GdkDisplay *display);
function gtk_settings_get_for_display(display) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_settings_get_for_display
  type(c_ptr), value :: display
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_settings_reset_property (GtkSettings *settings, const gchar *name);
subroutine gtk_settings_reset_property(settings, name) bind(c)
  use iso_c_binding, only: c_ptr, c_char
  type(c_ptr), value :: settings
  character(kind=c_char), dimension(*) :: name
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_notebook_accessible_get_type (void);
function gtk_notebook_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_notebook_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_toggle_button_accessible_get_type (void);
function gtk_toggle_button_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_toggle_button_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_popover_accessible_get_type (void);
function gtk_popover_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_popover_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_statusbar_accessible_get_type (void);
function gtk_statusbar_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_statusbar_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_cell_accessible_get_type (void);
function gtk_cell_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_cell_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_entry_accessible_get_type (void);
function gtk_entry_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_entry_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_entry_icon_accessible_get_type (void);
function gtk_entry_icon_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_entry_icon_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_frame_accessible_get_type (void);
function gtk_frame_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_frame_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_container_accessible_get_type (void);
function gtk_container_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_container_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_combo_box_accessible_get_type (void);
function gtk_combo_box_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_combo_box_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_image_cell_accessible_get_type (void);
function gtk_image_cell_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_image_cell_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_scale_button_accessible_get_type (void);
function gtk_scale_button_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_scale_button_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_boolean_cell_accessible_get_type (void);
function gtk_boolean_cell_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_boolean_cell_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_image_accessible_get_type (void);
function gtk_image_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_image_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_scale_accessible_get_type (void);
function gtk_scale_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_scale_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_stack_accessible_get_type (void);
function gtk_stack_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_stack_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_tree_view_accessible_get_type (void);
function gtk_tree_view_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_tree_view_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_text_view_accessible_get_type (void);
function gtk_text_view_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_text_view_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_lock_button_accessible_get_type (void);
function gtk_lock_button_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_lock_button_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_menu_button_accessible_get_type (void);
function gtk_menu_button_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_menu_button_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_button_accessible_get_type (void);
function gtk_button_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_button_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_list_box_accessible_get_type (void);
function gtk_list_box_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_list_box_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_window_accessible_get_type (void);
function gtk_window_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_window_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_notebook_page_accessible_get_type (void);
function gtk_notebook_page_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_notebook_page_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!AtkObject *gtk_notebook_page_accessible_new (GtkNotebookAccessible *notebook, GtkWidget *child);
function gtk_notebook_page_accessible_new(notebook, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_notebook_page_accessible_new
  type(c_ptr), value :: notebook
  type(c_ptr), value :: child
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_notebook_page_accessible_invalidate (GtkNotebookPageAccessible *page);
subroutine gtk_notebook_page_accessible_invalidate(page) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: page
end subroutine

! GDK_AVAILABLE_IN_ALL
!GType gtk_switch_accessible_get_type (void);
function gtk_switch_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_switch_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_cell_accessible_parent_get_type (void);
function gtk_cell_accessible_parent_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_cell_accessible_parent_get_type
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_accessible_parent_get_cell_extents (GtkCellAccessibleParent *parent, GtkCellAccessible *cell, gint *x, gint *y, gint *width, gint *height, AtkCoordType coord_type);
subroutine gtk_cell_accessible_parent_get_cell_extents(parent, cell, x, y,&
& width, height, coord_type) bind(c)
  use iso_c_binding, only: c_ptr, c_int
  type(c_ptr), value :: parent
  type(c_ptr), value :: cell
  type(c_ptr), value :: x
  type(c_ptr), value :: y
  type(c_ptr), value :: width
  type(c_ptr), value :: height
  integer(c_int), value :: coord_type
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_accessible_parent_get_cell_area (GtkCellAccessibleParent *parent, GtkCellAccessible *cell, GdkRectangle *cell_rect);
subroutine gtk_cell_accessible_parent_get_cell_area(parent, cell, cell_rect)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: parent
  type(c_ptr), value :: cell
  type(c_ptr), value :: cell_rect
end subroutine

! GDK_AVAILABLE_IN_ALL
!gboolean gtk_cell_accessible_parent_grab_focus (GtkCellAccessibleParent *parent, GtkCellAccessible *cell);
function gtk_cell_accessible_parent_grab_focus(parent, cell) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_cell_accessible_parent_grab_focus
  type(c_ptr), value :: parent
  type(c_ptr), value :: cell
end function

! GDK_AVAILABLE_IN_ALL
!int gtk_cell_accessible_parent_get_child_index (GtkCellAccessibleParent *parent, GtkCellAccessible *cell);
function gtk_cell_accessible_parent_get_child_index(parent, cell) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_cell_accessible_parent_get_child_index
  type(c_ptr), value :: parent
  type(c_ptr), value :: cell
end function

! 
!GtkCellRendererState gtk_cell_accessible_parent_get_renderer_state(GtkCellAccessibleParent *parent, GtkCellAccessible *cell);
function gtk_cell_accessible_parent_get_renderer_state(parent, cell) bind(c)
  use iso_c_binding, only: c_int, c_ptr
  integer(c_int) :: gtk_cell_accessible_parent_get_renderer_state
  type(c_ptr), value :: parent
  type(c_ptr), value :: cell
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_accessible_parent_expand_collapse (GtkCellAccessibleParent *parent, GtkCellAccessible *cell);
subroutine gtk_cell_accessible_parent_expand_collapse(parent, cell) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: parent
  type(c_ptr), value :: cell
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_accessible_parent_activate (GtkCellAccessibleParent *parent, GtkCellAccessible *cell);
subroutine gtk_cell_accessible_parent_activate(parent, cell) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: parent
  type(c_ptr), value :: cell
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_accessible_parent_edit (GtkCellAccessibleParent *parent, GtkCellAccessible *cell);
subroutine gtk_cell_accessible_parent_edit(parent, cell) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: parent
  type(c_ptr), value :: cell
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_accessible_parent_update_relationset (GtkCellAccessibleParent *parent, GtkCellAccessible *cell, AtkRelationSet *relationset);
subroutine gtk_cell_accessible_parent_update_relationset(parent, cell,&
& relationset) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: parent
  type(c_ptr), value :: cell
  type(c_ptr), value :: relationset
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_cell_accessible_parent_get_cell_position(GtkCellAccessibleParent *parent, GtkCellAccessible *cell, gint *row, gint *column);
subroutine gtk_cell_accessible_parent_get_cell_position(parent, cell, row,&
& column) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: parent
  type(c_ptr), value :: cell
  type(c_ptr), value :: row
  type(c_ptr), value :: column
end subroutine

! GDK_AVAILABLE_IN_ALL
!GPtrArray *gtk_cell_accessible_parent_get_column_header_cells (GtkCellAccessibleParent *parent, GtkCellAccessible *cell);
function gtk_cell_accessible_parent_get_column_header_cells(parent, cell)&
& bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_accessible_parent_get_column_header_cells
  type(c_ptr), value :: parent
  type(c_ptr), value :: cell
end function

! GDK_AVAILABLE_IN_ALL
!GPtrArray *gtk_cell_accessible_parent_get_row_header_cells (GtkCellAccessibleParent *parent, GtkCellAccessible *cell);
function gtk_cell_accessible_parent_get_row_header_cells(parent, cell) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_cell_accessible_parent_get_row_header_cells
  type(c_ptr), value :: parent
  type(c_ptr), value :: cell
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_link_button_accessible_get_type (void);
function gtk_link_button_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_link_button_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_composite_accessible_get_type (void);
function gtk_composite_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_composite_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_list_box_row_accessible_get_type (void);
function gtk_list_box_row_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_list_box_row_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_text_accessible_get_type (void);
function gtk_text_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_text_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_container_cell_accessible_get_type (void);
function gtk_container_cell_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_container_cell_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkContainerCellAccessible *gtk_container_cell_accessible_new (void);
function gtk_container_cell_accessible_new() bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_container_cell_accessible_new
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_container_cell_accessible_add_child (GtkContainerCellAccessible *container, GtkCellAccessible *child);
subroutine gtk_container_cell_accessible_add_child(container, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: container
  type(c_ptr), value :: child
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_container_cell_accessible_remove_child (GtkContainerCellAccessible *container, GtkCellAccessible *child);
subroutine gtk_container_cell_accessible_remove_child(container, child) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: container
  type(c_ptr), value :: child
end subroutine

! GDK_AVAILABLE_IN_ALL
!GList *gtk_container_cell_accessible_get_children (GtkContainerCellAccessible *container);
function gtk_container_cell_accessible_get_children(container) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_container_cell_accessible_get_children
  type(c_ptr), value :: container
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_label_accessible_get_type (void);
function gtk_label_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_label_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_flow_box_child_accessible_get_type (void);
function gtk_flow_box_child_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_flow_box_child_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_radio_button_accessible_get_type (void);
function gtk_radio_button_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_radio_button_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_renderer_cell_accessible_get_type (void);
function gtk_renderer_cell_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_renderer_cell_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!AtkObject *gtk_renderer_cell_accessible_new (GtkCellRenderer * renderer);
function gtk_renderer_cell_accessible_new(renderer) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_renderer_cell_accessible_new
  type(c_ptr), value :: renderer
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_spin_button_accessible_get_type (void);
function gtk_spin_button_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_spin_button_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_range_accessible_get_type (void);
function gtk_range_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_range_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_icon_view_accessible_get_type (void);
function gtk_icon_view_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_icon_view_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_progress_bar_accessible_get_type (void);
function gtk_progress_bar_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_progress_bar_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_expander_accessible_get_type (void);
function gtk_expander_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_expander_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_flow_box_accessible_get_type (void);
function gtk_flow_box_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_flow_box_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_scrolled_window_accessible_get_type (void);
function gtk_scrolled_window_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_scrolled_window_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_paned_accessible_get_type (void);
function gtk_paned_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_paned_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_toplevel_accessible_get_type (void);
function gtk_toplevel_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_toplevel_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GList *gtk_toplevel_accessible_get_children (GtkToplevelAccessible *accessible);
function gtk_toplevel_accessible_get_children(accessible) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_toplevel_accessible_get_children
  type(c_ptr), value :: accessible
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_spinner_accessible_get_type (void);
function gtk_spinner_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_spinner_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_text_cell_accessible_get_type (void);
function gtk_text_cell_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_text_cell_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_level_bar_accessible_get_type (void);
function gtk_level_bar_accessible_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_level_bar_accessible_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GQuark gtk_css_parser_error_quark (void);
function gtk_css_parser_error_quark() bind(c)
  use iso_c_binding, only: c_int32_t
  integer(c_int32_t) :: gtk_css_parser_error_quark
end function

! GDK_AVAILABLE_IN_ALL
!GQuark gtk_css_parser_warning_quark (void);
function gtk_css_parser_warning_quark() bind(c)
  use iso_c_binding, only: c_int32_t
  integer(c_int32_t) :: gtk_css_parser_warning_quark
end function

! GDK_AVAILABLE_IN_ALL
!GType gtk_css_section_get_type (void) G_GNUC_CONST;
function gtk_css_section_get_type() bind(c)
  use iso_c_binding, only: c_size_t
  integer(c_size_t) :: gtk_css_section_get_type
end function

! GDK_AVAILABLE_IN_ALL
!GtkCssSection * gtk_css_section_new (GFile *file, const GtkCssLocation *start, const GtkCssLocation *end);
function gtk_css_section_new(file, start, end) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_css_section_new
  type(c_ptr), value :: file
  type(c_ptr), value :: start
  type(c_ptr), value :: end
end function

! GDK_AVAILABLE_IN_ALL
!GtkCssSection * gtk_css_section_ref (GtkCssSection *section);
function gtk_css_section_ref(section) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_css_section_ref
  type(c_ptr), value :: section
end function

! GDK_AVAILABLE_IN_ALL
!void gtk_css_section_unref (GtkCssSection *section);
subroutine gtk_css_section_unref(section) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: section
end subroutine

! GDK_AVAILABLE_IN_ALL
!void gtk_css_section_print (const GtkCssSection *section, GString *string);
subroutine gtk_css_section_print(section, string) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr), value :: section
  type(c_ptr), value :: string
end subroutine

! GDK_AVAILABLE_IN_ALL
!char * gtk_css_section_to_string (const GtkCssSection *section);
function gtk_css_section_to_string(section) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_css_section_to_string
  type(c_ptr), value :: section
end function

! GDK_AVAILABLE_IN_ALL
!GtkCssSection * gtk_css_section_get_parent (const GtkCssSection *section);
function gtk_css_section_get_parent(section) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_css_section_get_parent
  type(c_ptr), value :: section
end function

! GDK_AVAILABLE_IN_ALL
!GFile * gtk_css_section_get_file (const GtkCssSection *section);
function gtk_css_section_get_file(section) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_css_section_get_file
  type(c_ptr), value :: section
end function

! 
!const GtkCssLocation * gtk_css_section_get_start_location (const GtkCssSection *section);
function gtk_css_section_get_start_location(section) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_css_section_get_start_location
  type(c_ptr), value :: section
end function

! 
!const GtkCssLocation * gtk_css_section_get_end_location (const GtkCssSection *section);
function gtk_css_section_get_end_location(section) bind(c)
  use iso_c_binding, only: c_ptr
  type(c_ptr) :: gtk_css_section_get_end_location
  type(c_ptr), value :: section
end function


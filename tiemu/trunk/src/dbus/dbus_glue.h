/* Generated by dbus-binding-tool; do not edit! */


#ifndef __dbus_glib_marshal_tiemudbus_MARSHAL_H__
#define __dbus_glib_marshal_tiemudbus_MARSHAL_H__

#include	<glib-object.h>

G_BEGIN_DECLS

#ifdef G_ENABLE_DEBUG
#define g_marshal_value_peek_boolean(v)  g_value_get_boolean (v)
#define g_marshal_value_peek_char(v)     g_value_get_char (v)
#define g_marshal_value_peek_uchar(v)    g_value_get_uchar (v)
#define g_marshal_value_peek_int(v)      g_value_get_int (v)
#define g_marshal_value_peek_uint(v)     g_value_get_uint (v)
#define g_marshal_value_peek_long(v)     g_value_get_long (v)
#define g_marshal_value_peek_ulong(v)    g_value_get_ulong (v)
#define g_marshal_value_peek_int64(v)    g_value_get_int64 (v)
#define g_marshal_value_peek_uint64(v)   g_value_get_uint64 (v)
#define g_marshal_value_peek_enum(v)     g_value_get_enum (v)
#define g_marshal_value_peek_flags(v)    g_value_get_flags (v)
#define g_marshal_value_peek_float(v)    g_value_get_float (v)
#define g_marshal_value_peek_double(v)   g_value_get_double (v)
#define g_marshal_value_peek_string(v)   (char*) g_value_get_string (v)
#define g_marshal_value_peek_param(v)    g_value_get_param (v)
#define g_marshal_value_peek_boxed(v)    g_value_get_boxed (v)
#define g_marshal_value_peek_pointer(v)  g_value_get_pointer (v)
#define g_marshal_value_peek_object(v)   g_value_get_object (v)
#else /* !G_ENABLE_DEBUG */
/* WARNING: This code accesses GValues directly, which is UNSUPPORTED API.
 *          Do not access GValues directly in your code. Instead, use the
 *          g_value_get_*() functions
 */
#define g_marshal_value_peek_boolean(v)  (v)->data[0].v_int
#define g_marshal_value_peek_char(v)     (v)->data[0].v_int
#define g_marshal_value_peek_uchar(v)    (v)->data[0].v_uint
#define g_marshal_value_peek_int(v)      (v)->data[0].v_int
#define g_marshal_value_peek_uint(v)     (v)->data[0].v_uint
#define g_marshal_value_peek_long(v)     (v)->data[0].v_long
#define g_marshal_value_peek_ulong(v)    (v)->data[0].v_ulong
#define g_marshal_value_peek_int64(v)    (v)->data[0].v_int64
#define g_marshal_value_peek_uint64(v)   (v)->data[0].v_uint64
#define g_marshal_value_peek_enum(v)     (v)->data[0].v_long
#define g_marshal_value_peek_flags(v)    (v)->data[0].v_ulong
#define g_marshal_value_peek_float(v)    (v)->data[0].v_float
#define g_marshal_value_peek_double(v)   (v)->data[0].v_double
#define g_marshal_value_peek_string(v)   (v)->data[0].v_pointer
#define g_marshal_value_peek_param(v)    (v)->data[0].v_pointer
#define g_marshal_value_peek_boxed(v)    (v)->data[0].v_pointer
#define g_marshal_value_peek_pointer(v)  (v)->data[0].v_pointer
#define g_marshal_value_peek_object(v)   (v)->data[0].v_pointer
#endif /* !G_ENABLE_DEBUG */


/* STRING:NONE (/tmp/dbus-binding-tool-c-marshallers.8uJBpG:1) */
extern void dbus_glib_marshal_tiemudbus_STRING__VOID (GClosure     *closure,
                                                      GValue       *return_value,
                                                      guint         n_param_values,
                                                      const GValue *param_values,
                                                      gpointer      invocation_hint,
                                                      gpointer      marshal_data);
void
dbus_glib_marshal_tiemudbus_STRING__VOID (GClosure     *closure,
                                          GValue       *return_value,
                                          guint         n_param_values,
                                          const GValue *param_values,
                                          gpointer      invocation_hint,
                                          gpointer      marshal_data)
{
  typedef gchar* (*GMarshalFunc_STRING__VOID) (gpointer     data1,
                                               gpointer     data2);
  register GMarshalFunc_STRING__VOID callback;
  register GCClosure *cc = (GCClosure*) closure;
  register gpointer data1, data2;
  gchar* v_return;

  g_return_if_fail (return_value != NULL);
  g_return_if_fail (n_param_values == 1);

  if (G_CCLOSURE_SWAP_DATA (closure))
    {
      data1 = closure->data;
      data2 = g_value_peek_pointer (param_values + 0);
    }
  else
    {
      data1 = g_value_peek_pointer (param_values + 0);
      data2 = closure->data;
    }
  callback = (GMarshalFunc_STRING__VOID) (marshal_data ? marshal_data : cc->callback);

  v_return = callback (data1,
                       data2);

  g_value_take_string (return_value, v_return);
}
#define dbus_glib_marshal_tiemudbus_STRING__NONE	dbus_glib_marshal_tiemudbus_STRING__VOID

/* BOOLEAN:NONE (/tmp/dbus-binding-tool-c-marshallers.8uJBpG:2) */
extern void dbus_glib_marshal_tiemudbus_BOOLEAN__VOID (GClosure     *closure,
                                                       GValue       *return_value,
                                                       guint         n_param_values,
                                                       const GValue *param_values,
                                                       gpointer      invocation_hint,
                                                       gpointer      marshal_data);
void
dbus_glib_marshal_tiemudbus_BOOLEAN__VOID (GClosure     *closure,
                                           GValue       *return_value,
                                           guint         n_param_values,
                                           const GValue *param_values,
                                           gpointer      invocation_hint,
                                           gpointer      marshal_data)
{
  typedef gboolean (*GMarshalFunc_BOOLEAN__VOID) (gpointer     data1,
                                                  gpointer     data2);
  register GMarshalFunc_BOOLEAN__VOID callback;
  register GCClosure *cc = (GCClosure*) closure;
  register gpointer data1, data2;
  gboolean v_return;

  g_return_if_fail (return_value != NULL);
  g_return_if_fail (n_param_values == 1);

  if (G_CCLOSURE_SWAP_DATA (closure))
    {
      data1 = closure->data;
      data2 = g_value_peek_pointer (param_values + 0);
    }
  else
    {
      data1 = g_value_peek_pointer (param_values + 0);
      data2 = closure->data;
    }
  callback = (GMarshalFunc_BOOLEAN__VOID) (marshal_data ? marshal_data : cc->callback);

  v_return = callback (data1,
                       data2);

  g_value_set_boolean (return_value, v_return);
}
#define dbus_glib_marshal_tiemudbus_BOOLEAN__NONE	dbus_glib_marshal_tiemudbus_BOOLEAN__VOID

/* BOOLEAN:STRING (/tmp/dbus-binding-tool-c-marshallers.8uJBpG:3) */
extern void dbus_glib_marshal_tiemudbus_BOOLEAN__STRING (GClosure     *closure,
                                                         GValue       *return_value,
                                                         guint         n_param_values,
                                                         const GValue *param_values,
                                                         gpointer      invocation_hint,
                                                         gpointer      marshal_data);
void
dbus_glib_marshal_tiemudbus_BOOLEAN__STRING (GClosure     *closure,
                                             GValue       *return_value,
                                             guint         n_param_values,
                                             const GValue *param_values,
                                             gpointer      invocation_hint,
                                             gpointer      marshal_data)
{
  typedef gboolean (*GMarshalFunc_BOOLEAN__STRING) (gpointer     data1,
                                                    gpointer     arg_1,
                                                    gpointer     data2);
  register GMarshalFunc_BOOLEAN__STRING callback;
  register GCClosure *cc = (GCClosure*) closure;
  register gpointer data1, data2;
  gboolean v_return;

  g_return_if_fail (return_value != NULL);
  g_return_if_fail (n_param_values == 2);

  if (G_CCLOSURE_SWAP_DATA (closure))
    {
      data1 = closure->data;
      data2 = g_value_peek_pointer (param_values + 0);
    }
  else
    {
      data1 = g_value_peek_pointer (param_values + 0);
      data2 = closure->data;
    }
  callback = (GMarshalFunc_BOOLEAN__STRING) (marshal_data ? marshal_data : cc->callback);

  v_return = callback (data1,
                       g_marshal_value_peek_string (param_values + 1),
                       data2);

  g_value_set_boolean (return_value, v_return);
}

/* BOOLEAN:BOXED (/tmp/dbus-binding-tool-c-marshallers.8uJBpG:4) */
extern void dbus_glib_marshal_tiemudbus_BOOLEAN__BOXED (GClosure     *closure,
                                                        GValue       *return_value,
                                                        guint         n_param_values,
                                                        const GValue *param_values,
                                                        gpointer      invocation_hint,
                                                        gpointer      marshal_data);
void
dbus_glib_marshal_tiemudbus_BOOLEAN__BOXED (GClosure     *closure,
                                            GValue       *return_value,
                                            guint         n_param_values,
                                            const GValue *param_values,
                                            gpointer      invocation_hint,
                                            gpointer      marshal_data)
{
  typedef gboolean (*GMarshalFunc_BOOLEAN__BOXED) (gpointer     data1,
                                                   gpointer     arg_1,
                                                   gpointer     data2);
  register GMarshalFunc_BOOLEAN__BOXED callback;
  register GCClosure *cc = (GCClosure*) closure;
  register gpointer data1, data2;
  gboolean v_return;

  g_return_if_fail (return_value != NULL);
  g_return_if_fail (n_param_values == 2);

  if (G_CCLOSURE_SWAP_DATA (closure))
    {
      data1 = closure->data;
      data2 = g_value_peek_pointer (param_values + 0);
    }
  else
    {
      data1 = g_value_peek_pointer (param_values + 0);
      data2 = closure->data;
    }
  callback = (GMarshalFunc_BOOLEAN__BOXED) (marshal_data ? marshal_data : cc->callback);

  v_return = callback (data1,
                       g_marshal_value_peek_boxed (param_values + 1),
                       data2);

  g_value_set_boolean (return_value, v_return);
}

/* INT:NONE (/tmp/dbus-binding-tool-c-marshallers.8uJBpG:5) */
extern void dbus_glib_marshal_tiemudbus_INT__VOID (GClosure     *closure,
                                                   GValue       *return_value,
                                                   guint         n_param_values,
                                                   const GValue *param_values,
                                                   gpointer      invocation_hint,
                                                   gpointer      marshal_data);
void
dbus_glib_marshal_tiemudbus_INT__VOID (GClosure     *closure,
                                       GValue       *return_value,
                                       guint         n_param_values,
                                       const GValue *param_values,
                                       gpointer      invocation_hint,
                                       gpointer      marshal_data)
{
  typedef gint (*GMarshalFunc_INT__VOID) (gpointer     data1,
                                          gpointer     data2);
  register GMarshalFunc_INT__VOID callback;
  register GCClosure *cc = (GCClosure*) closure;
  register gpointer data1, data2;
  gint v_return;

  g_return_if_fail (return_value != NULL);
  g_return_if_fail (n_param_values == 1);

  if (G_CCLOSURE_SWAP_DATA (closure))
    {
      data1 = closure->data;
      data2 = g_value_peek_pointer (param_values + 0);
    }
  else
    {
      data1 = g_value_peek_pointer (param_values + 0);
      data2 = closure->data;
    }
  callback = (GMarshalFunc_INT__VOID) (marshal_data ? marshal_data : cc->callback);

  v_return = callback (data1,
                       data2);

  g_value_set_int (return_value, v_return);
}
#define dbus_glib_marshal_tiemudbus_INT__NONE	dbus_glib_marshal_tiemudbus_INT__VOID

/* BOOLEAN:BOOLEAN (/tmp/dbus-binding-tool-c-marshallers.8uJBpG:6) */
extern void dbus_glib_marshal_tiemudbus_BOOLEAN__BOOLEAN (GClosure     *closure,
                                                          GValue       *return_value,
                                                          guint         n_param_values,
                                                          const GValue *param_values,
                                                          gpointer      invocation_hint,
                                                          gpointer      marshal_data);
void
dbus_glib_marshal_tiemudbus_BOOLEAN__BOOLEAN (GClosure     *closure,
                                              GValue       *return_value,
                                              guint         n_param_values,
                                              const GValue *param_values,
                                              gpointer      invocation_hint,
                                              gpointer      marshal_data)
{
  typedef gboolean (*GMarshalFunc_BOOLEAN__BOOLEAN) (gpointer     data1,
                                                     gboolean     arg_1,
                                                     gpointer     data2);
  register GMarshalFunc_BOOLEAN__BOOLEAN callback;
  register GCClosure *cc = (GCClosure*) closure;
  register gpointer data1, data2;
  gboolean v_return;

  g_return_if_fail (return_value != NULL);
  g_return_if_fail (n_param_values == 2);

  if (G_CCLOSURE_SWAP_DATA (closure))
    {
      data1 = closure->data;
      data2 = g_value_peek_pointer (param_values + 0);
    }
  else
    {
      data1 = g_value_peek_pointer (param_values + 0);
      data2 = closure->data;
    }
  callback = (GMarshalFunc_BOOLEAN__BOOLEAN) (marshal_data ? marshal_data : cc->callback);

  v_return = callback (data1,
                       g_marshal_value_peek_boolean (param_values + 1),
                       data2);

  g_value_set_boolean (return_value, v_return);
}

G_END_DECLS

#endif /* __dbus_glib_marshal_tiemudbus_MARSHAL_H__ */

#include <dbus/dbus-glib.h>
static const DBusGMethodInfo dbus_glib_tiemudbus_methods[] = {
  { (GCallback) tiemudbus_image_loaded, dbus_glib_marshal_tiemudbus_BOOLEAN__NONE, 0 },
  { (GCallback) tiemudbus_emulated_calc_type, dbus_glib_marshal_tiemudbus_INT__NONE, 60 },
  { (GCallback) tiemudbus_emulated_hw_version, dbus_glib_marshal_tiemudbus_INT__NONE, 126 },
  { (GCallback) tiemudbus_emulated_os_version, dbus_glib_marshal_tiemudbus_STRING__NONE, 193 },
  { (GCallback) tiemudbus_ready_for_transfers, dbus_glib_marshal_tiemudbus_BOOLEAN__NONE, 260 },
  { (GCallback) tiemudbus_send_file, dbus_glib_marshal_tiemudbus_BOOLEAN__STRING, 327 },
  { (GCallback) tiemudbus_send_files, dbus_glib_marshal_tiemudbus_BOOLEAN__BOXED, 393 },
  { (GCallback) tiemudbus_debug_file, dbus_glib_marshal_tiemudbus_BOOLEAN__STRING, 461 },
  { (GCallback) tiemudbus_reset_calc, dbus_glib_marshal_tiemudbus_BOOLEAN__BOOLEAN, 528 },
  { (GCallback) tiemudbus_execute_command, dbus_glib_marshal_tiemudbus_BOOLEAN__STRING, 595 },
  { (GCallback) tiemudbus_turn_calc_on, dbus_glib_marshal_tiemudbus_BOOLEAN__NONE, 670 },
  { (GCallback) tiemudbus_enter_debugger, dbus_glib_marshal_tiemudbus_BOOLEAN__NONE, 730 },
};

const DBusGObjectInfo dbus_glib_tiemudbus_object_info = {
  0,
  dbus_glib_tiemudbus_methods,
  12,
"org.ticalc.lpg.tiemu.TiEmuDBus\0image_loaded\0S\0arg0\0O\0F\0R\0b\0\0org.ticalc.lpg.tiemu.TiEmuDBus\0emulated_calc_type\0S\0arg0\0O\0F\0R\0i\0\0org.ticalc.lpg.tiemu.TiEmuDBus\0emulated_hw_version\0S\0arg0\0O\0F\0R\0i\0\0org.ticalc.lpg.tiemu.TiEmuDBus\0emulated_os_version\0S\0arg0\0O\0C\0R\0s\0\0org.ticalc.lpg.tiemu.TiEmuDBus\0ready_for_transfers\0S\0arg0\0O\0F\0R\0b\0\0org.ticalc.lpg.tiemu.TiEmuDBus\0send_file\0S\0arg1\0I\0s\0arg0\0O\0F\0R\0b\0\0org.ticalc.lpg.tiemu.TiEmuDBus\0send_files\0S\0arg1\0I\0as\0arg0\0O\0F\0R\0b\0\0org.ticalc.lpg.tiemu.TiEmuDBus\0debug_file\0S\0arg1\0I\0s\0arg0\0O\0F\0R\0b\0\0org.ticalc.lpg.tiemu.TiEmuDBus\0reset_calc\0S\0arg1\0I\0b\0arg0\0O\0F\0R\0b\0\0org.ticalc.lpg.tiemu.TiEmuDBus\0execute_command\0S\0command\0I\0s\0arg0\0O\0F\0R\0b\0\0org.ticalc.lpg.tiemu.TiEmuDBus\0turn_calc_on\0S\0arg0\0O\0F\0R\0b\0\0org.ticalc.lpg.tiemu.TiEmuDBus\0enter_debugger\0S\0arg0\0O\0F\0R\0b\0\0\0",
"\0",
"\0"
};


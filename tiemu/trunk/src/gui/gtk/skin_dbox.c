/*
 * DO NOT EDIT THIS FILE - it is generated by Glade.
 */

#ifdef HAVE_CONFIG_H
#  include <config.h>
#endif

#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>

#include <gdk/gdkkeysyms.h>
#include <gtk/gtk.h>

#include "skin_cb.h"
#include "skin_dbox.h"
#include "support.h"

#define GLADE_HOOKUP_OBJECT(component,widget,name) \
  g_object_set_data_full (G_OBJECT (component), name, \
    gtk_widget_ref (widget), (GDestroyNotify) gtk_widget_unref)

#define GLADE_HOOKUP_OBJECT_NO_REF(component,widget,name) \
  g_object_set_data (G_OBJECT (component), name, widget)

GtkWidget*
create_skin_dbox (void)
{
  GtkWidget *skin_dbox;
  GtkWidget *dialog_vbox1;
  GtkWidget *frame1;
  GtkWidget *scrolledwindow1;
  GtkWidget *clist1;
  GtkWidget *label1;
  GtkWidget *dialog_action_area1;
  GtkWidget *button7;
  GtkWidget *button6;

  skin_dbox = gtk_dialog_new ();
  gtk_window_set_title (GTK_WINDOW (skin_dbox), _("Skin listing"));

  dialog_vbox1 = GTK_DIALOG (skin_dbox)->vbox;
  gtk_widget_show (dialog_vbox1);

  frame1 = gtk_frame_new (NULL);
  gtk_widget_show (frame1);
  gtk_box_pack_start (GTK_BOX (dialog_vbox1), frame1, TRUE, TRUE, 0);

  scrolledwindow1 = gtk_scrolled_window_new (NULL, NULL);
  gtk_widget_show (scrolledwindow1);
  gtk_container_add (GTK_CONTAINER (frame1), scrolledwindow1);

  clist1 = gtk_tree_view_new ();
  gtk_widget_show (clist1);
  gtk_container_add (GTK_CONTAINER (scrolledwindow1), clist1);

  label1 = gtk_label_new (_("Select a skin"));
  gtk_widget_show (label1);
  gtk_frame_set_label_widget (GTK_FRAME (frame1), label1);
  gtk_label_set_justify (GTK_LABEL (label1), GTK_JUSTIFY_LEFT);

  dialog_action_area1 = GTK_DIALOG (skin_dbox)->action_area;
  gtk_widget_show (dialog_action_area1);
  gtk_button_box_set_layout (GTK_BUTTON_BOX (dialog_action_area1), GTK_BUTTONBOX_END);

  button7 = gtk_button_new_from_stock ("gtk-cancel");
  gtk_widget_show (button7);
  gtk_dialog_add_action_widget (GTK_DIALOG (skin_dbox), button7, GTK_RESPONSE_CANCEL);
  GTK_WIDGET_SET_FLAGS (button7, GTK_CAN_DEFAULT);

  button6 = gtk_button_new_from_stock ("gtk-ok");
  gtk_widget_show (button6);
  gtk_dialog_add_action_widget (GTK_DIALOG (skin_dbox), button6, GTK_RESPONSE_OK);
  GTK_WIDGET_SET_FLAGS (button6, GTK_CAN_DEFAULT);

  g_signal_connect ((gpointer) skin_dbox, "destroy_event",
                    G_CALLBACK (on_skin_dbox_destroy),
                    NULL);
  g_signal_connect ((gpointer) clist1, "button_press_event",
                    G_CALLBACK (on_skin_clist1_button_press_event),
                    NULL);
  g_signal_connect ((gpointer) button7, "clicked",
                    G_CALLBACK (on_skin_button7_clicked),
                    NULL);
  g_signal_connect ((gpointer) button6, "clicked",
                    G_CALLBACK (on_skin_button6_clicked),
                    NULL);

  /* Store pointers to all widgets, for use by lookup_widget(). */
  GLADE_HOOKUP_OBJECT_NO_REF (skin_dbox, skin_dbox, "skin_dbox");
  GLADE_HOOKUP_OBJECT_NO_REF (skin_dbox, dialog_vbox1, "dialog_vbox1");
  GLADE_HOOKUP_OBJECT (skin_dbox, frame1, "frame1");
  GLADE_HOOKUP_OBJECT (skin_dbox, scrolledwindow1, "scrolledwindow1");
  GLADE_HOOKUP_OBJECT (skin_dbox, clist1, "clist1");
  GLADE_HOOKUP_OBJECT (skin_dbox, label1, "label1");
  GLADE_HOOKUP_OBJECT_NO_REF (skin_dbox, dialog_action_area1, "dialog_action_area1");
  GLADE_HOOKUP_OBJECT (skin_dbox, button7, "button7");
  GLADE_HOOKUP_OBJECT (skin_dbox, button6, "button6");

  return skin_dbox;
}

GtkWidget*
create_window2 (void)
{
  GtkWidget *window2;
  GtkWidget *label2;

  window2 = gtk_window_new (GTK_WINDOW_TOPLEVEL);
  gtk_window_set_title (GTK_WINDOW (window2), _("Scanning..."));

  label2 = gtk_label_new (_("Cache is being built.\nThis may take a while.\nPlease wait..."));
  gtk_widget_show (label2);
  gtk_container_add (GTK_CONTAINER (window2), label2);
  gtk_label_set_line_wrap (GTK_LABEL (label2), TRUE);
  gtk_misc_set_padding (GTK_MISC (label2), 10, 10);

  /* Store pointers to all widgets, for use by lookup_widget(). */
  GLADE_HOOKUP_OBJECT_NO_REF (window2, window2, "window2");
  GLADE_HOOKUP_OBJECT (window2, label2, "label2");

  return window2;
}


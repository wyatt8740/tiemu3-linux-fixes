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

#include "wizard_cb.h"
#include "wizard_dbox.h"
#include "support.h"

#define GLADE_HOOKUP_OBJECT(component,widget,name) \
  g_object_set_data_full (G_OBJECT (component), name, \
    gtk_widget_ref (widget), (GDestroyNotify) gtk_widget_unref)

#define GLADE_HOOKUP_OBJECT_NO_REF(component,widget,name) \
  g_object_set_data (G_OBJECT (component), name, widget)

GtkWidget*
create_flash_fileselection (void)
{
  GtkWidget *flash_fileselection;
  GtkWidget *ok_button2;
  GtkWidget *cancel_button2;
  GtkAccelGroup *accel_group;

  accel_group = gtk_accel_group_new ();

  flash_fileselection = gtk_file_selection_new (_("Select a FLASH file to load"));
  gtk_container_set_border_width (GTK_CONTAINER (flash_fileselection), 10);
  gtk_window_set_modal (GTK_WINDOW (flash_fileselection), TRUE);

  ok_button2 = GTK_FILE_SELECTION (flash_fileselection)->ok_button;
  gtk_widget_show (ok_button2);
  GTK_WIDGET_SET_FLAGS (ok_button2, GTK_CAN_DEFAULT);
  gtk_widget_add_accelerator (ok_button2, "clicked", accel_group,
                              GDK_Return, 0,
                              GTK_ACCEL_VISIBLE);

  cancel_button2 = GTK_FILE_SELECTION (flash_fileselection)->cancel_button;
  gtk_widget_show (cancel_button2);
  GTK_WIDGET_SET_FLAGS (cancel_button2, GTK_CAN_DEFAULT);
  gtk_widget_add_accelerator (cancel_button2, "clicked", accel_group,
                              GDK_Escape, 0,
                              GTK_ACCEL_VISIBLE);

  g_signal_connect ((gpointer) flash_fileselection, "destroy",
                    G_CALLBACK (on_flashfile_fileselection_destroy),
                    NULL);
  g_signal_connect ((gpointer) ok_button2, "clicked",
                    G_CALLBACK (on_flashfile_ok_button2_clicked),
                    NULL);
  g_signal_connect ((gpointer) cancel_button2, "clicked",
                    G_CALLBACK (on_flashfile_cancel_button2_clicked),
                    NULL);

  /* Store pointers to all widgets, for use by lookup_widget(). */
  GLADE_HOOKUP_OBJECT_NO_REF (flash_fileselection, flash_fileselection, "flash_fileselection");
  GLADE_HOOKUP_OBJECT_NO_REF (flash_fileselection, ok_button2, "ok_button2");
  GLADE_HOOKUP_OBJECT_NO_REF (flash_fileselection, cancel_button2, "cancel_button2");

  gtk_window_add_accel_group (GTK_WINDOW (flash_fileselection), accel_group);

  return flash_fileselection;
}

GtkWidget*
create_romfile_fileselection (void)
{
  GtkWidget *romfile_fileselection;
  GtkWidget *ok_button2;
  GtkWidget *cancel_button2;
  GtkAccelGroup *accel_group;

  accel_group = gtk_accel_group_new ();

  romfile_fileselection = gtk_file_selection_new (_("Select a ROM to load"));
  gtk_container_set_border_width (GTK_CONTAINER (romfile_fileselection), 10);
  gtk_window_set_modal (GTK_WINDOW (romfile_fileselection), TRUE);

  ok_button2 = GTK_FILE_SELECTION (romfile_fileselection)->ok_button;
  gtk_widget_show (ok_button2);
  GTK_WIDGET_SET_FLAGS (ok_button2, GTK_CAN_DEFAULT);
  gtk_widget_add_accelerator (ok_button2, "clicked", accel_group,
                              GDK_Return, 0,
                              GTK_ACCEL_VISIBLE);

  cancel_button2 = GTK_FILE_SELECTION (romfile_fileselection)->cancel_button;
  gtk_widget_show (cancel_button2);
  GTK_WIDGET_SET_FLAGS (cancel_button2, GTK_CAN_DEFAULT);
  gtk_widget_add_accelerator (cancel_button2, "clicked", accel_group,
                              GDK_Escape, 0,
                              GTK_ACCEL_VISIBLE);

  g_signal_connect ((gpointer) romfile_fileselection, "destroy",
                    G_CALLBACK (on_romfile_fileselection_destroy),
                    NULL);
  g_signal_connect ((gpointer) ok_button2, "clicked",
                    G_CALLBACK (on_romfile_ok_button2_clicked),
                    NULL);
  g_signal_connect ((gpointer) cancel_button2, "clicked",
                    G_CALLBACK (on_romfile_cancel_button2_clicked),
                    NULL);

  /* Store pointers to all widgets, for use by lookup_widget(). */
  GLADE_HOOKUP_OBJECT_NO_REF (romfile_fileselection, romfile_fileselection, "romfile_fileselection");
  GLADE_HOOKUP_OBJECT_NO_REF (romfile_fileselection, ok_button2, "ok_button2");
  GLADE_HOOKUP_OBJECT_NO_REF (romfile_fileselection, cancel_button2, "cancel_button2");

  gtk_window_add_accel_group (GTK_WINDOW (romfile_fileselection), accel_group);

  return romfile_fileselection;
}

GtkWidget*
create_step1_dbox (void)
{
  GtkWidget *step1_dbox;
  GtkWidget *dialog_vbox3;
  GtkWidget *vbox1;
  GtkWidget *label10;
  GtkWidget *hseparator1;
  GtkWidget *radiobutton1;
  GSList *radiobutton1_group = NULL;
  GtkWidget *radiobutton2;
  GtkWidget *radiobutton3;
  GtkWidget *hseparator2;
  GtkWidget *label11;
  GtkWidget *dialog_action_area3;
  GtkWidget *hbuttonbox3;
  GtkWidget *button4;
  GtkWidget *button6;
  GtkWidget *button5;
  GtkWidget *alignment1;
  GtkWidget *hbox6;
  GtkWidget *image1;
  GtkWidget *label18;
  GtkAccelGroup *accel_group;

  accel_group = gtk_accel_group_new ();

  step1_dbox = gtk_dialog_new ();
  gtk_window_set_title (GTK_WINDOW (step1_dbox), _("GtkTiEmu startup"));
  gtk_window_set_modal (GTK_WINDOW (step1_dbox), TRUE);

  dialog_vbox3 = GTK_DIALOG (step1_dbox)->vbox;
  gtk_widget_show (dialog_vbox3);

  vbox1 = gtk_vbox_new (FALSE, 0);
  gtk_widget_show (vbox1);
  gtk_box_pack_start (GTK_BOX (dialog_vbox3), vbox1, TRUE, TRUE, 0);
  gtk_container_set_border_width (GTK_CONTAINER (vbox1), 5);

  label10 = gtk_label_new (_("Welcome to GtkTiEmu. To use it, you must have a ROM image..."));
  gtk_widget_show (label10);
  gtk_box_pack_start (GTK_BOX (vbox1), label10, FALSE, FALSE, 0);
  gtk_label_set_justify (GTK_LABEL (label10), GTK_JUSTIFY_FILL);
  gtk_label_set_line_wrap (GTK_LABEL (label10), TRUE);
  gtk_misc_set_alignment (GTK_MISC (label10), 0, 0.5);
  gtk_misc_set_padding (GTK_MISC (label10), 15, 5);

  hseparator1 = gtk_hseparator_new ();
  gtk_widget_show (hseparator1);
  gtk_box_pack_start (GTK_BOX (vbox1), hseparator1, TRUE, TRUE, 0);

  radiobutton1 = gtk_radio_button_new_with_mnemonic (NULL, _("You can use TiLP or another dumping program \nto get a ROM image of your calculator."));
  gtk_widget_show (radiobutton1);
  gtk_box_pack_start (GTK_BOX (vbox1), radiobutton1, FALSE, FALSE, 0);
  gtk_radio_button_set_group (GTK_RADIO_BUTTON (radiobutton1), radiobutton1_group);
  radiobutton1_group = gtk_radio_button_get_group (GTK_RADIO_BUTTON (radiobutton1));

  radiobutton2 = gtk_radio_button_new_with_mnemonic (NULL, _("You have downloaded a FLASH upgrade on the TI\nwebsite and would like to use it."));
  gtk_widget_show (radiobutton2);
  gtk_box_pack_start (GTK_BOX (vbox1), radiobutton2, FALSE, FALSE, 0);
  gtk_radio_button_set_group (GTK_RADIO_BUTTON (radiobutton2), radiobutton1_group);
  radiobutton1_group = gtk_radio_button_get_group (GTK_RADIO_BUTTON (radiobutton2));

  radiobutton3 = gtk_radio_button_new_with_mnemonic (NULL, _("You already have a ROM image and would like to use it."));
  gtk_widget_show (radiobutton3);
  gtk_box_pack_start (GTK_BOX (vbox1), radiobutton3, FALSE, FALSE, 0);
  gtk_radio_button_set_group (GTK_RADIO_BUTTON (radiobutton3), radiobutton1_group);
  radiobutton1_group = gtk_radio_button_get_group (GTK_RADIO_BUTTON (radiobutton3));

  hseparator2 = gtk_hseparator_new ();
  gtk_widget_show (hseparator2);
  gtk_box_pack_start (GTK_BOX (vbox1), hseparator2, TRUE, TRUE, 0);

  label11 = gtk_label_new (_("Remind you that you should not distribute your ROM images. They are copyrighted by Texas Instruments."));
  gtk_widget_show (label11);
  gtk_box_pack_start (GTK_BOX (vbox1), label11, FALSE, FALSE, 0);
  gtk_label_set_justify (GTK_LABEL (label11), GTK_JUSTIFY_FILL);
  gtk_label_set_line_wrap (GTK_LABEL (label11), TRUE);
  gtk_misc_set_alignment (GTK_MISC (label11), 0, 0.5);
  gtk_misc_set_padding (GTK_MISC (label11), 15, 5);

  dialog_action_area3 = GTK_DIALOG (step1_dbox)->action_area;
  gtk_widget_show (dialog_action_area3);
  gtk_button_box_set_layout (GTK_BUTTON_BOX (dialog_action_area3), GTK_BUTTONBOX_END);

  hbuttonbox3 = gtk_hbutton_box_new ();
  gtk_widget_show (hbuttonbox3);
  gtk_container_add (GTK_CONTAINER (dialog_action_area3), hbuttonbox3);
  gtk_box_set_spacing (GTK_BOX (hbuttonbox3), 30);

  button4 = gtk_button_new_from_stock ("gtk-go-back");
  gtk_widget_show (button4);
  gtk_container_add (GTK_CONTAINER (hbuttonbox3), button4);
  GTK_WIDGET_SET_FLAGS (button4, GTK_CAN_DEFAULT);
  gtk_widget_add_accelerator (button4, "clicked", accel_group,
                              GDK_Return, 0,
                              GTK_ACCEL_VISIBLE);

  button6 = gtk_button_new_from_stock ("gtk-cancel");
  gtk_widget_show (button6);
  gtk_container_add (GTK_CONTAINER (hbuttonbox3), button6);
  GTK_WIDGET_SET_FLAGS (button6, GTK_CAN_DEFAULT);

  button5 = gtk_button_new ();
  gtk_widget_show (button5);
  gtk_container_add (GTK_CONTAINER (hbuttonbox3), button5);
  GTK_WIDGET_SET_FLAGS (button5, GTK_CAN_DEFAULT);
  gtk_widget_add_accelerator (button5, "clicked", accel_group,
                              GDK_Escape, 0,
                              GTK_ACCEL_VISIBLE);

  alignment1 = gtk_alignment_new (0.5, 0.5, 0, 0);
  gtk_widget_show (alignment1);
  gtk_container_add (GTK_CONTAINER (button5), alignment1);

  hbox6 = gtk_hbox_new (FALSE, 2);
  gtk_widget_show (hbox6);
  gtk_container_add (GTK_CONTAINER (alignment1), hbox6);

  image1 = gtk_image_new_from_stock ("gtk-go-forward", GTK_ICON_SIZE_BUTTON);
  gtk_widget_show (image1);
  gtk_box_pack_start (GTK_BOX (hbox6), image1, FALSE, FALSE, 0);

  label18 = gtk_label_new_with_mnemonic (_("_Next"));
  gtk_widget_show (label18);
  gtk_box_pack_start (GTK_BOX (hbox6), label18, FALSE, FALSE, 0);
  gtk_label_set_justify (GTK_LABEL (label18), GTK_JUSTIFY_LEFT);

  g_signal_connect ((gpointer) button4, "clicked",
                    G_CALLBACK (step1_b1_button_clicked),
                    NULL);
  g_signal_connect ((gpointer) button6, "clicked",
                    G_CALLBACK (step1_b3_button_clicked),
                    NULL);
  g_signal_connect ((gpointer) button5, "clicked",
                    G_CALLBACK (step1_b2_button_clicked),
                    NULL);

  /* Store pointers to all widgets, for use by lookup_widget(). */
  GLADE_HOOKUP_OBJECT_NO_REF (step1_dbox, step1_dbox, "step1_dbox");
  GLADE_HOOKUP_OBJECT_NO_REF (step1_dbox, dialog_vbox3, "dialog_vbox3");
  GLADE_HOOKUP_OBJECT (step1_dbox, vbox1, "vbox1");
  GLADE_HOOKUP_OBJECT (step1_dbox, label10, "label10");
  GLADE_HOOKUP_OBJECT (step1_dbox, hseparator1, "hseparator1");
  GLADE_HOOKUP_OBJECT (step1_dbox, radiobutton1, "radiobutton1");
  GLADE_HOOKUP_OBJECT (step1_dbox, radiobutton2, "radiobutton2");
  GLADE_HOOKUP_OBJECT (step1_dbox, radiobutton3, "radiobutton3");
  GLADE_HOOKUP_OBJECT (step1_dbox, hseparator2, "hseparator2");
  GLADE_HOOKUP_OBJECT (step1_dbox, label11, "label11");
  GLADE_HOOKUP_OBJECT_NO_REF (step1_dbox, dialog_action_area3, "dialog_action_area3");
  GLADE_HOOKUP_OBJECT (step1_dbox, hbuttonbox3, "hbuttonbox3");
  GLADE_HOOKUP_OBJECT (step1_dbox, button4, "button4");
  GLADE_HOOKUP_OBJECT (step1_dbox, button6, "button6");
  GLADE_HOOKUP_OBJECT (step1_dbox, button5, "button5");
  GLADE_HOOKUP_OBJECT (step1_dbox, alignment1, "alignment1");
  GLADE_HOOKUP_OBJECT (step1_dbox, hbox6, "hbox6");
  GLADE_HOOKUP_OBJECT (step1_dbox, image1, "image1");
  GLADE_HOOKUP_OBJECT (step1_dbox, label18, "label18");

  gtk_window_add_accel_group (GTK_WINDOW (step1_dbox), accel_group);

  return step1_dbox;
}

GtkWidget*
create_msg1_dbox (void)
{
  GtkWidget *msg1_dbox;
  GtkWidget *dialog_vbox1;
  GtkWidget *label2;
  GtkWidget *dialog_action_area1;
  GtkWidget *hbuttonbox1;
  GtkWidget *button1;
  GtkAccelGroup *accel_group;

  accel_group = gtk_accel_group_new ();

  msg1_dbox = gtk_dialog_new ();
  gtk_window_set_title (GTK_WINDOW (msg1_dbox), _("Information"));
  gtk_window_set_modal (GTK_WINDOW (msg1_dbox), TRUE);

  dialog_vbox1 = GTK_DIALOG (msg1_dbox)->vbox;
  gtk_widget_show (dialog_vbox1);

  label2 = gtk_label_new (_("If you want get a ROM image with\nTiLP, you have to launch it, (eventually) \nconfigure it, and next, go to the 'Functions2'\nmenu for using the ROM dumper.\nTiLP can be downloaded at:\n<http://lpg.ticalc.org/prj_tilp>"));
  gtk_widget_show (label2);
  gtk_box_pack_start (GTK_BOX (dialog_vbox1), label2, FALSE, FALSE, 0);
  gtk_label_set_justify (GTK_LABEL (label2), GTK_JUSTIFY_FILL);
  gtk_label_set_line_wrap (GTK_LABEL (label2), TRUE);
  gtk_misc_set_alignment (GTK_MISC (label2), 0, 0.5);
  gtk_misc_set_padding (GTK_MISC (label2), 5, 5);

  dialog_action_area1 = GTK_DIALOG (msg1_dbox)->action_area;
  gtk_widget_show (dialog_action_area1);
  gtk_button_box_set_layout (GTK_BUTTON_BOX (dialog_action_area1), GTK_BUTTONBOX_END);

  hbuttonbox1 = gtk_hbutton_box_new ();
  gtk_widget_show (hbuttonbox1);
  gtk_container_add (GTK_CONTAINER (dialog_action_area1), hbuttonbox1);
  gtk_box_set_spacing (GTK_BOX (hbuttonbox1), 30);

  button1 = gtk_button_new_from_stock ("gtk-close");
  gtk_widget_show (button1);
  gtk_container_add (GTK_CONTAINER (hbuttonbox1), button1);
  GTK_WIDGET_SET_FLAGS (button1, GTK_CAN_DEFAULT);
  gtk_widget_add_accelerator (button1, "clicked", accel_group,
                              GDK_Return, 0,
                              GTK_ACCEL_VISIBLE);
  gtk_widget_add_accelerator (button1, "clicked", accel_group,
                              GDK_Escape, 0,
                              GTK_ACCEL_VISIBLE);

  g_signal_connect ((gpointer) button1, "clicked",
                    G_CALLBACK (msg1_ok_button_clicked),
                    NULL);

  /* Store pointers to all widgets, for use by lookup_widget(). */
  GLADE_HOOKUP_OBJECT_NO_REF (msg1_dbox, msg1_dbox, "msg1_dbox");
  GLADE_HOOKUP_OBJECT_NO_REF (msg1_dbox, dialog_vbox1, "dialog_vbox1");
  GLADE_HOOKUP_OBJECT (msg1_dbox, label2, "label2");
  GLADE_HOOKUP_OBJECT_NO_REF (msg1_dbox, dialog_action_area1, "dialog_action_area1");
  GLADE_HOOKUP_OBJECT (msg1_dbox, hbuttonbox1, "hbuttonbox1");
  GLADE_HOOKUP_OBJECT (msg1_dbox, button1, "button1");

  gtk_window_add_accel_group (GTK_WINDOW (msg1_dbox), accel_group);

  return msg1_dbox;
}

GtkWidget*
create_step3_dbox (void)
{
  GtkWidget *step3_dbox;
  GtkWidget *dialog_vbox3;
  GtkWidget *vbox1;
  GtkWidget *label10;
  GtkWidget *hseparator1;
  GtkWidget *vbox3;
  GtkWidget *label12;
  GtkWidget *label13;
  GtkWidget *label14;
  GtkWidget *label15;
  GtkWidget *label17;
  GtkWidget *hseparator2;
  GtkWidget *label11;
  GtkWidget *dialog_action_area3;
  GtkWidget *hbuttonbox3;
  GtkWidget *button4;
  GtkWidget *button6;
  GtkWidget *button5;
  GtkAccelGroup *accel_group;

  accel_group = gtk_accel_group_new ();

  step3_dbox = gtk_dialog_new ();
  gtk_window_set_title (GTK_WINDOW (step3_dbox), _("GtkTiEmu startup"));
  gtk_window_set_modal (GTK_WINDOW (step3_dbox), TRUE);

  dialog_vbox3 = GTK_DIALOG (step3_dbox)->vbox;
  gtk_widget_show (dialog_vbox3);

  vbox1 = gtk_vbox_new (FALSE, 0);
  gtk_widget_show (vbox1);
  gtk_box_pack_start (GTK_BOX (dialog_vbox3), vbox1, TRUE, TRUE, 0);
  gtk_container_set_border_width (GTK_CONTAINER (vbox1), 5);

  label10 = gtk_label_new (_("GtkTiEmu is now set  up and ready for use. Some tips on how to use the emulator:"));
  gtk_widget_show (label10);
  gtk_box_pack_start (GTK_BOX (vbox1), label10, FALSE, FALSE, 0);
  gtk_label_set_justify (GTK_LABEL (label10), GTK_JUSTIFY_FILL);
  gtk_label_set_line_wrap (GTK_LABEL (label10), TRUE);
  gtk_misc_set_alignment (GTK_MISC (label10), 0, 0.5);
  gtk_misc_set_padding (GTK_MISC (label10), 15, 5);

  hseparator1 = gtk_hseparator_new ();
  gtk_widget_show (hseparator1);
  gtk_box_pack_start (GTK_BOX (vbox1), hseparator1, TRUE, TRUE, 0);

  vbox3 = gtk_vbox_new (FALSE, 0);
  gtk_widget_show (vbox3);
  gtk_box_pack_start (GTK_BOX (vbox1), vbox3, TRUE, TRUE, 0);
  gtk_container_set_border_width (GTK_CONTAINER (vbox3), 5);

  label12 = gtk_label_new (_("* You have access to a popup menu by right-clicking in the emulator's window."));
  gtk_widget_show (label12);
  gtk_box_pack_start (GTK_BOX (vbox3), label12, FALSE, FALSE, 0);
  gtk_label_set_justify (GTK_LABEL (label12), GTK_JUSTIFY_FILL);
  gtk_label_set_line_wrap (GTK_LABEL (label12), TRUE);
  gtk_misc_set_alignment (GTK_MISC (label12), 0, 0.5);
  gtk_misc_set_padding (GTK_MISC (label12), 5, 0);

  label13 = gtk_label_new (_("* To use keys, use mouse or keyboard"));
  gtk_widget_show (label13);
  gtk_box_pack_start (GTK_BOX (vbox3), label13, FALSE, FALSE, 0);
  gtk_label_set_justify (GTK_LABEL (label13), GTK_JUSTIFY_FILL);
  gtk_label_set_line_wrap (GTK_LABEL (label13), TRUE);
  gtk_misc_set_alignment (GTK_MISC (label13), 0, 0.5);
  gtk_misc_set_padding (GTK_MISC (label13), 5, 0);

  label14 = gtk_label_new (_("* To change to a different calculator or ROM version, use an item of the ROM menu."));
  gtk_widget_show (label14);
  gtk_box_pack_start (GTK_BOX (vbox3), label14, FALSE, FALSE, 0);
  gtk_label_set_justify (GTK_LABEL (label14), GTK_JUSTIFY_FILL);
  gtk_label_set_line_wrap (GTK_LABEL (label14), TRUE);
  gtk_misc_set_alignment (GTK_MISC (label14), 0, 0.5);
  gtk_misc_set_padding (GTK_MISC (label14), 5, 0);

  label15 = gtk_label_new (_("* You can save the emulator state and config."));
  gtk_widget_show (label15);
  gtk_box_pack_start (GTK_BOX (vbox3), label15, FALSE, FALSE, 0);
  gtk_label_set_justify (GTK_LABEL (label15), GTK_JUSTIFY_FILL);
  gtk_label_set_line_wrap (GTK_LABEL (label15), TRUE);
  gtk_misc_set_alignment (GTK_MISC (label15), 0, 0.5);
  gtk_misc_set_padding (GTK_MISC (label15), 5, 0);

  label17 = gtk_label_new (_("* If your calculator screen is blank, use 'Ctrl' with '+/-' for adjusting contrast."));
  gtk_widget_show (label17);
  gtk_box_pack_start (GTK_BOX (vbox3), label17, FALSE, FALSE, 0);
  gtk_label_set_justify (GTK_LABEL (label17), GTK_JUSTIFY_FILL);
  gtk_label_set_line_wrap (GTK_LABEL (label17), TRUE);
  gtk_misc_set_alignment (GTK_MISC (label17), 0, 0.5);
  gtk_misc_set_padding (GTK_MISC (label17), 5, 0);

  hseparator2 = gtk_hseparator_new ();
  gtk_widget_show (hseparator2);
  gtk_box_pack_start (GTK_BOX (vbox1), hseparator2, TRUE, TRUE, 0);

  label11 = gtk_label_new (_("Click the 'Finish' button to start GtkTiEmu."));
  gtk_widget_show (label11);
  gtk_box_pack_start (GTK_BOX (vbox1), label11, FALSE, FALSE, 0);
  gtk_label_set_justify (GTK_LABEL (label11), GTK_JUSTIFY_FILL);
  gtk_label_set_line_wrap (GTK_LABEL (label11), TRUE);
  gtk_misc_set_alignment (GTK_MISC (label11), 0, 0.5);
  gtk_misc_set_padding (GTK_MISC (label11), 15, 5);

  dialog_action_area3 = GTK_DIALOG (step3_dbox)->action_area;
  gtk_widget_show (dialog_action_area3);
  gtk_button_box_set_layout (GTK_BUTTON_BOX (dialog_action_area3), GTK_BUTTONBOX_END);

  hbuttonbox3 = gtk_hbutton_box_new ();
  gtk_widget_show (hbuttonbox3);
  gtk_container_add (GTK_CONTAINER (dialog_action_area3), hbuttonbox3);
  gtk_box_set_spacing (GTK_BOX (hbuttonbox3), 30);

  button4 = gtk_button_new_from_stock ("gtk-go-back");
  gtk_widget_show (button4);
  gtk_container_add (GTK_CONTAINER (hbuttonbox3), button4);
  GTK_WIDGET_SET_FLAGS (button4, GTK_CAN_DEFAULT);
  gtk_widget_add_accelerator (button4, "clicked", accel_group,
                              GDK_Return, 0,
                              GTK_ACCEL_VISIBLE);

  button6 = gtk_button_new_from_stock ("gtk-cancel");
  gtk_widget_show (button6);
  gtk_container_add (GTK_CONTAINER (hbuttonbox3), button6);
  GTK_WIDGET_SET_FLAGS (button6, GTK_CAN_DEFAULT);

  button5 = gtk_button_new_from_stock ("gtk-ok");
  gtk_widget_show (button5);
  gtk_container_add (GTK_CONTAINER (hbuttonbox3), button5);
  GTK_WIDGET_SET_FLAGS (button5, GTK_CAN_DEFAULT);
  gtk_widget_add_accelerator (button5, "clicked", accel_group,
                              GDK_Escape, 0,
                              GTK_ACCEL_VISIBLE);

  g_signal_connect ((gpointer) button4, "clicked",
                    G_CALLBACK (step3_b1_button_clicked),
                    NULL);
  g_signal_connect ((gpointer) button6, "clicked",
                    G_CALLBACK (step3_b3_button_clicked),
                    NULL);
  g_signal_connect ((gpointer) button5, "clicked",
                    G_CALLBACK (step3_b2_button_clicked),
                    NULL);

  /* Store pointers to all widgets, for use by lookup_widget(). */
  GLADE_HOOKUP_OBJECT_NO_REF (step3_dbox, step3_dbox, "step3_dbox");
  GLADE_HOOKUP_OBJECT_NO_REF (step3_dbox, dialog_vbox3, "dialog_vbox3");
  GLADE_HOOKUP_OBJECT (step3_dbox, vbox1, "vbox1");
  GLADE_HOOKUP_OBJECT (step3_dbox, label10, "label10");
  GLADE_HOOKUP_OBJECT (step3_dbox, hseparator1, "hseparator1");
  GLADE_HOOKUP_OBJECT (step3_dbox, vbox3, "vbox3");
  GLADE_HOOKUP_OBJECT (step3_dbox, label12, "label12");
  GLADE_HOOKUP_OBJECT (step3_dbox, label13, "label13");
  GLADE_HOOKUP_OBJECT (step3_dbox, label14, "label14");
  GLADE_HOOKUP_OBJECT (step3_dbox, label15, "label15");
  GLADE_HOOKUP_OBJECT (step3_dbox, label17, "label17");
  GLADE_HOOKUP_OBJECT (step3_dbox, hseparator2, "hseparator2");
  GLADE_HOOKUP_OBJECT (step3_dbox, label11, "label11");
  GLADE_HOOKUP_OBJECT_NO_REF (step3_dbox, dialog_action_area3, "dialog_action_area3");
  GLADE_HOOKUP_OBJECT (step3_dbox, hbuttonbox3, "hbuttonbox3");
  GLADE_HOOKUP_OBJECT (step3_dbox, button4, "button4");
  GLADE_HOOKUP_OBJECT (step3_dbox, button6, "button6");
  GLADE_HOOKUP_OBJECT (step3_dbox, button5, "button5");

  gtk_window_add_accel_group (GTK_WINDOW (step3_dbox), accel_group);

  return step3_dbox;
}

GtkWidget*
create_wait_dbox (void)
{
  GtkWidget *wait_dbox;
  GtkWidget *dialog_vbox1;
  GtkWidget *vbox2;
  GtkWidget *label2;
  GtkWidget *hseparator3;
  GtkWidget *label16;
  GtkWidget *dialog_action_area1;
  GtkWidget *hbuttonbox1;
  GtkWidget *button1;
  GtkAccelGroup *accel_group;

  accel_group = gtk_accel_group_new ();

  wait_dbox = gtk_dialog_new ();
  gtk_window_set_title (GTK_WINDOW (wait_dbox), _("Information"));
  gtk_window_set_modal (GTK_WINDOW (wait_dbox), TRUE);

  dialog_vbox1 = GTK_DIALOG (wait_dbox)->vbox;
  gtk_widget_show (dialog_vbox1);

  vbox2 = gtk_vbox_new (FALSE, 0);
  gtk_widget_show (vbox2);
  gtk_box_pack_start (GTK_BOX (dialog_vbox1), vbox2, FALSE, FALSE, 0);

  label2 = gtk_label_new (_("The FLASH upgrade you have\nselected is being to be converted\ninto a 2MB ROM image.\nPlease wait..."));
  gtk_widget_show (label2);
  gtk_box_pack_start (GTK_BOX (vbox2), label2, FALSE, FALSE, 0);
  gtk_label_set_justify (GTK_LABEL (label2), GTK_JUSTIFY_FILL);
  gtk_label_set_line_wrap (GTK_LABEL (label2), TRUE);
  gtk_misc_set_alignment (GTK_MISC (label2), 0, 0.5);
  gtk_misc_set_padding (GTK_MISC (label2), 5, 5);

  hseparator3 = gtk_hseparator_new ();
  gtk_widget_show (hseparator3);
  gtk_box_pack_start (GTK_BOX (vbox2), hseparator3, TRUE, TRUE, 0);

  label16 = gtk_label_new (_("Note also that the converted ROM\nimage will not have a boot block."));
  gtk_widget_show (label16);
  gtk_box_pack_start (GTK_BOX (vbox2), label16, FALSE, FALSE, 0);
  gtk_label_set_justify (GTK_LABEL (label16), GTK_JUSTIFY_FILL);
  gtk_label_set_line_wrap (GTK_LABEL (label16), TRUE);
  gtk_misc_set_alignment (GTK_MISC (label16), 0, 0.5);
  gtk_misc_set_padding (GTK_MISC (label16), 5, 5);

  dialog_action_area1 = GTK_DIALOG (wait_dbox)->action_area;
  gtk_widget_show (dialog_action_area1);
  gtk_button_box_set_layout (GTK_BUTTON_BOX (dialog_action_area1), GTK_BUTTONBOX_END);

  hbuttonbox1 = gtk_hbutton_box_new ();
  gtk_widget_show (hbuttonbox1);
  gtk_container_add (GTK_CONTAINER (dialog_action_area1), hbuttonbox1);
  gtk_box_set_spacing (GTK_BOX (hbuttonbox1), 30);

  button1 = gtk_button_new_from_stock ("gtk-ok");
  gtk_widget_show (button1);
  gtk_container_add (GTK_CONTAINER (hbuttonbox1), button1);
  GTK_WIDGET_SET_FLAGS (button1, GTK_CAN_DEFAULT);
  gtk_widget_add_accelerator (button1, "clicked", accel_group,
                              GDK_Return, 0,
                              GTK_ACCEL_VISIBLE);
  gtk_widget_add_accelerator (button1, "clicked", accel_group,
                              GDK_Escape, 0,
                              GTK_ACCEL_VISIBLE);

  g_signal_connect ((gpointer) button1, "clicked",
                    G_CALLBACK (wait_ok_button_clicked),
                    NULL);

  /* Store pointers to all widgets, for use by lookup_widget(). */
  GLADE_HOOKUP_OBJECT_NO_REF (wait_dbox, wait_dbox, "wait_dbox");
  GLADE_HOOKUP_OBJECT_NO_REF (wait_dbox, dialog_vbox1, "dialog_vbox1");
  GLADE_HOOKUP_OBJECT (wait_dbox, vbox2, "vbox2");
  GLADE_HOOKUP_OBJECT (wait_dbox, label2, "label2");
  GLADE_HOOKUP_OBJECT (wait_dbox, hseparator3, "hseparator3");
  GLADE_HOOKUP_OBJECT (wait_dbox, label16, "label16");
  GLADE_HOOKUP_OBJECT_NO_REF (wait_dbox, dialog_action_area1, "dialog_action_area1");
  GLADE_HOOKUP_OBJECT (wait_dbox, hbuttonbox1, "hbuttonbox1");
  GLADE_HOOKUP_OBJECT (wait_dbox, button1, "button1");

  gtk_window_add_accel_group (GTK_WINDOW (wait_dbox), accel_group);

  return wait_dbox;
}


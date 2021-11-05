.class public Lcom/android/server/notification/NotificationShellCmd;
.super Landroid/os/ShellCommand;
.source "NotificationShellCmd.java"


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String; = "shell_cmd"

.field public static final CHANNEL_IMP:I = 0x3

.field public static final CHANNEL_NAME:Ljava/lang/String; = "Shell command"

.field public static final NOTIFICATION_ID:I = 0x7e4

.field private static final NOTIFY_USAGE:Ljava/lang/String; = "usage: cmd notification post [flags] <tag> <text>\n\nflags:\n  -h|--help\n  -v|--verbose\n  -t|--title <text>\n  -i|--icon <iconspec>\n  -I|--large-icon <iconspec>\n  -S|--style <style> [styleargs]\n  -c|--content-intent <intentspec>\n\nstyles: (default none)\n  bigtext\n  bigpicture --picture <iconspec>\n  inbox --line <text> --line <text> ...\n  messaging --conversation <title> --message <who>:<text> ...\n  media\n\nan <iconspec> is one of\n  file:///data/local/tmp/<img.png>\n  content://<provider>/<path>\n  @[<package>:]drawable/<img>\n  data:base64,<B64DATA==>\n\nan <intentspec> is (broadcast|service|activity) <args>\n  <args> are as described in `am start`"

.field private static final TAG:Ljava/lang/String; = "NotifShellCmd"

.field private static final USAGE:Ljava/lang/String; = "usage: cmd notification SUBCMD [args]\n\nSUBCMDs:\n  allow_listener COMPONENT [user_id (current user if not specified)]\n  disallow_listener COMPONENT [user_id (current user if not specified)]\n  allow_assistant COMPONENT [user_id (current user if not specified)]\n  remove_assistant COMPONENT [user_id (current user if not specified)]\n  set_dnd [on|none (same as on)|priority|alarms|all|off (same as all)]  allow_dnd PACKAGE [user_id (current user if not specified)]\n  disallow_dnd PACKAGE [user_id (current user if not specified)]\n  suspend_package PACKAGE\n  unsuspend_package PACKAGE\n  reset_assistant_user_set [user_id (current user if not specified)]\n  get_approved_assistant [user_id (current user if not specified)]\n  post [--help | flags] TAG TEXT\n  set_bubbles PACKAGE PREFERENCE (0=none 1=all 2=selected) [user_id (current user if not specified)]\n  set_bubbles_channel PACKAGE CHANNEL_ID ALLOW [user_id (current user if not specified)]\n  list\n  get <notification-key>\n  snooze --for <msec> <notification-key>\n  unsnooze <notification-key>\n"


# instance fields
.field private final mBinderService:Landroid/app/INotificationManager;

.field private mChannel:Landroid/app/NotificationChannel;

.field private final mDirectService:Lcom/android/server/notification/NotificationManagerService;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/notification/NotificationManagerService;

    .line 121
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 123
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 124
    iget-object v0, p0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    .line 125
    return-void
.end method

.method private doNotify(Ljava/io/PrintWriter;Ljava/lang/String;I)I
    .locals 29
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 481
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p2

    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 482
    .local v11, "context":Landroid/content/Context;
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 483
    .local v12, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/app/Notification$Builder;

    const-string/jumbo v3, "shell_cmd"

    invoke-direct {v0, v11, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v13, v0

    .line 486
    .local v13, "builder":Landroid/app/Notification$Builder;
    const/4 v0, 0x0

    .line 487
    .local v0, "verbose":Z
    const/4 v3, 0x0

    .line 488
    .local v3, "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    const/4 v4, 0x0

    .line 489
    .local v4, "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    const/4 v5, 0x0

    .line 490
    .local v5, "inboxStyle":Landroid/app/Notification$InboxStyle;
    const/4 v6, 0x0

    .line 491
    .local v6, "mediaStyle":Landroid/app/Notification$MediaStyle;
    const/4 v7, 0x0

    .line 493
    .local v7, "messagingStyle":Landroid/app/Notification$MessagingStyle;
    const/4 v8, 0x0

    move v14, v0

    move-object v15, v3

    move-object v9, v4

    move-object/from16 v16, v6

    move-object v6, v8

    move-object v8, v5

    .line 494
    .end local v0    # "verbose":Z
    .end local v3    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .end local v4    # "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    .end local v5    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .local v6, "smallIcon":Landroid/graphics/drawable/Icon;
    .local v8, "inboxStyle":Landroid/app/Notification$InboxStyle;
    .local v9, "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    .local v14, "verbose":Z
    .local v15, "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .local v16, "mediaStyle":Landroid/app/Notification$MediaStyle;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .local v5, "opt":Ljava/lang/String;
    const-string/jumbo v3, "usage: cmd notification post [flags] <tag> <text>\n\nflags:\n  -h|--help\n  -v|--verbose\n  -t|--title <text>\n  -i|--icon <iconspec>\n  -I|--large-icon <iconspec>\n  -S|--style <style> [styleargs]\n  -c|--content-intent <intentspec>\n\nstyles: (default none)\n  bigtext\n  bigpicture --picture <iconspec>\n  inbox --line <text> --line <text> ...\n  messaging --conversation <title> --message <who>:<text> ...\n  media\n\nan <iconspec> is one of\n  file:///data/local/tmp/<img.png>\n  content://<provider>/<path>\n  @[<package>:]drawable/<img>\n  data:base64,<B64DATA==>\n\nan <intentspec> is (broadcast|service|activity) <args>\n  <args> are as described in `am start`"

    if-eqz v0, :cond_1a

    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, "large":Z
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v4, "large-icon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x9

    goto/16 :goto_2

    :sswitch_1
    const-string v4, "--verbose"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto/16 :goto_2

    :sswitch_2
    const-string v4, "--line"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x18

    goto/16 :goto_2

    :sswitch_3
    const-string v4, "--icon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xb

    goto/16 :goto_2

    :sswitch_4
    const-string v4, "--help"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1c

    goto/16 :goto_2

    :sswitch_5
    const-string v4, "--bigtext"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x15

    goto/16 :goto_2

    :sswitch_6
    const-string v4, "--bigText"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x14

    goto/16 :goto_2

    :sswitch_7
    const-string v4, "--largeicon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    goto/16 :goto_2

    :sswitch_8
    const-string v4, "--intent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x10

    goto/16 :goto_2

    :sswitch_9
    const-string v4, "--picture"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x17

    goto/16 :goto_2

    :sswitch_a
    const-string/jumbo v4, "largeicon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto/16 :goto_2

    :sswitch_b
    const-string v4, "--content-intent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xe

    goto/16 :goto_2

    :sswitch_c
    const-string v4, "--big-text"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x16

    goto/16 :goto_2

    :sswitch_d
    const-string/jumbo v4, "title"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto/16 :goto_2

    :sswitch_e
    const-string v4, "--wtf"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1d

    goto/16 :goto_2

    :sswitch_f
    const-string v4, "icon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xc

    goto/16 :goto_2

    :sswitch_10
    const-string v4, "-v"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto/16 :goto_2

    :sswitch_11
    const-string v4, "-t"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto/16 :goto_2

    :sswitch_12
    const-string v4, "-i"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xa

    goto/16 :goto_2

    :sswitch_13
    const-string v4, "-h"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1b

    goto/16 :goto_2

    :sswitch_14
    const-string v4, "-c"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xd

    goto :goto_2

    :sswitch_15
    const-string v4, "-S"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x12

    goto :goto_2

    :sswitch_16
    const-string v4, "-I"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_2

    :sswitch_17
    const-string v4, "--large-icon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_2

    :sswitch_18
    const-string v4, "--conversation"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1a

    goto :goto_2

    :sswitch_19
    const-string/jumbo v4, "intent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x11

    goto :goto_2

    :sswitch_1a
    const-string v4, "content-intent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xf

    goto :goto_2

    :sswitch_1b
    const-string v4, "--title"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_2

    :sswitch_1c
    const-string v4, "--style"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x13

    goto :goto_2

    :sswitch_1d
    const-string v4, "--message"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x19

    goto :goto_2

    :goto_1
    const/4 v4, -0x1

    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 653
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    const/4 v4, 0x0

    return v4

    .line 643
    :pswitch_0
    if-eqz v7, :cond_1

    .line 647
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    .line 648
    move-object/from16 v21, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    goto/16 :goto_c

    .line 644
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "--conversation requires --style messaging"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 625
    :pswitch_1
    if-eqz v7, :cond_3

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 630
    .local v3, "arg":Ljava/lang/String;
    const-string v4, ":"

    move/from16 v23, v0

    const/4 v0, 0x2

    .end local v0    # "large":Z
    .local v23, "large":Z
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 631
    .local v4, "parts":[Ljava/lang/String;
    array-length v0, v4

    move-object/from16 v17, v3

    const/4 v3, 0x1

    .end local v3    # "arg":Ljava/lang/String;
    .local v17, "arg":Ljava/lang/String;
    if-le v0, v3, :cond_2

    .line 632
    aget-object v0, v4, v3

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .local v24, "smallIcon":Landroid/graphics/drawable/Icon;
    .local v25, "opt":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v3, 0x0

    aget-object v3, v4, v3

    invoke-virtual {v7, v0, v5, v6, v3}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    move-object/from16 v26, v24

    move-object/from16 v21, v25

    goto/16 :goto_c

    .line 635
    .end local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v25    # "opt":Ljava/lang/String;
    .restart local v5    # "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    :cond_2
    move-object/from16 v25, v5

    move-object/from16 v24, v6

    const/4 v3, 0x0

    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v25    # "opt":Ljava/lang/String;
    aget-object v0, v4, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v18, v4

    const/4 v3, 0x2

    .end local v4    # "parts":[Ljava/lang/String;
    .local v18, "parts":[Ljava/lang/String;
    new-array v4, v3, [Ljava/lang/String;

    .line 637
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle;->getUserDisplayName()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v19, 0x0

    aput-object v20, v4, v19

    const-string v19, "Them"

    const/16 v20, 0x1

    aput-object v19, v4, v20

    .line 639
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    rem-int/lit8 v19, v19, 0x2

    aget-object v3, v4, v19

    .line 635
    invoke-virtual {v7, v0, v5, v6, v3}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    .line 641
    move-object/from16 v18, v7

    move-object/from16 v20, v8

    move-object/from16 v26, v24

    move-object/from16 v21, v25

    goto/16 :goto_c

    .line 626
    .end local v17    # "arg":Ljava/lang/String;
    .end local v18    # "parts":[Ljava/lang/String;
    .end local v23    # "large":Z
    .end local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v25    # "opt":Ljava/lang/String;
    .restart local v0    # "large":Z
    .restart local v5    # "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    :cond_3
    move/from16 v23, v0

    .end local v0    # "large":Z
    .restart local v23    # "large":Z
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "--message requires --style messaging"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    .end local v23    # "large":Z
    .restart local v0    # "large":Z
    :pswitch_2
    move/from16 v23, v0

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v23    # "large":Z
    .restart local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v25    # "opt":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 623
    move-object/from16 v18, v7

    move-object/from16 v20, v8

    move-object/from16 v26, v24

    move-object/from16 v21, v25

    goto/16 :goto_c

    .line 620
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "--line requires --style inbox"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    .end local v23    # "large":Z
    .end local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v25    # "opt":Ljava/lang/String;
    .restart local v0    # "large":Z
    .restart local v5    # "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    :pswitch_3
    move/from16 v23, v0

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v23    # "large":Z
    .restart local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v25    # "opt":Ljava/lang/String;
    if-eqz v15, :cond_7

    .line 606
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "pictureSpec":Ljava/lang/String;
    invoke-virtual {v1, v12, v0}, Lcom/android/server/notification/NotificationShellCmd;->parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 608
    .local v3, "pictureAsIcon":Landroid/graphics/drawable/Icon;
    if-eqz v3, :cond_6

    .line 611
    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 612
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    instance-of v5, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_5

    .line 613
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    move-object/from16 v26, v24

    move-object/from16 v21, v25

    goto/16 :goto_c

    .line 615
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    .end local v3    # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    .local v17, "pictureAsIcon":Landroid/graphics/drawable/Icon;
    const-string/jumbo v3, "not a bitmap: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 609
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v17    # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    .restart local v3    # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    :cond_6
    move-object/from16 v17, v3

    .end local v3    # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    .restart local v17    # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad picture spec: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 604
    .end local v0    # "pictureSpec":Ljava/lang/String;
    .end local v17    # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "--picture requires --style bigpicture"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    .end local v23    # "large":Z
    .end local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v25    # "opt":Ljava/lang/String;
    .local v0, "large":Z
    .restart local v5    # "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    :pswitch_4
    move/from16 v23, v0

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v23    # "large":Z
    .restart local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v25    # "opt":Ljava/lang/String;
    if-eqz v9, :cond_8

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 601
    move-object/from16 v18, v7

    move-object/from16 v20, v8

    move-object/from16 v26, v24

    move-object/from16 v21, v25

    goto/16 :goto_c

    .line 598
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "--bigtext requires --style bigtext"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    .end local v23    # "large":Z
    .end local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v25    # "opt":Ljava/lang/String;
    .restart local v0    # "large":Z
    .restart local v5    # "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    :pswitch_5
    move/from16 v23, v0

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v23    # "large":Z
    .restart local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v25    # "opt":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "styleSpec":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :cond_9
    goto :goto_3

    :sswitch_1e
    const-string/jumbo v3, "media"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v4, 0x4

    goto :goto_4

    :sswitch_1f
    const-string v3, "inbox"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v4, 0x2

    goto :goto_4

    :sswitch_20
    const-string v3, "bigpicture"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v4, 0x1

    goto :goto_4

    :sswitch_21
    const-string v3, "bigtext"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v4, 0x0

    goto :goto_4

    :sswitch_22
    const-string/jumbo v3, "messaging"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v4, 0x3

    goto :goto_4

    :goto_3
    const/4 v4, -0x1

    :goto_4
    if-eqz v4, :cond_f

    const/4 v3, 0x1

    if-eq v4, v3, :cond_e

    const/4 v3, 0x2

    if-eq v4, v3, :cond_d

    const/4 v3, 0x3

    if-eq v4, v3, :cond_b

    const/4 v3, 0x4

    if-ne v4, v3, :cond_a

    .line 588
    new-instance v3, Landroid/app/Notification$MediaStyle;

    invoke-direct {v3}, Landroid/app/Notification$MediaStyle;-><init>()V

    .line 589
    .end local v16    # "mediaStyle":Landroid/app/Notification$MediaStyle;
    .local v3, "mediaStyle":Landroid/app/Notification$MediaStyle;
    invoke-virtual {v13, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 590
    move-object/from16 v16, v3

    goto :goto_5

    .line 592
    .end local v3    # "mediaStyle":Landroid/app/Notification$MediaStyle;
    .restart local v16    # "mediaStyle":Landroid/app/Notification$MediaStyle;
    :cond_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unrecognized notification style: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 578
    :cond_b
    const-string v3, "You"

    .line 579
    .local v3, "name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v4

    const-string v5, "--user"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    .line 581
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 583
    :cond_c
    new-instance v4, Landroid/app/Notification$MessagingStyle;

    new-instance v5, Landroid/app/Person$Builder;

    invoke-direct {v5}, Landroid/app/Person$Builder;-><init>()V

    .line 584
    invoke-virtual {v5, v3}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    move-object v7, v4

    .line 585
    invoke-virtual {v13, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 586
    goto :goto_5

    .line 574
    .end local v3    # "name":Ljava/lang/String;
    :cond_d
    new-instance v3, Landroid/app/Notification$InboxStyle;

    invoke-direct {v3}, Landroid/app/Notification$InboxStyle;-><init>()V

    move-object v8, v3

    .line 575
    invoke-virtual {v13, v8}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 576
    goto :goto_5

    .line 570
    :cond_e
    new-instance v3, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    move-object v15, v3

    .line 571
    invoke-virtual {v13, v15}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 572
    goto :goto_5

    .line 566
    :cond_f
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    move-object v9, v3

    .line 567
    invoke-virtual {v13, v9}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 568
    nop

    .line 595
    :goto_5
    move-object/from16 v6, v24

    move-object/from16 v21, v25

    goto/16 :goto_d

    .line 534
    .end local v23    # "large":Z
    .end local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v25    # "opt":Ljava/lang/String;
    .local v0, "large":Z
    .restart local v5    # "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    :pswitch_6
    move/from16 v23, v0

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v23    # "large":Z
    .restart local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v25    # "opt":Ljava/lang/String;
    const/4 v0, 0x0

    .line 535
    .local v0, "intentKind":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x62b40cf1

    const-string/jumbo v6, "service"

    move-object/from16 v20, v0

    .end local v0    # "intentKind":Ljava/lang/String;
    .local v20, "intentKind":Ljava/lang/String;
    const-string v0, "broadcast"

    if-eq v4, v5, :cond_13

    const v5, -0x607e173f

    if-eq v4, v5, :cond_12

    const v5, 0x7643c6b5

    if-eq v4, v5, :cond_11

    :cond_10
    goto :goto_6

    :cond_11
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v4, 0x1

    goto :goto_7

    :cond_12
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v4, 0x0

    goto :goto_7

    :cond_13
    const-string v4, "activity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v4, 0x2

    goto :goto_7

    :goto_6
    const/4 v4, -0x1

    :goto_7
    if-eqz v4, :cond_14

    const/4 v3, 0x1

    if-eq v4, v3, :cond_14

    const/4 v3, 0x2

    if-eq v4, v3, :cond_14

    move-object/from16 v5, v20

    goto :goto_8

    .line 539
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .line 541
    .end local v20    # "intentKind":Ljava/lang/String;
    .local v5, "intentKind":Ljava/lang/String;
    :goto_8
    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v4

    .line 542
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_15

    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v7

    .end local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .local v18, "messagingStyle":Landroid/app/Notification$MessagingStyle;
    const-string/jumbo v7, "xyz:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v8

    .end local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .local v20, "inboxStyle":Landroid/app/Notification$InboxStyle;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_9

    .line 542
    .end local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v20    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :cond_15
    move-object/from16 v18, v7

    move-object/from16 v20, v8

    .line 547
    .end local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v20    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :goto_9
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v3, 0x8000000

    if-eqz v0, :cond_16

    .line 548
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v7, 0x0

    invoke-static {v11, v7, v4, v3, v0}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v3, v0

    move-object/from16 v17, v4

    move-object v0, v5

    move-object/from16 v26, v24

    move-object/from16 v21, v25

    .local v0, "pi":Landroid/app/PendingIntent;
    goto :goto_a

    .line 551
    .end local v0    # "pi":Landroid/app/PendingIntent;
    :cond_16
    const/4 v7, 0x0

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 552
    invoke-static {v11, v7, v4, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v3, v0

    move-object/from16 v17, v4

    move-object v0, v5

    move-object/from16 v26, v24

    move-object/from16 v21, v25

    .restart local v0    # "pi":Landroid/app/PendingIntent;
    goto :goto_a

    .line 555
    .end local v0    # "pi":Landroid/app/PendingIntent;
    :cond_17
    const/4 v0, 0x0

    const/high16 v6, 0x8000000

    const/4 v7, 0x0

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v3, v11

    move-object/from16 v17, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .local v17, "intent":Landroid/content/Intent;
    move v4, v0

    move-object v0, v5

    move-object/from16 v21, v25

    .end local v5    # "intentKind":Ljava/lang/String;
    .end local v25    # "opt":Ljava/lang/String;
    .local v0, "intentKind":Ljava/lang/String;
    .local v21, "opt":Ljava/lang/String;
    move-object/from16 v5, v17

    move-object/from16 v26, v24

    .end local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .local v26, "smallIcon":Landroid/graphics/drawable/Icon;
    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 559
    .local v3, "pi":Landroid/app/PendingIntent;
    :goto_a
    invoke-virtual {v13, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 560
    goto :goto_c

    .line 496
    .end local v3    # "pi":Landroid/app/PendingIntent;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v20    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v21    # "opt":Ljava/lang/String;
    .end local v23    # "large":Z
    .end local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    .local v0, "large":Z
    .local v5, "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :pswitch_7
    move/from16 v23, v0

    move-object/from16 v21, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v20    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v21    # "opt":Ljava/lang/String;
    .restart local v23    # "large":Z
    .restart local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    goto :goto_b

    .line 511
    .end local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v20    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v21    # "opt":Ljava/lang/String;
    .end local v23    # "large":Z
    .end local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v0    # "large":Z
    .restart local v5    # "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :pswitch_8
    move/from16 v23, v0

    move-object/from16 v21, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v20    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v21    # "opt":Ljava/lang/String;
    .restart local v23    # "large":Z
    .restart local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    const/4 v0, 0x1

    .line 516
    .end local v23    # "large":Z
    .restart local v0    # "large":Z
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 517
    .local v3, "iconSpec":Ljava/lang/String;
    invoke-virtual {v1, v12, v3}, Lcom/android/server/notification/NotificationShellCmd;->parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 518
    .local v4, "icon":Landroid/graphics/drawable/Icon;
    if-nez v4, :cond_18

    .line 519
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error: invalid icon: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    const/4 v5, -0x1

    return v5

    .line 522
    :cond_18
    if-eqz v0, :cond_19

    .line 523
    invoke-virtual {v13, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 524
    const/4 v0, 0x0

    goto :goto_c

    .line 526
    :cond_19
    move-object v5, v4

    .line 528
    .end local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    .local v5, "smallIcon":Landroid/graphics/drawable/Icon;
    move-object v6, v5

    move-object/from16 v7, v18

    move-object/from16 v8, v20

    goto :goto_d

    .line 504
    .end local v3    # "iconSpec":Ljava/lang/String;
    .end local v4    # "icon":Landroid/graphics/drawable/Icon;
    .end local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v20    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v21    # "opt":Ljava/lang/String;
    .local v5, "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :pswitch_9
    move/from16 v23, v0

    move-object/from16 v21, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v20    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v21    # "opt":Ljava/lang/String;
    .restart local v23    # "large":Z
    .restart local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 505
    nop

    .line 656
    .end local v23    # "large":Z
    :goto_c
    move-object/from16 v7, v18

    move-object/from16 v8, v20

    move-object/from16 v6, v26

    goto :goto_d

    .line 499
    .end local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v20    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v21    # "opt":Ljava/lang/String;
    .end local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v0    # "large":Z
    .restart local v5    # "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :pswitch_a
    move/from16 v23, v0

    move-object/from16 v21, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v20    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v21    # "opt":Ljava/lang/String;
    .restart local v23    # "large":Z
    .restart local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    const/4 v0, 0x1

    .line 500
    .end local v14    # "verbose":Z
    .local v0, "verbose":Z
    move v14, v0

    .line 656
    .end local v0    # "verbose":Z
    .end local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v20    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v23    # "large":Z
    .end local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v14    # "verbose":Z
    :goto_d
    goto/16 :goto_0

    .line 658
    .end local v21    # "opt":Ljava/lang/String;
    .restart local v5    # "opt":Ljava/lang/String;
    :cond_1a
    move-object/from16 v21, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    const/4 v4, 0x0

    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v20    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v21    # "opt":Ljava/lang/String;
    .restart local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v8

    .line 659
    .local v8, "tag":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v7

    .line 660
    .local v7, "text":Ljava/lang/String;
    if-eqz v8, :cond_21

    if-nez v7, :cond_1b

    move-object/from16 v24, v7

    move-object v5, v8

    move-object/from16 v25, v9

    move-object/from16 v19, v26

    goto/16 :goto_13

    .line 665
    :cond_1b
    invoke-virtual {v13, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 667
    move-object/from16 v6, v26

    .end local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    if-nez v6, :cond_1c

    .line 669
    const v0, 0x1080077

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_e

    .line 671
    :cond_1c
    invoke-virtual {v13, v6}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 674
    :goto_e
    move/from16 v5, p3

    invoke-virtual {v1, v10, v5}, Lcom/android/server/notification/NotificationShellCmd;->ensureChannel(Ljava/lang/String;I)V

    .line 676
    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 677
    .local v3, "n":Landroid/app/Notification;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "posting:\n  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "posting: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "NotificationManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/16 v17, 0x7e4

    .line 681
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    .line 680
    move-object/from16 v23, v3

    .end local v3    # "n":Landroid/app/Notification;
    .local v23, "n":Landroid/app/Notification;
    move-object v3, v0

    move-object/from16 v4, p2

    move-object/from16 v5, p2

    move-object/from16 v19, v6

    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .local v19, "smallIcon":Landroid/graphics/drawable/Icon;
    move-object v6, v8

    move-object/from16 v24, v7

    .end local v7    # "text":Ljava/lang/String;
    .local v24, "text":Ljava/lang/String;
    move/from16 v7, v17

    move-object/from16 v27, v8

    .end local v8    # "tag":Ljava/lang/String;
    .local v27, "tag":Ljava/lang/String;
    move-object/from16 v8, v23

    move-object/from16 v25, v9

    .end local v9    # "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    .local v25, "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    move/from16 v9, v22

    invoke-interface/range {v3 .. v9}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    .line 683
    if-eqz v14, :cond_20

    .line 684
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 685
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 684
    const/16 v4, 0x7e4

    move-object/from16 v5, v27

    .end local v27    # "tag":Ljava/lang/String;
    .local v5, "tag":Ljava/lang/String;
    invoke-virtual {v0, v10, v5, v4, v3}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    .line 686
    .local v0, "nr":Lcom/android/server/notification/NotificationRecord;
    const/4 v3, 0x3

    move/from16 v28, v3

    move-object v3, v0

    move/from16 v0, v28

    .local v0, "tries":I
    .local v3, "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_f
    add-int/lit8 v6, v0, -0x1

    .end local v0    # "tries":I
    .local v6, "tries":I
    if-lez v0, :cond_1e

    .line 687
    if-eqz v3, :cond_1d

    goto :goto_11

    .line 689
    :cond_1d
    :try_start_0
    const-string/jumbo v0, "waiting for notification to post..."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    const-wide/16 v7, 0x1f4

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    goto :goto_10

    .line 691
    :catch_0
    move-exception v0

    .line 693
    :goto_10
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 694
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 693
    invoke-virtual {v0, v10, v5, v4, v7}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v3

    move v0, v6

    goto :goto_f

    .line 696
    .end local v6    # "tries":I
    :cond_1e
    :goto_11
    if-nez v3, :cond_1f

    .line 697
    const-string/jumbo v0, "warning: couldn\'t find notification after enqueueing"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_12

    .line 699
    :cond_1f
    const-string/jumbo v0, "posted: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 700
    const-string v0, "  "

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v0, v11, v4}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    goto :goto_12

    .line 683
    .end local v3    # "nr":Lcom/android/server/notification/NotificationRecord;
    .end local v5    # "tag":Ljava/lang/String;
    .restart local v27    # "tag":Ljava/lang/String;
    :cond_20
    move-object/from16 v5, v27

    const/4 v4, 0x0

    .line 704
    .end local v27    # "tag":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    :goto_12
    return v4

    .line 660
    .end local v5    # "tag":Ljava/lang/String;
    .end local v19    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v23    # "n":Landroid/app/Notification;
    .end local v24    # "text":Ljava/lang/String;
    .end local v25    # "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    .restart local v7    # "text":Ljava/lang/String;
    .restart local v8    # "tag":Ljava/lang/String;
    .restart local v9    # "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    .restart local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    :cond_21
    move-object/from16 v24, v7

    move-object v5, v8

    move-object/from16 v25, v9

    move-object/from16 v19, v26

    .line 661
    .end local v7    # "text":Ljava/lang/String;
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    .end local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v19    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v24    # "text":Ljava/lang/String;
    .restart local v25    # "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    :goto_13
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    const/4 v0, -0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x74789999 -> :sswitch_1d
        -0x603263ef -> :sswitch_1c
        -0x60295f48 -> :sswitch_1b
        -0x4821dd90 -> :sswitch_1a
        -0x468ec964 -> :sswitch_19
        -0x32dd8ddd -> :sswitch_18
        -0x2bc1295 -> :sswitch_17
        0x5bc -> :sswitch_16
        0x5c6 -> :sswitch_15
        0x5d6 -> :sswitch_14
        0x5db -> :sswitch_13
        0x5dc -> :sswitch_12
        0x5e7 -> :sswitch_11
        0x5e9 -> :sswitch_10
        0x313c79 -> :sswitch_f
        0x2906389 -> :sswitch_e
        0x6942258 -> :sswitch_d
        0x2a056f7a -> :sswitch_c
        0x2a13d010 -> :sswitch_b
        0x2d3ae234 -> :sswitch_a
        0x302cc35e -> :sswitch_9
        0x487e843c -> :sswitch_8
        0x4a573094 -> :sswitch_7
        0x4bbf1cad -> :sswitch_6
        0x4bcda88d -> :sswitch_5
        0x4f7504e1 -> :sswitch_4
        0x4f757219 -> :sswitch_3
        0x4f76e594 -> :sswitch_2
        0x6789dfe2 -> :sswitch_1
        0x76d66fcb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x55d4c8fc -> :sswitch_22
        -0x6cebdd3 -> :sswitch_21
        -0x2a7c002 -> :sswitch_20
        0x5fb2286 -> :sswitch_1f
        0x62f6fe4 -> :sswitch_1e
    .end sparse-switch
.end method


# virtual methods
.method protected checkShellCommandPermission(I)Z
    .locals 1
    .param p1, "callingUid"    # I

    .line 128
    if-eqz p1, :cond_1

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method ensureChannel(Ljava/lang/String;I)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 444
    new-instance v0, Landroid/app/NotificationChannel;

    const-string/jumbo v1, "shell_cmd"

    const-string v2, "Shell command"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 446
    .local v0, "channel":Landroid/app/NotificationChannel;
    iget-object v2, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    new-instance v3, Landroid/content/pm/ParceledListSlice;

    .line 447
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 446
    invoke-interface {v2, p1, v3}, Landroid/app/INotificationManager;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "created channel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 450
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 449
    invoke-interface {v3, p1, v4, p1, v1}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    const-string v2, "NotificationService"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 26
    .param p1, "cmd"    # Ljava/lang/String;

    .line 133
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_0

    .line 134
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 136
    :cond_0
    const/4 v3, 0x0

    .line 137
    .local v3, "callingPackage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 138
    .local v4, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 140
    .local v5, "identity":J
    const-string v7, "NotifShellCmd"

    const/4 v8, 0x0

    if-nez v4, :cond_1

    .line 141
    :try_start_0
    const-string/jumbo v0, "root"

    move-object v3, v0

    .end local v3    # "callingPackage":Ljava/lang/String;
    .local v0, "callingPackage":Ljava/lang/String;
    goto :goto_0

    .line 143
    .end local v0    # "callingPackage":Ljava/lang/String;
    .restart local v3    # "callingPackage":Ljava/lang/String;
    :cond_1
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v9, v0

    if-lez v9, :cond_2

    .line 145
    aget-object v9, v0, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v9

    .line 151
    .end local v0    # "packages":[Ljava/lang/String;
    :cond_2
    :goto_0
    nop

    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 152
    goto :goto_2

    .line 151
    :catchall_0
    move-exception v0

    move-wide/from16 v24, v5

    goto/16 :goto_15

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v9, "failed to get caller pkg"

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 154
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    .line 156
    .local v9, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v1, v4}, Lcom/android/server/notification/NotificationShellCmd;->checkShellCommandPermission(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error: permission denied: callingUid="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " callingPackage="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    const/16 v0, 0xff

    return v0

    .line 165
    :cond_3
    const/16 v0, 0x2d

    const/16 v7, 0x5f

    :try_start_2
    invoke-virtual {v2, v0, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v15, 0x1

    sparse-switch v7, :sswitch_data_0

    :cond_4
    goto/16 :goto_3

    :sswitch_0
    :try_start_3
    const-string v7, "allow_assistant"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto/16 :goto_4

    :sswitch_1
    const-string/jumbo v7, "set_dnd"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v8

    goto/16 :goto_4

    :sswitch_2
    const-string v7, "distract_package"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    goto/16 :goto_4

    :sswitch_3
    const-string v7, "disallow_listener"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v11

    goto/16 :goto_4

    :sswitch_4
    const-string/jumbo v7, "reset_assistant_user_set"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xa

    goto/16 :goto_4

    :sswitch_5
    const-string/jumbo v7, "suspend_package"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    goto/16 :goto_4

    :sswitch_6
    const-string v7, "allow_dnd"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v15

    goto/16 :goto_4

    :sswitch_7
    const-string/jumbo v7, "set_bubbles"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xc

    goto/16 :goto_4

    :sswitch_8
    const-string/jumbo v7, "post"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xe

    goto/16 :goto_4

    :sswitch_9
    const-string/jumbo v7, "list"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x10

    goto/16 :goto_4

    :sswitch_a
    const-string v7, "get"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x11

    goto/16 :goto_4

    :sswitch_b
    const-string/jumbo v7, "unsnooze"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x13

    goto/16 :goto_4

    :sswitch_c
    const-string v7, "get_approved_assistant"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xb

    goto :goto_4

    :sswitch_d
    const-string v7, "disallow_dnd"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v13

    goto :goto_4

    :sswitch_e
    const-string v7, "allow_listener"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v12

    goto :goto_4

    :sswitch_f
    const-string/jumbo v7, "unsuspend_package"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    goto :goto_4

    :sswitch_10
    const-string/jumbo v7, "snooze"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x14

    goto :goto_4

    :sswitch_11
    const-string/jumbo v7, "notify"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xf

    goto :goto_4

    :sswitch_12
    const-string v7, "disallow_assistant"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    goto :goto_4

    :sswitch_13
    const-string/jumbo v7, "set_bubbles_channel"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xd

    goto :goto_4

    :sswitch_14
    const-string/jumbo v7, "snoozed"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v0, :cond_4

    const/16 v0, 0x12

    goto :goto_4

    .line 436
    :catch_1
    move-exception v0

    move-wide/from16 v24, v5

    goto/16 :goto_13

    .line 165
    :goto_3
    const/4 v0, -0x1

    :goto_4
    const-string v7, "Invalid assistant - must be a ComponentName"

    const-string v14, "Invalid listener - must be a ComponentName"

    packed-switch v0, :pswitch_data_0

    .line 434
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .local v24, "identity":J
    :try_start_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_12

    .line 387
    .end local v24    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_0
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 388
    .local v0, "subflag":Ljava/lang/String;
    const-string v7, "help"

    if-nez v0, :cond_5

    .line 389
    move-object v0, v7

    goto :goto_5

    .line 390
    :cond_5
    :try_start_6
    const-string v14, "--"

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    if-eqz v14, :cond_6

    .line 391
    :try_start_7
    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-object v0, v14

    .line 393
    :cond_6
    :goto_5
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v14

    .line 394
    .local v14, "flagarg":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v24, v17

    .line 395
    .local v24, "key":Ljava/lang/String;
    move-object/from16 v8, v24

    .end local v24    # "key":Ljava/lang/String;
    .local v8, "key":Ljava/lang/String;
    if-nez v8, :cond_7

    move-object v0, v7

    .line 396
    :cond_7
    const/4 v7, 0x0

    .line 397
    .local v7, "criterion":Ljava/lang/String;
    const-wide/16 v18, 0x0

    .line 398
    .local v18, "duration":J
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v20
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    sparse-switch v20, :sswitch_data_1

    :cond_8
    goto :goto_6

    :sswitch_15
    :try_start_9
    const-string v10, "context"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_7

    :sswitch_16
    const-string v10, "criterion"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move v10, v13

    goto :goto_7

    :sswitch_17
    const-string/jumbo v10, "until"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move v10, v12

    goto :goto_7

    :sswitch_18
    const-string v10, "for"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move v10, v11

    goto :goto_7

    :sswitch_19
    const-string v10, "condition"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move v10, v15

    goto :goto_7

    :sswitch_1a
    const-string v10, "duration"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x5

    goto :goto_7

    :goto_6
    const/4 v10, -0x1

    :goto_7
    if-eqz v10, :cond_a

    if-eq v10, v15, :cond_a

    if-eq v10, v13, :cond_a

    if-eq v10, v12, :cond_9

    if-eq v10, v11, :cond_9

    const/4 v11, 0x5

    if-eq v10, v11, :cond_9

    .line 410
    const-string/jumbo v10, "usage: cmd notification snooze (--for <msec> | --context <snooze-criterion-id>) <key>"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    return v15

    .line 407
    :cond_9
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-wide/from16 v18, v10

    .line 408
    goto :goto_8

    .line 402
    :cond_a
    move-object v7, v14

    .line 403
    move-wide/from16 v10, v18

    .line 414
    .end local v18    # "duration":J
    .local v10, "duration":J
    :goto_8
    :try_start_a
    iget-object v12, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v12, v8}, Lcom/android/server/notification/NotificationManagerService;->getNotificationRecord(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v12
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    if-nez v12, :cond_b

    .line 415
    :try_start_b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error: no notification matching key: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    return v15

    .line 418
    :cond_b
    const-wide/16 v18, 0x0

    cmp-long v12, v10, v18

    if-gtz v12, :cond_d

    if-eqz v7, :cond_c

    goto :goto_9

    .line 428
    :cond_c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error: invalid value for --"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 429
    return v15

    .line 419
    :cond_d
    :goto_9
    cmp-long v12, v10, v18

    if-lez v12, :cond_e

    .line 420
    :try_start_c
    const-string/jumbo v12, "snoozing <%s> until time: %s"

    new-array v13, v13, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v8, v13, v16

    new-instance v15, Ljava/util/Date;

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .local v24, "identity":J
    add-long v5, v19, v10

    :try_start_d
    invoke-direct {v15, v5, v6}, Ljava/util/Date;-><init>(J)V

    const/4 v5, 0x1

    aput-object v15, v13, v5

    .line 420
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    .line 423
    .end local v24    # "identity":J
    .restart local v5    # "identity":J
    :cond_e
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    const-string/jumbo v5, "snoozing <%s> until criterion: %s"

    new-array v6, v13, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v6, v12

    const/4 v12, 0x1

    aput-object v7, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    :goto_a
    iget-object v5, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    const/16 v23, 0x0

    move-object/from16 v18, v5

    move-object/from16 v19, v8

    move-wide/from16 v20, v10

    move-object/from16 v22, v7

    invoke-virtual/range {v18 .. v23}, Lcom/android/server/notification/NotificationManagerService;->snoozeNotificationInt(Ljava/lang/String;JLjava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    goto/16 :goto_11

    .line 371
    .end local v0    # "subflag":Ljava/lang/String;
    .end local v7    # "criterion":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v10    # "duration":J
    .end local v14    # "flagarg":Ljava/lang/String;
    .end local v24    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_1
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    const/4 v0, 0x0

    .line 372
    .local v0, "mute":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 373
    .local v5, "key":Ljava/lang/String;
    const-string v6, "--mute"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 374
    const/4 v0, 0x1

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 377
    :cond_f
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v6, v5}, Lcom/android/server/notification/SnoozeHelper;->getNotification(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 378
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unsnoozing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7, v0}, Lcom/android/server/notification/NotificationManagerService;->unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    goto/16 :goto_11

    .line 381
    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error: no snoozed otification matching key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    const/4 v6, 0x1

    return v6

    .line 356
    .end local v0    # "mute":Z
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_2
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v5, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 358
    .local v5, "sh":Lcom/android/server/notification/SnoozeHelper;
    invoke-virtual {v5}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 359
    .local v7, "nr":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 360
    .local v8, "pkg":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 361
    .local v10, "key":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " snoozed, time="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v12

    .line 362
    invoke-virtual {v5, v12, v8, v10}, Lcom/android/server/notification/SnoozeHelper;->getSnoozeTimeForUnpostedNotification(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " context="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v12

    .line 365
    invoke-virtual {v5, v12, v8, v10}, Lcom/android/server/notification/SnoozeHelper;->getSnoozeContextForUnpostedNotification(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 361
    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    .end local v7    # "nr":Lcom/android/server/notification/NotificationRecord;
    .end local v8    # "pkg":Ljava/lang/String;
    .end local v10    # "key":Ljava/lang/String;
    goto :goto_b

    .line 368
    :cond_11
    goto/16 :goto_11

    .line 345
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_3
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "key":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationManagerService;->getNotificationRecord(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v5

    .line 347
    .local v5, "nr":Lcom/android/server/notification/NotificationRecord;
    if-eqz v5, :cond_12

    .line 348
    const-string v6, ""

    iget-object v7, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v9, v6, v7, v8}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    goto/16 :goto_11

    .line 350
    :cond_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error: no active notification matching key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    const/4 v6, 0x1

    return v6

    .line 340
    .end local v0    # "key":Ljava/lang/String;
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_4
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 341
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    .end local v5    # "key":Ljava/lang/String;
    goto :goto_c

    .line 343
    :cond_13
    goto/16 :goto_11

    .line 337
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_5
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-direct {v1, v9, v3, v4}, Lcom/android/server/notification/NotificationShellCmd;->doNotify(Ljava/io/PrintWriter;Ljava/lang/String;I)I

    .line 338
    goto/16 :goto_11

    .line 320
    .end local v24    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_6
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 322
    .local v5, "channelId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 323
    .local v6, "allow":Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 324
    .local v7, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_14

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v7, v8

    .line 327
    :cond_14
    iget-object v8, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v8, v3, v7, v0, v5}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v8

    .line 329
    .local v8, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v8, v6}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    .line 330
    iget-object v10, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v7, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    .line 331
    .local v10, "appUid":I
    iget-object v11, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v11, v0, v10, v8}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 333
    goto/16 :goto_11

    .line 303
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v6    # "allow":Z
    .end local v7    # "userId":I
    .end local v8    # "channel":Landroid/app/NotificationChannel;
    .end local v10    # "appUid":I
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_7
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 304
    .restart local v0    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 305
    .local v5, "preference":I
    if-gt v5, v12, :cond_17

    if-gez v5, :cond_15

    goto :goto_d

    .line 310
    :cond_15
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 311
    .local v6, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v6, v7

    .line 314
    :cond_16
    iget-object v7, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v6, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    .line 315
    .local v7, "appUid":I
    iget-object v8, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v8, v0, v7, v5}, Landroid/app/INotificationManager;->setBubblesAllowed(Ljava/lang/String;II)V

    .line 316
    goto/16 :goto_11

    .line 306
    .end local v6    # "userId":I
    .end local v7    # "appUid":I
    :cond_17
    :goto_d
    const-string v6, "Invalid preference - must be between 0-3 (0=none 1=all 2=selected)"

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    const/4 v6, -0x1

    return v6

    .line 289
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_8
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 290
    .local v0, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    .line 293
    :cond_18
    iget-object v5, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationManagerService;->getApprovedAssistant(I)Landroid/content/ComponentName;

    move-result-object v5

    .line 294
    .local v5, "approvedAssistant":Landroid/content/ComponentName;
    if-nez v5, :cond_19

    .line 295
    const-string/jumbo v6, "null"

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 297
    :cond_19
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    goto/16 :goto_11

    .line 281
    .end local v0    # "userId":I
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_9
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 282
    .restart local v0    # "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1a

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    .line 285
    :cond_1a
    iget-object v5, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationManagerService;->resetAssistantUserSet(I)V

    .line 286
    goto/16 :goto_11

    .line 275
    .end local v0    # "userId":I
    .end local v24    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_a
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 275
    invoke-virtual {v0, v5, v6}, Lcom/android/server/notification/NotificationManagerService;->simulatePackageDistractionBroadcast(I[Ljava/lang/String;)V

    .line 278
    goto/16 :goto_11

    .line 268
    .end local v24    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_b
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Lcom/android/server/notification/NotificationManagerService;->simulatePackageSuspendBroadcast(ZLjava/lang/String;)V

    .line 270
    goto/16 :goto_11

    .line 263
    .end local v24    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_c
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v5}, Lcom/android/server/notification/NotificationManagerService;->simulatePackageSuspendBroadcast(ZLjava/lang/String;)V

    .line 265
    goto/16 :goto_11

    .line 249
    .end local v24    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_d
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 250
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_1b

    .line 251
    invoke-virtual {v9, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    const/4 v5, -0x1

    return v5

    .line 254
    :cond_1b
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 255
    .local v5, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1c

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    .line 258
    :cond_1c
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v7, 0x0

    invoke-interface {v6, v0, v5, v7}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 260
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v5    # "userId":I
    goto/16 :goto_11

    .line 236
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_e
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 237
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_1d

    .line 238
    invoke-virtual {v9, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    const/4 v5, -0x1

    return v5

    .line 241
    :cond_1d
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 242
    .local v5, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1e

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    .line 245
    :cond_1e
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v7, 0x1

    invoke-interface {v6, v0, v5, v7}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 247
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v5    # "userId":I
    goto/16 :goto_11

    .line 223
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_f
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 224
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_1f

    .line 225
    invoke-virtual {v9, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    const/4 v5, -0x1

    return v5

    .line 228
    :cond_1f
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 229
    .local v5, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_20

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    .line 232
    :cond_20
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v7, 0x0

    invoke-interface {v6, v0, v5, v7}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 234
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v5    # "userId":I
    goto/16 :goto_11

    .line 210
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_10
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 211
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_21

    .line 212
    invoke-virtual {v9, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    const/4 v5, -0x1

    return v5

    .line 215
    :cond_21
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 216
    .local v5, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_22

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    .line 219
    :cond_22
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v7, 0x1

    invoke-interface {v6, v0, v5, v7}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 221
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v5    # "userId":I
    goto/16 :goto_11

    .line 200
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_11
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 202
    .local v5, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_23

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    .line 205
    :cond_23
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v7, 0x0

    invoke-interface {v6, v0, v5, v7}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    .line 208
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v5    # "userId":I
    goto/16 :goto_11

    .line 189
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_12
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 190
    .restart local v0    # "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 191
    .local v5, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_24

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    .line 194
    :cond_24
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v7, 0x1

    invoke-interface {v6, v0, v5, v7}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    .line 197
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v5    # "userId":I
    goto/16 :goto_11

    .line 167
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_13
    move-wide/from16 v24, v5

    const/4 v5, -0x1

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "mode":Ljava/lang/String;
    const/4 v6, 0x0

    .line 169
    .local v6, "interruptionFilter":I
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_2

    :cond_25
    goto :goto_e

    :sswitch_1b
    const-string/jumbo v7, "none"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    const/4 v14, 0x0

    goto :goto_f

    :sswitch_1c
    const-string/jumbo v7, "off"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    const/4 v14, 0x5

    goto :goto_f

    :sswitch_1d
    const-string v7, "all"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    move v14, v11

    goto :goto_f

    :sswitch_1e
    const-string/jumbo v7, "on"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    const/4 v14, 0x1

    goto :goto_f

    :sswitch_1f
    const-string/jumbo v7, "priority"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    move v14, v13

    goto :goto_f

    :sswitch_20
    const-string v7, "alarms"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    move v14, v12

    goto :goto_f

    :goto_e
    move v14, v5

    :goto_f
    if-eqz v14, :cond_29

    const/4 v5, 0x1

    if-eq v14, v5, :cond_29

    if-eq v14, v13, :cond_28

    if-eq v14, v12, :cond_27

    if-eq v14, v11, :cond_26

    const/4 v5, 0x5

    if-eq v14, v5, :cond_26

    goto :goto_10

    .line 182
    :cond_26
    const/4 v6, 0x1

    goto :goto_10

    .line 178
    :cond_27
    const/4 v6, 0x4

    .line 179
    goto :goto_10

    .line 175
    :cond_28
    const/4 v6, 0x2

    .line 176
    goto :goto_10

    .line 172
    :cond_29
    const/4 v6, 0x3

    .line 173
    nop

    .line 184
    :goto_10
    move v5, v6

    .line 185
    .local v5, "filter":I
    iget-object v7, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v7, v3, v5}, Landroid/app/INotificationManager;->setInterruptionFilter(Ljava/lang/String;I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 187
    .end local v0    # "mode":Ljava/lang/String;
    .end local v5    # "filter":I
    .end local v6    # "interruptionFilter":I
    nop

    .line 439
    :goto_11
    goto :goto_14

    .line 436
    :catch_2
    move-exception v0

    goto :goto_13

    .line 434
    :goto_12
    return v0

    .line 436
    .end local v24    # "identity":J
    .local v5, "identity":J
    :catch_3
    move-exception v0

    move-wide/from16 v24, v5

    .line 437
    .end local v5    # "identity":J
    .local v0, "e":Ljava/lang/Exception;
    .restart local v24    # "identity":J
    :goto_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error occurred. Check logcat for details. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 438
    const-string v5, "NotificationService"

    const-string v6, "Error running shell command"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    const/4 v5, 0x0

    return v5

    .line 151
    .end local v9    # "pw":Ljava/io/PrintWriter;
    .end local v24    # "identity":J
    .restart local v5    # "identity":J
    :catchall_1
    move-exception v0

    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    :goto_15
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 152
    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x7a8dd0c2 -> :sswitch_14
        -0x677a47b2 -> :sswitch_13
        -0x4f05a8e6 -> :sswitch_12
        -0x3df868b7 -> :sswitch_11
        -0x3580721a -> :sswitch_10
        -0x1e34b476 -> :sswitch_f
        -0x19cf0b16 -> :sswitch_e
        -0x199eb9aa -> :sswitch_d
        -0x18b58921 -> :sswitch_c
        -0xa97a41 -> :sswitch_b
        0x18f56 -> :sswitch_a
        0x32b09e -> :sswitch_9
        0x3498a0 -> :sswitch_8
        0xca4be8a -> :sswitch_7
        0x16318b24 -> :sswitch_6
        0x177b7f43 -> :sswitch_5
        0x28bd431f -> :sswitch_4
        0x4af068f8 -> :sswitch_3
        0x5d9b0a8d -> :sswitch_2
        0x76556fbd -> :sswitch_1
        0x7dcb4968 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x76bbb26c -> :sswitch_1a
        -0x335692e5 -> :sswitch_19
        0x18cc9 -> :sswitch_18
        0x6a47f5e -> :sswitch_17
        0x16e20ea1 -> :sswitch_16
        0x38b735af -> :sswitch_15
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x545a2fbe -> :sswitch_20
        -0x4577865c -> :sswitch_1f
        0xddf -> :sswitch_1e
        0x179a1 -> :sswitch_1d
        0x1ad6f -> :sswitch_1c
        0x33af38 -> :sswitch_1b
    .end sparse-switch
.end method

.method public onHelp()V
    .locals 2

    .line 709
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "usage: cmd notification SUBCMD [args]\n\nSUBCMDs:\n  allow_listener COMPONENT [user_id (current user if not specified)]\n  disallow_listener COMPONENT [user_id (current user if not specified)]\n  allow_assistant COMPONENT [user_id (current user if not specified)]\n  remove_assistant COMPONENT [user_id (current user if not specified)]\n  set_dnd [on|none (same as on)|priority|alarms|all|off (same as all)]  allow_dnd PACKAGE [user_id (current user if not specified)]\n  disallow_dnd PACKAGE [user_id (current user if not specified)]\n  suspend_package PACKAGE\n  unsuspend_package PACKAGE\n  reset_assistant_user_set [user_id (current user if not specified)]\n  get_approved_assistant [user_id (current user if not specified)]\n  post [--help | flags] TAG TEXT\n  set_bubbles PACKAGE PREFERENCE (0=none 1=all 2=selected) [user_id (current user if not specified)]\n  set_bubbles_channel PACKAGE CHANNEL_ID ALLOW [user_id (current user if not specified)]\n  list\n  get <notification-key>\n  snooze --for <msec> <notification-key>\n  unsnooze <notification-key>\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 710
    return-void
.end method

.method parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "encoded"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 454
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 455
    :cond_0
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 458
    :cond_1
    const-string v0, "http:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 459
    const-string v0, "https:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 460
    const-string v0, "content:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 461
    const-string v0, "file:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 462
    const-string v0, "android.resource:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 465
    :cond_2
    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 466
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "drawable"

    const-string v3, "android"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 468
    .local v0, "resid":I
    if-eqz v0, :cond_3

    .line 469
    invoke-static {p1, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1

    .line 468
    .end local v0    # "resid":I
    :cond_3
    goto :goto_0

    .line 471
    :cond_4
    const-string v0, "data:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 472
    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 473
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 474
    .local v1, "bits":[B
    array-length v2, v1

    invoke-static {v1, v0, v2}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 471
    .end local v1    # "bits":[B
    :cond_5
    :goto_0
    nop

    .line 476
    return-object v1

    .line 463
    :cond_6
    :goto_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 464
    .local v0, "asUri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1
.end method

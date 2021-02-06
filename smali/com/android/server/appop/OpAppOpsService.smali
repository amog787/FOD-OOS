.class public Lcom/android/server/appop/OpAppOpsService;
.super Ljava/lang/Object;
.source "OpAppOpsService.java"


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final TAG:Ljava/lang/String;

.field private static final WHITELIST_FOR_REQUESTING_INSTALL_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static isMmsLocked:Z

.field public static mUpdatingXml:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    const-class v0, Lcom/android/server/appop/OpAppOpsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/OpAppOpsService;->TAG:Ljava/lang/String;

    .line 52
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/appop/OpAppOpsService;->DEBUG_ONEPLUS:Z

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/appop/OpAppOpsService;->isMmsLocked:Z

    .line 54
    sput-boolean v0, Lcom/android/server/appop/OpAppOpsService;->mUpdatingXml:Z

    .line 56
    const-string v0, "com.oneplus.brickmode"

    const-string v1, "com.oneplus.filemanager"

    const-string v2, "com.oneplus.screenrecord"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/OpAppOpsService;->WHITELIST_FOR_REQUESTING_INSTALL_PACKAGES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getUpdatedValue(I)I
    .locals 1
    .param p0, "oldValue"    # I

    .line 241
    packed-switch p0, :pswitch_data_0

    .line 293
    const/4 v0, -0x1

    return v0

    .line 291
    :pswitch_0
    const/16 v0, 0x3f2

    return v0

    .line 289
    :pswitch_1
    const/16 v0, 0x3f1

    return v0

    .line 287
    :pswitch_2
    const/16 v0, 0x3f0

    return v0

    .line 285
    :pswitch_3
    const/16 v0, 0x4d

    return v0

    .line 283
    :pswitch_4
    const/16 v0, 0x4c

    return v0

    .line 281
    :pswitch_5
    const/16 v0, 0x4b

    return v0

    .line 279
    :pswitch_6
    const/16 v0, 0x4a

    return v0

    .line 277
    :pswitch_7
    const/16 v0, 0x49

    return v0

    .line 275
    :pswitch_8
    const/16 v0, 0x48

    return v0

    .line 273
    :pswitch_9
    const/16 v0, 0x46

    return v0

    .line 271
    :pswitch_a
    const/16 v0, 0x3ef

    return v0

    .line 269
    :pswitch_b
    const/16 v0, 0x45

    return v0

    .line 267
    :pswitch_c
    const/16 v0, 0x44

    return v0

    .line 265
    :pswitch_d
    const/16 v0, 0x43

    return v0

    .line 263
    :pswitch_e
    const/16 v0, 0x42

    return v0

    .line 261
    :pswitch_f
    const/16 v0, 0x41

    return v0

    .line 259
    :pswitch_10
    const/16 v0, 0x40

    return v0

    .line 257
    :pswitch_11
    const/16 v0, 0x3ee

    return v0

    .line 255
    :pswitch_12
    const/16 v0, 0x3ed

    return v0

    .line 253
    :pswitch_13
    const/16 v0, 0x3ec

    return v0

    .line 251
    :pswitch_14
    const/16 v0, 0x3eb

    return v0

    .line 249
    :pswitch_15
    const/16 v0, 0x3ea

    return v0

    .line 247
    :pswitch_16
    const/16 v0, 0x47

    return v0

    .line 245
    :pswitch_17
    const/16 v0, 0x3f

    return v0

    .line 243
    :pswitch_18
    const/16 v0, 0x3e9

    return v0

    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static lockMmsApp(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .line 299
    sget-boolean v0, Lcom/android/server/appop/OpAppOpsService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 300
    sget-object v0, Lcom/android/server/appop/OpAppOpsService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUpdatingXml = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/appop/OpAppOpsService;->mUpdatingXml:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/appop/OpAppOpsService;->mUpdatingXml:Z

    .line 303
    sget-boolean v1, Lcom/android/server/appop/OpAppOpsService;->isMmsLocked:Z

    if-eqz v1, :cond_2

    .line 304
    sget-boolean v1, Lcom/android/server/appop/OpAppOpsService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    .line 305
    sget-object v1, Lcom/android/server/appop/OpAppOpsService;->TAG:Ljava/lang/String;

    const-string v2, "Setting applocker for mms app"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_1
    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    const/16 v2, 0x3e9

    .line 308
    const-string v3, "com.oneplus.mms"

    invoke-virtual {v1, v2, p1, v3, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 309
    sput-boolean v0, Lcom/android/server/appop/OpAppOpsService;->isMmsLocked:Z

    .line 311
    :cond_2
    return-void
.end method

.method public static maybeChangeOpModeToAllowed(Ljava/lang/String;II)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "op"    # I
    .param p2, "defaultMode"    # I

    .line 315
    sget-object v0, Lcom/android/server/appop/OpAppOpsService;->WHITELIST_FOR_REQUESTING_INSTALL_PACKAGES:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    .line 317
    sget-object v0, Lcom/android/server/appop/OpAppOpsService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Allowing package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to request install packages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v0, 0x0

    return v0

    .line 320
    :cond_0
    return p2
.end method

.method public static shouldUpdateXml(Landroid/util/AtomicFile;I)Z
    .locals 10
    .param p0, "file"    # Landroid/util/AtomicFile;
    .param p1, "currentVersion"    # I

    .line 63
    const/4 v0, -0x1

    .line 64
    .local v0, "oldVersion":I
    monitor-enter p0

    .line 67
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71
    .local v2, "stream":Ljava/io/FileInputStream;
    nop

    .line 73
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 74
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 76
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v4, v7, :cond_0

    if-eq v5, v6, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    if-ne v5, v7, :cond_3

    .line 83
    const/4 v4, 0x0

    const-string/jumbo v7, "v"

    invoke-interface {v3, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "versionString":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 85
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v0, v7

    .line 87
    :cond_1
    sget-object v7, Lcom/android/server/appop/OpAppOpsService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "shouldUpdateXml - oldVersion =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "currentVersion = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    if-lt v0, p1, :cond_2

    .line 89
    nop

    .line 98
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    goto :goto_1

    .line 99
    :catch_0
    move-exception v6

    .line 100
    .local v6, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v7, Lcom/android/server/appop/OpAppOpsService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "shouldUpdateXml - stream close failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v6    # "e":Ljava/io/IOException;
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    return v1

    .line 91
    :cond_2
    nop

    .line 98
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 101
    goto :goto_2

    .line 99
    :catch_1
    move-exception v1

    .line 100
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    sget-object v7, Lcom/android/server/appop/OpAppOpsService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "shouldUpdateXml - stream close failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 91
    return v6

    .line 81
    .end local v4    # "versionString":Ljava/lang/String;
    :cond_3
    :try_start_6
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "no start tag found"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "oldVersion":I
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "file":Landroid/util/AtomicFile;
    .end local p1    # "currentVersion":I
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 97
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    .restart local v0    # "oldVersion":I
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "file":Landroid/util/AtomicFile;
    .restart local p1    # "currentVersion":I
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 93
    :catch_2
    move-exception v3

    .line 94
    .local v3, "e":Ljava/lang/Exception;
    :try_start_7
    sget-object v4, Lcom/android/server/appop/OpAppOpsService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "shouldUpdateXml - Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 95
    nop

    .line 98
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 101
    goto :goto_3

    .line 99
    :catch_3
    move-exception v4

    .line 100
    .local v4, "e":Ljava/io/IOException;
    :try_start_9
    sget-object v5, Lcom/android/server/appop/OpAppOpsService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shouldUpdateXml - stream close failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v4    # "e":Ljava/io/IOException;
    :goto_3
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 95
    return v1

    .line 98
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 101
    goto :goto_5

    .line 99
    :catch_4
    move-exception v3

    .line 100
    .local v3, "e":Ljava/io/IOException;
    :try_start_b
    sget-object v4, Lcom/android/server/appop/OpAppOpsService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "shouldUpdateXml - stream close failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5
    nop

    .end local v0    # "oldVersion":I
    .end local p0    # "file":Landroid/util/AtomicFile;
    .end local p1    # "currentVersion":I
    throw v1

    .line 103
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "oldVersion":I
    .restart local p0    # "file":Landroid/util/AtomicFile;
    .restart local p1    # "currentVersion":I
    :catchall_1
    move-exception v1

    goto :goto_6

    .line 68
    :catch_5
    move-exception v2

    .line 69
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/android/server/appop/OpAppOpsService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldUpdateXml - No existing app ops "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; starting empty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    monitor-exit p0

    return v1

    .line 103
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_6
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v1
.end method

.method public static updateXml(Ljava/io/File;I)V
    .locals 21
    .param p0, "storagePath"    # Ljava/io/File;
    .param p1, "currentVersion"    # I

    .line 107
    move-object/from16 v1, p0

    const-string/jumbo v0, "op"

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/appop/OpAppOpsService;->mUpdatingXml:Z

    .line 108
    const/4 v3, 0x0

    .line 110
    .local v3, "updatedNodeCount":I
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 111
    .local v4, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 112
    .local v5, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v5, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 114
    .local v6, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 115
    .local v7, "opList":Lorg/w3c/dom/NodeList;
    sget-boolean v8, Lcom/android/server/appop/OpAppOpsService;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_0

    .line 116
    sget-object v8, Lcom/android/server/appop/OpAppOpsService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateXml, opList length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v10, "n"

    if-ge v8, v9, :cond_3

    .line 119
    :try_start_1
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    .line 120
    .local v9, "attr":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 121
    .local v10, "nodeAttr":Lorg/w3c/dom/Node;
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 122
    .local v11, "nodeValue":I
    const/16 v12, 0x3f

    if-lt v11, v12, :cond_2

    const/16 v12, 0x56

    if-gt v11, v12, :cond_2

    .line 123
    sget-boolean v12, Lcom/android/server/appop/OpAppOpsService;->DEBUG_ONEPLUS:Z

    if-eqz v12, :cond_1

    .line 124
    sget-object v12, Lcom/android/server/appop/OpAppOpsService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "nodeValue = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "updated nodeValue = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcom/android/server/appop/OpAppOpsService;->getUpdatedValue(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    invoke-static {v11}, Lcom/android/server/appop/OpAppOpsService;->getUpdatedValue(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    .line 127
    add-int/lit8 v3, v3, 0x1

    .line 118
    .end local v9    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "nodeAttr":Lorg/w3c/dom/Node;
    .end local v11    # "nodeValue":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 132
    .end local v8    # "i":I
    :cond_3
    const-string/jumbo v8, "pkg"

    invoke-interface {v6, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 133
    .local v8, "pkgList":Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v9, v11, :cond_9

    .line 134
    invoke-interface {v8, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    .line 135
    .local v11, "attr":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v11, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 136
    .local v12, "nodeAttr":Lorg/w3c/dom/Node;
    const-string v13, "com.android.mms"

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 137
    invoke-interface {v8, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 138
    .local v13, "pNode":Lorg/w3c/dom/Node;
    instance-of v14, v13, Lorg/w3c/dom/Element;

    if-eqz v14, :cond_7

    .line 139
    invoke-interface {v8, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 140
    .local v14, "pkgElement":Lorg/w3c/dom/Element;
    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 141
    .local v15, "n":Lorg/w3c/dom/NodeList;
    const/16 v16, 0x0

    move/from16 v2, v16

    .local v2, "j":I
    :goto_2
    move-object/from16 v16, v0

    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 142
    invoke-interface {v15, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 143
    .local v0, "opAttr":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v0, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v17

    .line 144
    .local v17, "opNodeAttr":Lorg/w3c/dom/Node;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v18

    .line 146
    .local v19, "opNodeValue":Ljava/lang/String;
    move-object/from16 v18, v0

    .end local v0    # "opAttr":Lorg/w3c/dom/NamedNodeMap;
    .local v18, "opAttr":Lorg/w3c/dom/NamedNodeMap;
    const-string v0, "1001"

    move-object/from16 v20, v4

    move-object/from16 v4, v19

    .end local v19    # "opNodeValue":Ljava/lang/String;
    .local v4, "opNodeValue":Ljava/lang/String;
    .local v20, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 147
    sget-boolean v0, Lcom/android/server/appop/OpAppOpsService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    .line 148
    sget-object v0, Lcom/android/server/appop/OpAppOpsService;->TAG:Ljava/lang/String;

    move-object/from16 v19, v4

    .end local v4    # "opNodeValue":Ljava/lang/String;
    .restart local v19    # "opNodeValue":Ljava/lang/String;
    const-string v4, "Detected mms app is locked"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 147
    .end local v19    # "opNodeValue":Ljava/lang/String;
    .restart local v4    # "opNodeValue":Ljava/lang/String;
    :cond_4
    move-object/from16 v19, v4

    .line 150
    .end local v4    # "opNodeValue":Ljava/lang/String;
    .restart local v19    # "opNodeValue":Ljava/lang/String;
    :goto_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/appop/OpAppOpsService;->isMmsLocked:Z

    goto :goto_4

    .line 146
    .end local v19    # "opNodeValue":Ljava/lang/String;
    .restart local v4    # "opNodeValue":Ljava/lang/String;
    :cond_5
    move-object/from16 v19, v4

    const/4 v0, 0x1

    .line 141
    .end local v4    # "opNodeValue":Ljava/lang/String;
    .end local v17    # "opNodeAttr":Lorg/w3c/dom/Node;
    .end local v18    # "opAttr":Lorg/w3c/dom/NamedNodeMap;
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v16

    move-object/from16 v4, v20

    goto :goto_2

    .end local v20    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v4, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_6
    move-object/from16 v20, v4

    const/4 v0, 0x1

    .end local v4    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v20    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    goto :goto_5

    .line 138
    .end local v2    # "j":I
    .end local v14    # "pkgElement":Lorg/w3c/dom/Element;
    .end local v15    # "n":Lorg/w3c/dom/NodeList;
    .end local v20    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_7
    move-object/from16 v16, v0

    move v0, v2

    move-object/from16 v20, v4

    .end local v4    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v20    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    goto :goto_5

    .line 136
    .end local v13    # "pNode":Lorg/w3c/dom/Node;
    .end local v20    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_8
    move-object/from16 v16, v0

    move v0, v2

    move-object/from16 v20, v4

    .line 133
    .end local v4    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v11    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .end local v12    # "nodeAttr":Lorg/w3c/dom/Node;
    .restart local v20    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move v2, v0

    move-object/from16 v0, v16

    move-object/from16 v4, v20

    goto/16 :goto_1

    .end local v20    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_9
    move-object/from16 v20, v4

    .line 157
    .end local v4    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9    # "i":I
    .restart local v20    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    if-lez v3, :cond_c

    .line 158
    sget-boolean v0, Lcom/android/server/appop/OpAppOpsService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_a

    .line 159
    sget-object v0, Lcom/android/server/appop/OpAppOpsService;->TAG:Ljava/lang/String;

    const-string v2, "Some nodes updated , updating xml "

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_a
    const-string v0, "app-ops"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 163
    .local v0, "versionNodeList":Lorg/w3c/dom/NodeList;
    sget-boolean v2, Lcom/android/server/appop/OpAppOpsService;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_b

    .line 164
    sget-object v2, Lcom/android/server/appop/OpAppOpsService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Length of version list  = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_b
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 167
    .local v2, "attr":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v4, "v"

    invoke-interface {v2, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 168
    .local v4, "nodeAttr":Lorg/w3c/dom/Node;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    .line 170
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v9

    .line 171
    .local v9, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v9}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v10

    .line 172
    .local v10, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v11, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v11, v6}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 173
    .local v11, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v12, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v12, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 174
    .local v12, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v10, v11, v12}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    .end local v0    # "versionNodeList":Lorg/w3c/dom/NodeList;
    .end local v2    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .end local v4    # "nodeAttr":Lorg/w3c/dom/Node;
    .end local v5    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "opList":Lorg/w3c/dom/NodeList;
    .end local v8    # "pkgList":Lorg/w3c/dom/NodeList;
    .end local v9    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .end local v10    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v11    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v12    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v20    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_c
    goto :goto_6

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/appop/OpAppOpsService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception observed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return-void
.end method

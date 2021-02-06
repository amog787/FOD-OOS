.class public final Lcom/android/server/wm/CompatModePackages;
.super Ljava/lang/Object;
.source "CompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/CompatModePackages$CompatHandler;
    }
.end annotation


# static fields
.field private static final COMPAT_FLAG_DONT_ASK:I = 0x1

.field private static final COMPAT_FLAG_ENABLED:I = 0x2

.field private static final MSG_WRITE:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private final mFile:Landroid/util/AtomicFile;

.field private final mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

.field private final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/io/File;Landroid/os/Handler;)V
    .locals 16
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "systemDir"    # Ljava/io/File;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 87
    move-object/from16 v1, p0

    const-string v2, "Error reading compat-packages"

    const-string v3, "ActivityTaskManager"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    .line 88
    move-object/from16 v4, p1

    iput-object v4, v1, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 89
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string v6, "packages-compat.xml"

    move-object/from16 v7, p2

    invoke-direct {v5, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v6, "compat-mode"

    invoke-direct {v0, v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    .line 90
    new-instance v0, Lcom/android/server/wm/CompatModePackages$CompatHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lcom/android/server/wm/CompatModePackages$CompatHandler;-><init>(Lcom/android/server/wm/CompatModePackages;Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    .line 92
    const/4 v5, 0x0

    .line 94
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v0, v1, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v5, v0

    .line 95
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v6, v0

    .line 96
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 97
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v8, v0

    .line 98
    .local v8, "eventType":I
    :goto_0
    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eq v8, v10, :cond_0

    if-eq v8, v9, :cond_0

    .line 100
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v8, v0

    goto :goto_0

    .line 102
    :cond_0
    if-ne v8, v9, :cond_2

    .line 137
    if-eqz v5, :cond_1

    .line 139
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    goto :goto_1

    .line 140
    :catch_0
    move-exception v0

    .line 103
    :cond_1
    :goto_1
    return-void

    .line 106
    :cond_2
    :try_start_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "tagName":Ljava/lang/String;
    const-string v11, "compat-packages"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 108
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move v8, v11

    .line 110
    :cond_3
    if-ne v8, v10, :cond_6

    .line 111
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 112
    .end local v0    # "tagName":Ljava/lang/String;
    .local v11, "tagName":Ljava/lang/String;
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-ne v0, v10, :cond_5

    .line 113
    const-string v0, "pkg"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    const-string v0, "name"

    const/4 v12, 0x0

    invoke-interface {v6, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 115
    .local v13, "pkg":Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 116
    const-string v0, "mode"

    invoke-interface {v6, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v12, v0

    .line 117
    .local v12, "mode":Ljava/lang/String;
    const/4 v14, 0x0

    .line 118
    .local v14, "modeInt":I
    if-eqz v12, :cond_4

    .line 120
    :try_start_3
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v14, v0

    .line 122
    goto :goto_2

    .line 121
    :catch_1
    move-exception v0

    .line 124
    :cond_4
    :goto_2
    :try_start_4
    iget-object v0, v1, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .end local v12    # "mode":Ljava/lang/String;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "modeInt":I
    :cond_5
    move-object v0, v11

    .end local v11    # "tagName":Ljava/lang/String;
    .restart local v0    # "tagName":Ljava/lang/String;
    :cond_6
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v8, v11

    .line 130
    if-ne v8, v9, :cond_3

    .line 137
    .end local v0    # "tagName":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "eventType":I
    :cond_7
    if-eqz v5, :cond_9

    .line 139
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 141
    :goto_3
    goto :goto_4

    .line 140
    :catch_2
    move-exception v0

    goto :goto_3

    .line 137
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_5

    .line 134
    :catch_3
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    if-eqz v5, :cond_8

    :try_start_6
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 137
    .end local v0    # "e":Ljava/io/IOException;
    :cond_8
    if-eqz v5, :cond_9

    .line 139
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 132
    :catch_4
    move-exception v0

    .line 133
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_8
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 137
    nop

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v5, :cond_9

    .line 139
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    .line 144
    :cond_9
    :goto_4
    return-void

    .line 137
    :goto_5
    if-eqz v5, :cond_a

    .line 139
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 141
    goto :goto_6

    .line 140
    :catch_5
    move-exception v0

    .line 143
    :cond_a
    :goto_6
    throw v2
.end method

.method static synthetic access$000(Lcom/android/server/wm/CompatModePackages;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/CompatModePackages;

    .line 54
    invoke-direct {p0}, Lcom/android/server/wm/CompatModePackages;->saveCompatModes()V

    return-void
.end method

.method private getPackageFlags(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 152
    .local v0, "flags":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private removePackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-direct {p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    .line 171
    :cond_0
    return-void
.end method

.method private saveCompatModes()V
    .locals 17

    .line 360
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 361
    new-instance v0, Ljava/util/HashMap;

    iget-object v3, v1, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v3, v0

    .line 362
    .local v3, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 364
    const/4 v2, 0x0

    .line 367
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v0, v1, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    move-object v2, v0

    .line 368
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    move-object v4, v0

    .line 369
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 370
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 371
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v4, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 372
    const-string v0, "compat-packages"

    invoke-interface {v4, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 374
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    move-object v5, v0

    .line 375
    .local v5, "pm":Landroid/content/pm/IPackageManager;
    iget-object v0, v1, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    move-object v7, v0

    .line 376
    .local v7, "globalConfig":Landroid/content/res/Configuration;
    iget v0, v7, Landroid/content/res/Configuration;->screenLayout:I

    move v8, v0

    .line 377
    .local v8, "screenLayout":I
    iget v0, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move v9, v0

    .line 378
    .local v9, "smallestScreenWidthDp":I
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v10, v0

    .line 379
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 380
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v11, v0

    .line 381
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 382
    .local v12, "pkg":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move v13, v0

    .line 383
    .local v13, "mode":I
    if-nez v13, :cond_0

    .line 384
    goto :goto_0

    .line 386
    :cond_0
    const/4 v14, 0x0

    .line 388
    .local v14, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v15, 0x0

    :try_start_2
    invoke-interface {v5, v12, v15, v15}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v14, v0

    .line 390
    goto :goto_1

    .line 412
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "pm":Landroid/content/pm/IPackageManager;
    .end local v7    # "globalConfig":Landroid/content/res/Configuration;
    .end local v8    # "screenLayout":I
    .end local v9    # "smallestScreenWidthDp":I
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "mode":I
    .end local v14    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_2

    .line 389
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v5    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v7    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v8    # "screenLayout":I
    .restart local v9    # "smallestScreenWidthDp":I
    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v12    # "pkg":Ljava/lang/String;
    .restart local v13    # "mode":I
    .restart local v14    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v0

    .line 391
    :goto_1
    if-nez v14, :cond_1

    .line 392
    goto :goto_0

    .line 394
    :cond_1
    :try_start_3
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    invoke-direct {v0, v14, v8, v9, v15}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 396
    .local v0, "info":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 397
    goto :goto_0

    .line 399
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 400
    goto :goto_0

    .line 402
    :cond_3
    const-string v15, "pkg"

    invoke-interface {v4, v6, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 403
    const-string v15, "name"

    invoke-interface {v4, v6, v15, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 404
    const-string v15, "mode"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v16, v3

    const/4 v3, 0x0

    .end local v3    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v16, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_4
    invoke-interface {v4, v3, v15, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 405
    const-string v6, "pkg"

    invoke-interface {v4, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 406
    move-object/from16 v3, v16

    const/4 v6, 0x0

    .end local v0    # "info":Landroid/content/res/CompatibilityInfo;
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "mode":I
    .end local v14    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 408
    .end local v16    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v3    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    move-object/from16 v16, v3

    .end local v3    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v16    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v0, "compat-packages"

    const/4 v3, 0x0

    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 409
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 411
    iget-object v0, v1, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 417
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "pm":Landroid/content/pm/IPackageManager;
    .end local v7    # "globalConfig":Landroid/content/res/Configuration;
    .end local v8    # "screenLayout":I
    .end local v9    # "smallestScreenWidthDp":I
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    goto :goto_3

    .line 412
    :catch_2
    move-exception v0

    goto :goto_2

    .end local v16    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v3    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_3
    move-exception v0

    move-object/from16 v16, v3

    .line 413
    .end local v3    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v0, "e1":Ljava/io/IOException;
    .restart local v16    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_2
    const-string v3, "ActivityTaskManager"

    const-string v4, "Error writing compat packages"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    if-eqz v2, :cond_5

    .line 415
    iget-object v3, v1, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 418
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_5
    :goto_3
    return-void

    .line 362
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v16    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private scheduleWrite()V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/server/wm/CompatModePackages$CompatHandler;->removeMessages(I)V

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/CompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 199
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/CompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 200
    return-void
.end method

.method private setPackageFlagLocked(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "set"    # Z

    .line 239
    invoke-direct {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    .line 240
    .local v0, "curFlags":I
    if-eqz p3, :cond_0

    not-int v1, p2

    and-int/2addr v1, v0

    goto :goto_0

    :cond_0
    or-int v1, v0, p2

    .line 241
    .local v1, "newFlags":I
    :goto_0
    if-eq v0, v1, :cond_2

    .line 242
    if-eqz v1, :cond_1

    .line 243
    iget-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 245
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    .line 249
    :cond_2
    return-void
.end method


# virtual methods
.method public compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .locals 5
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 205
    invoke-static {p1}, Lcom/android/server/wm/OpScreenCompatInjector;->overrideCompatInfoIfNeed(Landroid/content/pm/ApplicationInfo;)V

    .line 207
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 208
    .local v0, "globalConfig":Landroid/content/res/Configuration;
    new-instance v1, Landroid/content/res/CompatibilityInfo;

    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v3, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 210
    invoke-direct {p0, v4}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v1, p1, v2, v3, v4}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 212
    .local v1, "ci":Landroid/content/res/CompatibilityInfo;
    return-object v1
.end method

.method public computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I
    .locals 7
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 216
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 217
    .local v0, "enabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 218
    .local v3, "globalConfig":Landroid/content/res/Configuration;
    new-instance v4, Landroid/content/res/CompatibilityInfo;

    iget v5, v3, Landroid/content/res/Configuration;->screenLayout:I

    iget v6, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-direct {v4, p1, v5, v6, v0}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 220
    .local v4, "info":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v4}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 221
    const/4 v1, -0x2

    return v1

    .line 223
    :cond_1
    invoke-virtual {v4}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 224
    const/4 v1, -0x1

    return v1

    .line 226
    :cond_2
    if-eqz v0, :cond_3

    goto :goto_1

    .line 227
    :cond_3
    move v1, v2

    .line 226
    :goto_1
    return v1
.end method

.method public getPackageAskCompatModeLocked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 231
    invoke-direct {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getPackageScreenCompatModeLocked(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 256
    goto :goto_0

    .line 255
    :catch_0
    move-exception v1

    .line 257
    :goto_0
    if-nez v0, :cond_0

    .line 258
    const/4 v1, -0x3

    return v1

    .line 260
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    return v1
.end method

.method public getPackages()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method public handlePackageAddedLocked(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "updated"    # Z

    .line 174
    const/4 v0, 0x0

    .line 176
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p1, v1, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 178
    goto :goto_0

    .line 177
    :catch_0
    move-exception v2

    .line 179
    :goto_0
    if-nez v0, :cond_0

    .line 180
    return-void

    .line 182
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    .line 183
    .local v2, "ci":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v2}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v3

    if-nez v3, :cond_1

    .line 184
    invoke-virtual {v2}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 186
    .local v1, "mayCompat":Z
    :goto_1
    if-eqz p2, :cond_2

    .line 189
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 190
    iget-object v3, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-direct {p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    .line 194
    :cond_2
    return-void
.end method

.method public handlePackageDataClearedLocked(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/wm/CompatModePackages;->removePackage(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public handlePackageUninstalledLocked(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 163
    invoke-direct {p0, p1}, Lcom/android/server/wm/CompatModePackages;->removePackage(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public setPackageAskCompatModeLocked(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ask"    # Z

    .line 235
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageFlagLocked(Ljava/lang/String;IZ)V

    .line 236
    return-void
.end method

.method setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V
    .locals 16
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "mode"    # I

    .line 277
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p1

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 279
    .local v4, "packageName":Ljava/lang/String;
    invoke-direct {v1, v4}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v5

    .line 282
    .local v5, "curFlags":I
    const/4 v0, 0x2

    const/4 v6, 0x1

    const-string v7, "ActivityTaskManager"

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v0, :cond_0

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown screen compat mode req #"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; ignoring"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void

    .line 290
    :cond_0
    and-int/lit8 v9, v5, 0x2

    if-nez v9, :cond_1

    move v9, v6

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 291
    .local v9, "enable":Z
    :goto_0
    goto :goto_1

    .line 287
    .end local v9    # "enable":Z
    :cond_2
    const/4 v9, 0x1

    .line 288
    .restart local v9    # "enable":Z
    goto :goto_1

    .line 284
    .end local v9    # "enable":Z
    :cond_3
    const/4 v9, 0x0

    .line 285
    .restart local v9    # "enable":Z
    nop

    .line 297
    :goto_1
    move v10, v5

    .line 298
    .local v10, "newFlags":I
    if-eqz v9, :cond_4

    .line 299
    or-int/2addr v0, v10

    .end local v10    # "newFlags":I
    .local v0, "newFlags":I
    goto :goto_2

    .line 301
    .end local v0    # "newFlags":I
    .restart local v10    # "newFlags":I
    :cond_4
    and-int/lit8 v0, v10, -0x3

    .line 304
    .end local v10    # "newFlags":I
    .restart local v0    # "newFlags":I
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v10

    .line 305
    .local v10, "ci":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v10}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v11

    const-string v12, "Ignoring compat mode change of "

    if-eqz v11, :cond_5

    .line 306
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "; compatibility never needed"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v0, 0x0

    .line 310
    :cond_5
    invoke-virtual {v10}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 311
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "; compatibility always needed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v0, 0x0

    move v11, v0

    goto :goto_3

    .line 310
    :cond_6
    move v11, v0

    .line 316
    .end local v0    # "newFlags":I
    .local v11, "newFlags":I
    :goto_3
    if-eq v11, v5, :cond_c

    .line 317
    if-eqz v11, :cond_7

    .line 318
    iget-object v0, v1, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 320
    :cond_7
    iget-object v0, v1, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :goto_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v10

    .line 326
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    .line 328
    iget-object v0, v1, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    .line 329
    .local v12, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v12, v4}, Lcom/android/server/wm/ActivityStack;->restartPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    .line 332
    .local v13, "starting":Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessControllerMap;->getPidMap()Landroid/util/SparseArray;

    move-result-object v14

    .line 333
    .local v14, "pidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v6

    move v6, v0

    .local v6, "i":I
    :goto_5
    if-ltz v6, :cond_b

    .line 334
    invoke-virtual {v14, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/wm/WindowProcessController;

    .line 335
    .local v15, "app":Lcom/android/server/wm/WindowProcessController;
    iget-object v0, v15, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 336
    goto :goto_6

    .line 339
    :cond_8
    :try_start_0
    invoke-virtual {v15}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 340
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending to proc "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " new compat "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_9
    invoke-virtual {v15}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-interface {v0, v4, v10}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :cond_a
    goto :goto_6

    .line 344
    :catch_0
    move-exception v0

    .line 333
    .end local v15    # "app":Lcom/android/server/wm/WindowProcessController;
    :goto_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 348
    .end local v6    # "i":I
    :cond_b
    if-eqz v13, :cond_c

    .line 349
    const/4 v6, 0x0

    invoke-virtual {v13, v6, v6}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    .line 353
    invoke-virtual {v12, v13, v6, v6}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 356
    .end local v12    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v13    # "starting":Lcom/android/server/wm/ActivityRecord;
    .end local v14    # "pidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    :cond_c
    return-void
.end method

.method public setPackageScreenCompatModeLocked(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 264
    const/4 v0, 0x0

    .line 266
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 268
    goto :goto_0

    .line 267
    :catch_0
    move-exception v1

    .line 269
    :goto_0
    if-nez v0, :cond_0

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPackageScreenCompatMode failed: unknown package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void

    .line 273
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    .line 274
    return-void
.end method

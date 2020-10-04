.class Lcom/android/server/wm/AppWarnings;
.super Ljava/lang/Object;
.source "AppWarnings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppWarnings$ConfigHandler;,
        Lcom/android/server/wm/AppWarnings$UiHandler;
    }
.end annotation


# static fields
.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "packages-warnings.xml"

.field public static final FLAG_HIDE_COMPILE_SDK:I = 0x2

.field public static final FLAG_HIDE_DEPRECATED_SDK:I = 0x4

.field public static final FLAG_HIDE_DISPLAY_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppWarnings"


# instance fields
.field private mAlwaysShowUnsupportedCompileSdkWarningActivities:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mConfigFile:Landroid/util/AtomicFile;

.field private mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

.field private final mHandler:Lcom/android/server/wm/AppWarnings$ConfigHandler;

.field private final mPackageFlags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiContext:Landroid/content/Context;

.field private final mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

.field private mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

.field private mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/io/File;)V
    .locals 3
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "uiContext"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "uiHandler"    # Landroid/os/Handler;
    .param p5, "systemDir"    # Ljava/io/File;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Ljava/util/HashSet;

    .line 93
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 94
    iput-object p2, p0, Lcom/android/server/wm/AppWarnings;->mUiContext:Landroid/content/Context;

    .line 95
    new-instance v0, Lcom/android/server/wm/AppWarnings$ConfigHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AppWarnings$ConfigHandler;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mHandler:Lcom/android/server/wm/AppWarnings$ConfigHandler;

    .line 96
    new-instance v0, Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AppWarnings$UiHandler;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    .line 97
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "packages-warnings.xml"

    invoke-direct {v1, p5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "warnings-config"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    .line 99
    invoke-direct {p0}, Lcom/android/server/wm/AppWarnings;->readConfigFromFileAmsThread()V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/AppWarnings;
    .param p1, "x1"    # Lcom/android/server/wm/ActivityRecord;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/AppWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/AppWarnings;

    .line 51
    invoke-direct {p0}, Lcom/android/server/wm/AppWarnings;->hideUnsupportedDisplaySizeDialogUiThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/AppWarnings;
    .param p1, "x1"    # Lcom/android/server/wm/ActivityRecord;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedCompileSdkDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/AppWarnings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/AppWarnings;
    .param p1, "x1"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings;->hideDialogsForPackageUiThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/AppWarnings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AppWarnings;

    .line 51
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUiContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/AppWarnings;
    .param p1, "x1"    # Lcom/android/server/wm/ActivityRecord;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings;->showDeprecatedTargetSdkDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/AppWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/AppWarnings;

    .line 51
    invoke-direct {p0}, Lcom/android/server/wm/AppWarnings;->writeConfigToFileAmsThread()V

    return-void
.end method

.method private getPackageFlags(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    monitor-enter v0

    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    return v1

    .line 367
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private hideDialogsForPackageUiThread(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 308
    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->dismiss()V

    .line 310
    iput-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 315
    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->dismiss()V

    .line 317
    iput-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    .line 322
    invoke-virtual {v0}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 323
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    invoke-virtual {v0}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;->dismiss()V

    .line 324
    iput-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    .line 326
    :cond_5
    return-void
.end method

.method private hideUnsupportedDisplaySizeDialogUiThread()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->dismiss()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    .line 231
    :cond_0
    return-void
.end method

.method private readConfigFromFileAmsThread()V
    .locals 13

    .line 523
    const-string v0, "Error reading package metadata"

    const-string v1, "AppWarnings"

    const/4 v2, 0x0

    .line 526
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v2, v3

    .line 528
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 529
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 531
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 532
    .local v4, "eventType":I
    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    if-eq v4, v5, :cond_0

    .line 534
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v5

    goto :goto_0

    .line 536
    :cond_0
    if-ne v4, v5, :cond_2

    .line 572
    if-eqz v2, :cond_1

    .line 574
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 576
    goto :goto_1

    .line 575
    :catch_0
    move-exception v0

    .line 537
    :cond_1
    :goto_1
    return-void

    .line 540
    :cond_2
    :try_start_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 541
    .local v7, "tagName":Ljava/lang/String;
    const-string v8, "packages"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 542
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v4, v8

    .line 544
    :cond_3
    if-ne v4, v6, :cond_5

    .line 545
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 546
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-ne v8, v6, :cond_5

    .line 547
    const-string v8, "package"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 548
    const-string v8, "name"

    const/4 v9, 0x0

    invoke-interface {v3, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 549
    .local v8, "name":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 550
    const-string v10, "flags"

    invoke-interface {v3, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 552
    .local v9, "flags":Ljava/lang/String;
    const/4 v10, 0x0

    .line 553
    .local v10, "flagsInt":I
    if-eqz v9, :cond_4

    .line 555
    :try_start_3
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v10, v11

    .line 557
    goto :goto_2

    .line 556
    :catch_1
    move-exception v11

    .line 559
    :cond_4
    :goto_2
    :try_start_4
    iget-object v11, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "flags":Ljava/lang/String;
    .end local v10    # "flagsInt":I
    :cond_5
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v4, v8

    .line 565
    if-ne v4, v5, :cond_3

    .line 572
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "eventType":I
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_6
    if-eqz v2, :cond_8

    .line 574
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 576
    :goto_3
    goto :goto_4

    .line 575
    :catch_2
    move-exception v0

    goto :goto_3

    .line 572
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 569
    :catch_3
    move-exception v3

    .line 570
    .local v3, "e":Ljava/io/IOException;
    if-eqz v2, :cond_7

    :try_start_6
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 572
    .end local v3    # "e":Ljava/io/IOException;
    :cond_7
    if-eqz v2, :cond_8

    .line 574
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 567
    :catch_4
    move-exception v3

    .line 568
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_8
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 572
    nop

    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v2, :cond_8

    .line 574
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    .line 579
    :cond_8
    :goto_4
    return-void

    .line 572
    :goto_5
    if-eqz v2, :cond_9

    .line 574
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 576
    goto :goto_6

    .line 575
    :catch_5
    move-exception v1

    .line 576
    :cond_9
    :goto_6
    throw v0
.end method

.method private removePackageAndHideDialogs(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->hideDialogsForPackage(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    monitor-enter v0

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mHandler:Lcom/android/server/wm/AppWarnings$ConfigHandler;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$ConfigHandler;->scheduleWrite()V

    .line 217
    monitor-exit v0

    .line 218
    return-void

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private showDeprecatedTargetSdkDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 284
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;->dismiss()V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    .line 288
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWarnings;->hasPackageFlag(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    new-instance v0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUiContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    .line 292
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    invoke-virtual {v0}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;->show()V

    .line 294
    :cond_1
    return-void
.end method

.method private showUnsupportedCompileSdkDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 263
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->dismiss()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    .line 267
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWarnings;->hasPackageFlag(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    new-instance v0, Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUiContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/UnsupportedCompileSdkDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    .line 271
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->show()V

    .line 273
    :cond_1
    return-void
.end method

.method private showUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 242
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->dismiss()V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    .line 246
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWarnings;->hasPackageFlag(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    new-instance v0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUiContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    .line 250
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->show()V

    .line 252
    :cond_1
    return-void
.end method

.method private writeConfigToFileAmsThread()V
    .locals 10

    .line 478
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    monitor-enter v0

    .line 479
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 480
    .local v1, "packageFlags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    const/4 v0, 0x0

    .line 484
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    .line 486
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 487
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 488
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 489
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 490
    const-string v3, "packages"

    invoke-interface {v2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 492
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 493
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 494
    .local v6, "pkg":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 495
    .local v7, "mode":I
    if-nez v7, :cond_0

    .line 496
    goto :goto_0

    .line 498
    :cond_0
    const-string v8, "package"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 499
    const-string v8, "name"

    invoke-interface {v2, v5, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 500
    const-string v8, "flags"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 501
    const-string v8, "package"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 502
    nop

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "mode":I
    goto :goto_0

    .line 504
    :cond_1
    const-string v3, "packages"

    invoke-interface {v2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 505
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 507
    iget-object v3, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 513
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_1

    .line 508
    :catch_0
    move-exception v2

    .line 509
    .local v2, "e1":Ljava/io/IOException;
    const-string v3, "AppWarnings"

    const-string v4, "Error writing package metadata"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    if-eqz v0, :cond_2

    .line 511
    iget-object v3, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 514
    .end local v2    # "e1":Ljava/io/IOException;
    :cond_2
    :goto_1
    return-void

    .line 480
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v1    # "packageFlags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 77
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method hasPackageFlag(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .line 336
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDensityChanged()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWarnings$UiHandler;->hideUnsupportedDisplaySizeDialog()V

    .line 206
    return-void
.end method

.method public onPackageDataCleared(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings;->removePackageAndHideDialogs(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public onPackageUninstalled(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 198
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings;->removePackageAndHideDialogs(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public onResumeActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 181
    return-void
.end method

.method public onStartActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedCompileSdkDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showDeprecatedTargetDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 172
    return-void
.end method

.method setPackageFlag(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "enabled"    # Z

    .line 347
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    monitor-enter v0

    .line 348
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings;->getPackageFlags(Ljava/lang/String;)I

    move-result v1

    .line 349
    .local v1, "curFlags":I
    if-eqz p3, :cond_0

    or-int v2, v1, p2

    goto :goto_0

    :cond_0
    not-int v2, p2

    and-int/2addr v2, v1

    .line 350
    .local v2, "newFlags":I
    :goto_0
    if-eq v1, v2, :cond_2

    .line 351
    if-eqz v2, :cond_1

    .line 352
    iget-object v3, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 354
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/AppWarnings;->mHandler:Lcom/android/server/wm/AppWarnings$ConfigHandler;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWarnings$ConfigHandler;->scheduleWrite()V

    .line 358
    .end local v1    # "curFlags":I
    .end local v2    # "newFlags":I
    :cond_2
    monitor-exit v0

    .line 359
    return-void

    .line 358
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showDeprecatedTargetDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 158
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget v1, Landroid/os/Build$VERSION;->MIN_SUPPORTED_TARGET_SDK_INT:I

    if-ge v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->showDeprecatedTargetDialog(Lcom/android/server/wm/ActivityRecord;)V

    .line 161
    :cond_0
    return-void
.end method

.method public showUnsupportedCompileSdkDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 121
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 128
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    return-void

    .line 140
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 141
    .local v0, "compileSdk":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 142
    .local v1, "platformSdk":I
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    const-string v3, "REL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 143
    .local v2, "isCompileSdkPreview":Z
    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 144
    .local v3, "isPlatformSdkPreview":Z
    if-eqz v2, :cond_2

    if-lt v0, v1, :cond_4

    :cond_2
    if-eqz v3, :cond_3

    if-lt v1, v0, :cond_4

    :cond_3
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    if-ne v1, v0, :cond_5

    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 147
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 148
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->showUnsupportedCompileSdkDialog(Lcom/android/server/wm/ActivityRecord;)V

    .line 150
    :cond_5
    return-void

    .line 123
    .end local v0    # "compileSdk":I
    .end local v1    # "platformSdk":I
    .end local v2    # "isCompileSdkPreview":Z
    .end local v3    # "isPlatformSdkPreview":Z
    :cond_6
    :goto_0
    return-void
.end method

.method public showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 109
    .local v0, "globalConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    iget v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-le v1, v2, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->showUnsupportedDisplaySizeDialog(Lcom/android/server/wm/ActivityRecord;)V

    .line 113
    :cond_0
    return-void
.end method

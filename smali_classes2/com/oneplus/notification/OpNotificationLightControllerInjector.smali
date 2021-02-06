.class public Lcom/oneplus/notification/OpNotificationLightControllerInjector;
.super Ljava/lang/Object;
.source "OpNotificationLightControllerInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/notification/OpNotificationLightControllerInjector$WorkerHandler;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final DB_VERSION:I = 0x1

.field static final MESSAGE_SAVE_LIGHT_POLICY_FILE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_BLOCKED_PKGS:Ljava/lang/String; = "blocked-packages"

.field private static final TAG_NOTIFICATION_POLICY:Ljava/lang/String; = "notification-policy"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefLowBatteryWarningLevel:I

.field private mHandler:Lcom/oneplus/notification/OpNotificationLightControllerInjector$WorkerHandler;

.field private mLightBlockedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLightPolicyFile:Landroid/util/AtomicFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->mLightBlockedPackages:Ljava/util/HashSet;

    .line 62
    new-instance v0, Lcom/oneplus/notification/OpNotificationLightControllerInjector$WorkerHandler;

    invoke-direct {v0, p0, p2}, Lcom/oneplus/notification/OpNotificationLightControllerInjector$WorkerHandler;-><init>(Lcom/oneplus/notification/OpNotificationLightControllerInjector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->mHandler:Lcom/oneplus/notification/OpNotificationLightControllerInjector$WorkerHandler;

    .line 63
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .local v0, "systemDir":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "notification_led_policy.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->mLightPolicyFile:Landroid/util/AtomicFile;

    .line 65
    invoke-direct {p0}, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->loadLightPolicyFile()V

    .line 66
    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->mDefLowBatteryWarningLevel:I

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/notification/OpNotificationLightControllerInjector;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/notification/OpNotificationLightControllerInjector;

    .line 38
    invoke-direct {p0}, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->handleSaveLightPolicyFile()V

    return-void
.end method

.method private handleSaveLightPolicyFile()V
    .locals 7

    .line 131
    sget-object v0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->TAG:Ljava/lang/String;

    const-string v1, "handleSaveLightPolicyFile"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->mLightPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->mLightPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .local v1, "stream":Ljava/io/FileOutputStream;
    nop

    .line 141
    :try_start_1
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 142
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v3, "utf-8"

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 143
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 144
    const-string v4, "notification-policy"

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    const-string v4, "version"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 146
    const-string v3, "blocked-packages"

    invoke-interface {v2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    iget-object v3, p0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->mLightBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 148
    .local v4, "pkg":Ljava/lang/String;
    const-string v6, "package"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    const-string v6, "name"

    invoke-interface {v2, v5, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    const-string v6, "package"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    nop

    .end local v4    # "pkg":Ljava/lang/String;
    goto :goto_0

    .line 152
    :cond_0
    const-string v3, "blocked-packages"

    invoke-interface {v2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    const-string v3, "notification-policy"

    invoke-interface {v2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 155
    iget-object v3, p0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->mLightPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_1

    .line 156
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v3, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->TAG:Ljava/lang/String;

    const-string v4, "Failed to save light policy file, restoring backup"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->mLightPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 160
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    monitor-exit v0

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 136
    :catch_1
    move-exception v1

    .line 137
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->TAG:Ljava/lang/String;

    const-string v3, "Failed to save light policy file"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    monitor-exit v0

    return-void

    .line 160
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private loadLightPolicyFile()V
    .locals 9

    .line 86
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->mLightPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->mLightBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 88
    const/4 v1, 0x0

    .line 90
    .local v1, "infile":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->mLightPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    .line 91
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 92
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 95
    :cond_0
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_3

    .line 96
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "tag":Ljava/lang/String;
    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    .line 98
    const-string v7, "blocked-packages"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 99
    :cond_1
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v5, v7

    if-eq v7, v6, :cond_0

    .line 100
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 101
    const-string v7, "package"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 102
    iget-object v7, p0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->mLightBlockedPackages:Ljava/util/HashSet;

    const-string v8, "name"

    .line 103
    invoke-interface {v2, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 102
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    :cond_2
    const-string v7, "blocked-packages"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    const/4 v7, 0x3

    if-ne v5, v7, :cond_1

    .line 105
    goto :goto_0

    .line 120
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "type":I
    :cond_3
    :try_start_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_3

    .line 117
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    sget-object v3, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->TAG:Ljava/lang/String;

    const-string v4, "Unable to parse notification light policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    :try_start_4
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 115
    :catch_1
    move-exception v2

    .line 116
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_5
    sget-object v3, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->TAG:Ljava/lang/String;

    const-string v4, "Unable to parse notification light policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 113
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v2

    .line 114
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->TAG:Ljava/lang/String;

    const-string v4, "Unable to read notification light policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 120
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 121
    nop

    .end local p0    # "this":Lcom/oneplus/notification/OpNotificationLightControllerInjector;
    throw v2

    .line 111
    .restart local p0    # "this":Lcom/oneplus/notification/OpNotificationLightControllerInjector;
    :catch_3
    move-exception v2

    .line 120
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 121
    :goto_4
    nop

    .line 122
    .end local v1    # "infile":Ljava/io/FileInputStream;
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private saveLightPolicyFile()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->mHandler:Lcom/oneplus/notification/OpNotificationLightControllerInjector$WorkerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/notification/OpNotificationLightControllerInjector$WorkerHandler;->removeMessages(I)V

    .line 127
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->mHandler:Lcom/oneplus/notification/OpNotificationLightControllerInjector$WorkerHandler;

    invoke-virtual {v0, v1}, Lcom/oneplus/notification/OpNotificationLightControllerInjector$WorkerHandler;->sendEmptyMessage(I)Z

    .line 128
    return-void
.end method


# virtual methods
.method public isLightEnabledImpl(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->mLightBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setLightStatusImpl(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "status"    # Z

    .line 180
    if-eqz p2, :cond_0

    .line 181
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->mLightBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->mLightBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 185
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->saveLightPolicyFile()V

    .line 186
    return-void
.end method

.method public showLight(Lcom/android/server/notification/ZenModeHelper;)Z
    .locals 9
    .param p1, "zmHelper"    # Lcom/android/server/notification/ZenModeHelper;

    .line 164
    invoke-virtual {p1}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->mContext:Landroid/content/Context;

    .line 165
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oem_allow_led_light"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 166
    .local v0, "disableLedInZenMode":Z
    :goto_0
    iget-object v3, p0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 167
    .local v3, "batteryStatus":Landroid/content/Intent;
    const/4 v4, 0x0

    .line 168
    .local v4, "lowBattery":Z
    const/4 v5, 0x0

    .line 169
    .local v5, "powerConnected":Z
    if-eqz v3, :cond_3

    .line 170
    const/4 v6, -0x1

    const-string v7, "level"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 171
    .local v6, "batteryLevel":I
    const-string v7, "plugged"

    invoke-virtual {v3, v7, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 172
    .local v7, "chargePlug":I
    iget v8, p0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->mDefLowBatteryWarningLevel:I

    if-gt v6, v8, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    move v8, v1

    :goto_1
    move v4, v8

    .line 173
    if-eqz v7, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    move v8, v1

    :goto_2
    move v5, v8

    .line 176
    .end local v6    # "batteryLevel":I
    .end local v7    # "chargePlug":I
    :cond_3
    if-nez v0, :cond_4

    if-eqz v4, :cond_5

    if-nez v5, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

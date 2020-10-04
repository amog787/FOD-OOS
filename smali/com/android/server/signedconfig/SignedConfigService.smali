.class public Lcom/android/server/signedconfig/SignedConfigService;
.super Ljava/lang/Object;
.source "SignedConfigService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/signedconfig/SignedConfigService$UpdateReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final KEY_GLOBAL_SETTINGS:Ljava/lang/String; = "android.settings.global"

.field private static final KEY_GLOBAL_SETTINGS_SIGNATURE:Ljava/lang/String; = "android.settings.global.signature"

.field private static final TAG:Ljava/lang/String; = "SignedConfig"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPacMan:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/signedconfig/SignedConfigService;->mContext:Landroid/content/Context;

    .line 61
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/signedconfig/SignedConfigService;->mPacMan:Landroid/content/pm/PackageManagerInternal;

    .line 62
    return-void
.end method

.method public static registerUpdateReceiver(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 124
    new-instance v1, Lcom/android/server/signedconfig/SignedConfigService$UpdateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/signedconfig/SignedConfigService$UpdateReceiver;-><init>(Lcom/android/server/signedconfig/SignedConfigService$1;)V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    return-void
.end method


# virtual methods
.method handlePackageBroadcast(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .line 66
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 67
    .local v0, "packageData":Landroid/net/Uri;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "packageName":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_1

    .line 70
    return-void

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/android/server/signedconfig/SignedConfigService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 73
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/signedconfig/SignedConfigService;->mPacMan:Landroid/content/pm/PackageManagerInternal;

    const/16 v4, 0x80

    const/16 v5, 0x3e8

    invoke-virtual {v3, v1, v4, v5, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 75
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    const-string v4, "SignedConfig"

    if-nez v3, :cond_2

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got null PackageInfo for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void

    .line 79
    :cond_2
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 80
    .local v5, "metaData":Landroid/os/Bundle;
    if-nez v5, :cond_3

    .line 82
    return-void

    .line 84
    :cond_3
    const-string v6, "android.settings.global"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 85
    const-string v7, "android.settings.global.signature"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 86
    new-instance v8, Lcom/android/server/signedconfig/SignedConfigEvent;

    invoke-direct {v8}, Lcom/android/server/signedconfig/SignedConfigEvent;-><init>()V

    .line 88
    .local v8, "event":Lcom/android/server/signedconfig/SignedConfigEvent;
    const/4 v9, 0x1

    :try_start_0
    iput v9, v8, Lcom/android/server/signedconfig/SignedConfigEvent;->type:I

    .line 89
    iput-object v1, v8, Lcom/android/server/signedconfig/SignedConfigEvent;->fromPackage:Ljava/lang/String;

    .line 90
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "config":Ljava/lang/String;
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .local v7, "signature":Ljava/lang/String;
    :try_start_1
    new-instance v9, Ljava/lang/String;

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v10

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v9

    .line 100
    .end local v6    # "config":Ljava/lang/String;
    .local v4, "config":Ljava/lang/String;
    nop

    .line 105
    :try_start_2
    new-instance v6, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;

    iget-object v9, p0, Lcom/android/server/signedconfig/SignedConfigService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9, v1, v8}, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/signedconfig/SignedConfigEvent;)V

    invoke-virtual {v6, v4, v7}, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->applyConfig(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .end local v4    # "config":Ljava/lang/String;
    .end local v7    # "signature":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/server/signedconfig/SignedConfigEvent;->send()V

    .line 109
    goto :goto_1

    .line 95
    .restart local v6    # "config":Ljava/lang/String;
    .restart local v7    # "signature":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 96
    .local v9, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to base64 decode global settings config from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v4, 0x2

    iput v4, v8, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    invoke-virtual {v8}, Lcom/android/server/signedconfig/SignedConfigEvent;->send()V

    .line 99
    return-void

    .line 108
    .end local v6    # "config":Ljava/lang/String;
    .end local v7    # "signature":Ljava/lang/String;
    .end local v9    # "iae":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v4

    invoke-virtual {v8}, Lcom/android/server/signedconfig/SignedConfigEvent;->send()V

    throw v4

    .line 113
    .end local v8    # "event":Lcom/android/server/signedconfig/SignedConfigEvent;
    :cond_4
    :goto_1
    return-void
.end method

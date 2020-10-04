.class public Lcom/android/server/vr/SettingsObserver;
.super Ljava/lang/Object;
.source "SettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/SettingsObserver$SettingChangeListener;
    }
.end annotation


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mSecureSettingName:Ljava/lang/String;

.field private final mSettingRestoreReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/vr/SettingsObserver$SettingChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "settingUri"    # Landroid/net/Uri;
    .param p4, "secureSettingName"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/SettingsObserver;->mSettingsListeners:Ljava/util/Set;

    .line 69
    iput-object p4, p0, Lcom/android/server/vr/SettingsObserver;->mSecureSettingName:Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/android/server/vr/SettingsObserver$1;

    invoke-direct {v0, p0, p4}, Lcom/android/server/vr/SettingsObserver$1;-><init>(Lcom/android/server/vr/SettingsObserver;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/vr/SettingsObserver;->mSettingRestoreReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    new-instance v0, Lcom/android/server/vr/SettingsObserver$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/vr/SettingsObserver$2;-><init>(Lcom/android/server/vr/SettingsObserver;Landroid/os/Handler;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/server/vr/SettingsObserver;->mContentObserver:Landroid/database/ContentObserver;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 94
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/vr/SettingsObserver;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, p3, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/vr/SettingsObserver;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/SettingsObserver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vr/SettingsObserver;->sendSettingRestored(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/vr/SettingsObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/SettingsObserver;

    .line 38
    invoke-direct {p0}, Lcom/android/server/vr/SettingsObserver;->sendSettingChanged()V

    return-void
.end method

.method public static build(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)Lcom/android/server/vr/SettingsObserver;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "settingName"    # Ljava/lang/String;

    .line 108
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 110
    .local v0, "settingUri":Landroid/net/Uri;
    new-instance v1, Lcom/android/server/vr/SettingsObserver;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/server/vr/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v1
.end method

.method private sendSettingChanged()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/server/vr/SettingsObserver;->mSettingsListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vr/SettingsObserver$SettingChangeListener;

    .line 134
    .local v1, "l":Lcom/android/server/vr/SettingsObserver$SettingChangeListener;
    invoke-interface {v1}, Lcom/android/server/vr/SettingsObserver$SettingChangeListener;->onSettingChanged()V

    .line 135
    .end local v1    # "l":Lcom/android/server/vr/SettingsObserver$SettingChangeListener;
    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method private sendSettingRestored(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "prevValue"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 139
    iget-object v0, p0, Lcom/android/server/vr/SettingsObserver;->mSettingsListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vr/SettingsObserver$SettingChangeListener;

    .line 140
    .local v1, "l":Lcom/android/server/vr/SettingsObserver$SettingChangeListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/vr/SettingsObserver$SettingChangeListener;->onSettingRestored(Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    .end local v1    # "l":Lcom/android/server/vr/SettingsObserver$SettingChangeListener;
    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/server/vr/SettingsObserver$SettingChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/vr/SettingsObserver$SettingChangeListener;

    .line 119
    iget-object v0, p0, Lcom/android/server/vr/SettingsObserver;->mSettingsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public removeListener(Lcom/android/server/vr/SettingsObserver$SettingChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/vr/SettingsObserver$SettingChangeListener;

    .line 128
    iget-object v0, p0, Lcom/android/server/vr/SettingsObserver;->mSettingsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

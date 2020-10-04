.class public Lcom/android/server/backup/encryption/keys/TertiaryKeyRotationTracker;
.super Ljava/lang/Object;
.source "TertiaryKeyRotationTracker.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_BACKUPS_UNTIL_TERTIARY_KEY_ROTATION:I = 0x1f

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "tertiary_key_rotation_tracker"

.field private static final TAG:Ljava/lang/String; = "TertiaryKeyRotationTracker"


# instance fields
.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/server/backup/encryption/keys/TertiaryKeyRotationTracker;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 58
    return-void
.end method

.method private getBackupsSinceRotation(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/android/server/backup/encryption/keys/TertiaryKeyRotationTracker;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/backup/encryption/keys/TertiaryKeyRotationTracker;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/android/server/backup/encryption/keys/TertiaryKeyRotationTracker;

    .line 49
    const-string/jumbo v1, "tertiary_key_rotation_tracker"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/backup/encryption/keys/TertiaryKeyRotationTracker;-><init>(Landroid/content/SharedPreferences;)V

    .line 48
    return-object v0
.end method


# virtual methods
.method public isKeyRotationDue(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/backup/encryption/keys/TertiaryKeyRotationTracker;->getBackupsSinceRotation(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public markAllForRotation()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/android/server/backup/encryption/keys/TertiaryKeyRotationTracker;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 104
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/android/server/backup/encryption/keys/TertiaryKeyRotationTracker;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 105
    .local v2, "packageName":Ljava/lang/String;
    const/16 v3, 0x1f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 106
    .end local v2    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 107
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    return-void
.end method

.method public recordBackup(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/backup/encryption/keys/TertiaryKeyRotationTracker;->getBackupsSinceRotation(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 77
    .local v0, "backupsSinceRotation":I
    iget-object v1, p0, Lcom/android/server/backup/encryption/keys/TertiaryKeyRotationTracker;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    return-void
.end method

.method public resetCountdown(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/android/server/backup/encryption/keys/TertiaryKeyRotationTracker;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    return-void
.end method

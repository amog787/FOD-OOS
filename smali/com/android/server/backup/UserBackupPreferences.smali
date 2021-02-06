.class public Lcom/android/server/backup/UserBackupPreferences;
.super Ljava/lang/Object;
.source "UserBackupPreferences.java"


# static fields
.field private static final PREFERENCES_FILE:Ljava/lang/String; = "backup_preferences"


# instance fields
.field private final mEditor:Landroid/content/SharedPreferences$Editor;

.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 2
    .param p1, "conext"    # Landroid/content/Context;
    .param p2, "storageDir"    # Ljava/io/File;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/io/File;

    const-string v1, "backup_preferences"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    .local v0, "excludedKeysFile":Ljava/io/File;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/UserBackupPreferences;->mPreferences:Landroid/content/SharedPreferences;

    .line 40
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/UserBackupPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 41
    return-void
.end method


# virtual methods
.method addExcludedKeys(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupPreferences;->mPreferences:Landroid/content/SharedPreferences;

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 46
    .local v0, "existingKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 47
    iget-object v1, p0, Lcom/android/server/backup/UserBackupPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 48
    iget-object v1, p0, Lcom/android/server/backup/UserBackupPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 49
    return-void
.end method

.method getExcludedRestoreKeysForPackage(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/android/server/backup/UserBackupPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

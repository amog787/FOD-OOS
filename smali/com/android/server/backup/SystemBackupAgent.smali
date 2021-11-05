.class public Lcom/android/server/backup/SystemBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SystemBackupAgent.java"


# static fields
.field private static final ACCOUNT_MANAGER_HELPER:Ljava/lang/String; = "account_manager"

.field private static final NOTIFICATION_HELPER:Ljava/lang/String; = "notifications"

.field private static final PEOPLE_HELPER:Ljava/lang/String; = "people"

.field private static final PERMISSION_HELPER:Ljava/lang/String; = "permissions"

.field private static final PREFERRED_HELPER:Ljava/lang/String; = "preferred_activities"

.field private static final SHORTCUT_MANAGER_HELPER:Ljava/lang/String; = "shortcut_manager"

.field private static final SLICES_HELPER:Ljava/lang/String; = "slices"

.field private static final SYNC_SETTINGS_HELPER:Ljava/lang/String; = "account_sync_settings"

.field private static final TAG:Ljava/lang/String; = "SystemBackupAgent"

.field private static final USAGE_STATS_HELPER:Ljava/lang/String; = "usage_stats"

.field private static final WALLPAPER_HELPER:Ljava/lang/String; = "wallpaper"

.field public static final WALLPAPER_IMAGE:Ljava/lang/String;

.field private static final WALLPAPER_IMAGE_DIR:Ljava/lang/String;

.field private static final WALLPAPER_IMAGE_FILENAME:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_IMAGE_KEY:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper"

.field public static final WALLPAPER_INFO:Ljava/lang/String;

.field private static final WALLPAPER_INFO_DIR:Ljava/lang/String;

.field private static final WALLPAPER_INFO_FILENAME:Ljava/lang/String; = "wallpaper_info.xml"

.field private static final sEligibleForMultiUser:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 68
    nop

    .line 69
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE_DIR:Ljava/lang/String;

    .line 70
    new-instance v1, Ljava/io/File;

    .line 71
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    .line 76
    nop

    .line 77
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO_DIR:Ljava/lang/String;

    .line 78
    new-instance v1, Ljava/io/File;

    .line 79
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "wallpaper_info.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, "permissions"

    const-string/jumbo v1, "notifications"

    const-string v2, "account_sync_settings"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->sEligibleForMultiUser:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    return-void
.end method


# virtual methods
.method public addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V
    .locals 1
    .param p1, "keyPrefix"    # Ljava/lang/String;
    .param p2, "helper"    # Landroid/app/backup/BackupHelper;

    .line 129
    iget v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/backup/SystemBackupAgent;->sEligibleForMultiUser:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    return-void

    .line 133
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 134
    return-void
.end method

.method public onCreate(Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 91
    invoke-super {p0, p1}, Landroid/app/backup/BackupAgentHelper;->onCreate(Landroid/os/UserHandle;)V

    .line 93
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 95
    new-instance v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    iget v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {v0, p0, v1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;I)V

    const-string v1, "account_sync_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 96
    new-instance v0, Lcom/android/server/backup/PreferredActivityBackupHelper;

    invoke-direct {v0}, Lcom/android/server/backup/PreferredActivityBackupHelper;-><init>()V

    const-string/jumbo v1, "preferred_activities"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 97
    new-instance v0, Lcom/android/server/backup/NotificationBackupHelper;

    iget v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {v0, v1}, Lcom/android/server/backup/NotificationBackupHelper;-><init>(I)V

    const-string/jumbo v1, "notifications"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 98
    new-instance v0, Lcom/android/server/backup/PermissionBackupHelper;

    iget v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {v0, v1}, Lcom/android/server/backup/PermissionBackupHelper;-><init>(I)V

    const-string/jumbo v1, "permissions"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 99
    new-instance v0, Lcom/android/server/backup/UsageStatsBackupHelper;

    invoke-direct {v0, p0}, Lcom/android/server/backup/UsageStatsBackupHelper;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "usage_stats"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 100
    new-instance v0, Lcom/android/server/backup/ShortcutBackupHelper;

    invoke-direct {v0}, Lcom/android/server/backup/ShortcutBackupHelper;-><init>()V

    const-string/jumbo v1, "shortcut_manager"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 101
    new-instance v0, Lcom/android/server/backup/AccountManagerBackupHelper;

    invoke-direct {v0}, Lcom/android/server/backup/AccountManagerBackupHelper;-><init>()V

    const-string v1, "account_manager"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 102
    new-instance v0, Lcom/android/server/backup/SliceBackupHelper;

    invoke-direct {v0, p0}, Lcom/android/server/backup/SliceBackupHelper;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "slices"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 103
    new-instance v0, Lcom/android/server/backup/PeopleBackupHelper;

    iget v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {v0, v1}, Lcom/android/server/backup/PeopleBackupHelper;-><init>(I)V

    const-string/jumbo v1, "people"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 104
    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 0
    .param p1, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    new-instance v0, Landroid/app/backup/WallpaperBackupHelper;

    const-string v1, "/data/data/com.android.settings/files/wallpaper"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    const-string/jumbo v2, "wallpaper"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 121
    new-instance v0, Landroid/app/backup/WallpaperBackupHelper;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    const-string/jumbo v1, "system_files"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 124
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 125
    return-void
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 16
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "type"    # I
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    move-object/from16 v1, p5

    move-object/from16 v2, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring file domain="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " path="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SystemBackupAgent"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, "restoredWallpaper":Z
    const/4 v4, 0x0

    .line 150
    .local v4, "outFile":Ljava/io/File;
    const-string/jumbo v5, "r"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v6, "wallpaper"

    if-eqz v5, :cond_1

    .line 151
    const-string/jumbo v5, "wallpaper_info.xml"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 152
    new-instance v5, Ljava/io/File;

    sget-object v7, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 153
    const/4 v0, 0x1

    move v4, v0

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 155
    new-instance v5, Ljava/io/File;

    sget-object v7, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 156
    const/4 v0, 0x1

    move v4, v0

    goto :goto_0

    .line 161
    :cond_1
    move-object v5, v4

    move v4, v0

    .end local v0    # "restoredWallpaper":Z
    .local v4, "restoredWallpaper":Z
    .local v5, "outFile":Ljava/io/File;
    :goto_0
    if-nez v5, :cond_2

    .line 162
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping unrecognized system file: [ "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_2
    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move/from16 v10, p4

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    move-object v15, v5

    invoke-static/range {v7 .. v15}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 166
    if-eqz v4, :cond_3

    .line 167
    nop

    .line 168
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/IWallpaperManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, v0

    .line 170
    .local v6, "wallpaper":Landroid/app/IWallpaperManager;
    if-eqz v6, :cond_3

    .line 172
    :try_start_1
    invoke-interface {v6}, Landroid/app/IWallpaperManager;->settingsRestored()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    goto :goto_1

    .line 173
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 174
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t restore settings\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 184
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v6    # "wallpaper":Landroid/app/IWallpaperManager;
    :cond_3
    :goto_1
    goto :goto_2

    .line 178
    :catch_1
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    if-eqz v4, :cond_4

    .line 181
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 182
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 185
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_2
    return-void
.end method

.class public Lcom/android/server/backup/params/RestoreParams;
.super Ljava/lang/Object;
.source "RestoreParams.java"


# instance fields
.field public final filterSet:[Ljava/lang/String;

.field public final isSystemRestore:Z

.field public final listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public final monitor:Landroid/app/backup/IBackupManagerMonitor;

.field public final observer:Landroid/app/backup/IRestoreObserver;

.field public final packageInfo:Landroid/content/pm/PackageInfo;

.field public final pmToken:I

.field public final token:J

.field public final transportClient:Lcom/android/server/backup/transport/TransportClient;


# direct methods
.method private constructor <init>(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V
    .locals 0
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p3, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p4, "token"    # J
    .param p6, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p7, "pmToken"    # I
    .param p8, "isSystemRestore"    # Z
    .param p9, "filterSet"    # [Ljava/lang/String;
    .param p10, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/android/server/backup/params/RestoreParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 139
    iput-object p2, p0, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 140
    iput-object p3, p0, Lcom/android/server/backup/params/RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 141
    iput-wide p4, p0, Lcom/android/server/backup/params/RestoreParams;->token:J

    .line 142
    iput-object p6, p0, Lcom/android/server/backup/params/RestoreParams;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 143
    iput p7, p0, Lcom/android/server/backup/params/RestoreParams;->pmToken:I

    .line 144
    iput-boolean p8, p0, Lcom/android/server/backup/params/RestoreParams;->isSystemRestore:Z

    .line 145
    iput-object p9, p0, Lcom/android/server/backup/params/RestoreParams;->filterSet:[Ljava/lang/String;

    .line 146
    iput-object p10, p0, Lcom/android/server/backup/params/RestoreParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 147
    return-void
.end method

.method public static createForRestoreAll(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .locals 12
    .param p0, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p1, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p2, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p3, "token"    # J
    .param p5, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 93
    new-instance v11, Lcom/android/server/backup/params/RestoreParams;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/server/backup/params/RestoreParams;-><init>(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    return-object v11
.end method

.method public static createForRestoreAtInstall(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLjava/lang/String;ILcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .locals 12
    .param p0, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p1, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p2, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p3, "token"    # J
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "pmToken"    # I
    .param p7, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 71
    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p5, v10, v0

    .line 72
    .local v10, "filterSet":[Ljava/lang/String;
    new-instance v0, Lcom/android/server/backup/params/RestoreParams;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move/from16 v8, p6

    move-object/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lcom/android/server/backup/params/RestoreParams;-><init>(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    return-object v0
.end method

.method public static createForRestorePackages(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;ZLcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .locals 12
    .param p0, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p1, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p2, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p3, "token"    # J
    .param p5, "filterSet"    # [Ljava/lang/String;
    .param p6, "isSystemRestore"    # Z
    .param p7, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 116
    new-instance v11, Lcom/android/server/backup/params/RestoreParams;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v8, p6

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/server/backup/params/RestoreParams;-><init>(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    return-object v11
.end method

.method public static createForSinglePackage(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .locals 12
    .param p0, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p1, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p2, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p3, "token"    # J
    .param p5, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p6, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 48
    new-instance v11, Lcom/android/server/backup/params/RestoreParams;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/server/backup/params/RestoreParams;-><init>(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    return-object v11
.end method

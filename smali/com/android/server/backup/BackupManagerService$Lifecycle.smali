.class public Lcom/android/server/backup/BackupManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1589
    new-instance v0, Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/backup/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService$Lifecycle;-><init>(Landroid/content/Context;Lcom/android/server/backup/BackupManagerService;)V

    .line 1590
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/backup/BackupManagerService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;

    .line 1594
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 1595
    sput-object p2, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    .line 1596
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 1600
    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    const-string v1, "backup"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->publishService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1601
    return-void
.end method

.method public onStopUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1610
    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->onStopUser(I)V

    .line 1611
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1605
    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->onUnlockUser(I)V

    .line 1606
    return-void
.end method

.method publishService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1615
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1616
    return-void
.end method

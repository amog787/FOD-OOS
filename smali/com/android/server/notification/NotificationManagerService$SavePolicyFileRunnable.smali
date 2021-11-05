.class final Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SavePolicyFileRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 962
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "x1"    # Lcom/android/server/notification/NotificationManagerService$1;

    .line 962
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 965
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationService"

    const-string v1, "handleSavePolicyFile"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$100(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/AtomicFile;

    move-result-object v0

    monitor-enter v0

    .line 969
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$100(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/AtomicFile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    .local v1, "stream":Ljava/io/FileOutputStream;
    nop

    .line 976
    :try_start_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v2, v1, v3, v4}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;Ljava/io/OutputStream;ZI)V

    .line 977
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$100(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/AtomicFile;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 981
    goto :goto_0

    .line 978
    :catch_0
    move-exception v2

    .line 979
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "NotificationService"

    const-string v4, "Failed to save policy file, restoring backup"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 980
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$100(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/AtomicFile;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 982
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 983
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 984
    return-void

    .line 982
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 970
    :catch_1
    move-exception v1

    .line 971
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string v2, "NotificationService"

    const-string v3, "Failed to save policy file"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 972
    monitor-exit v0

    return-void

    .line 982
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

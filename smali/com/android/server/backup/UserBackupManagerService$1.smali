.class Lcom/android/server/backup/UserBackupManagerService$1;
.super Ljava/lang/Object;
.source "UserBackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/UserBackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 1069
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$1;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1072
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$1;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->access$200(Lcom/android/server/backup/UserBackupManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1074
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1075
    .local v1, "bufStream":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1076
    .local v2, "bufOut":Ljava/io/DataOutputStream;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1085
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService$1;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v3}, Lcom/android/server/backup/UserBackupManagerService;->access$300(Lcom/android/server/backup/UserBackupManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1086
    .local v3, "numPackages":I
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1088
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 1089
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$1;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/UserBackupManagerService;->access$300(Lcom/android/server/backup/UserBackupManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 1090
    .local v5, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    iget-object v6, v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1091
    iget-wide v6, v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1088
    .end local v5    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1093
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 1095
    new-instance v4, Landroid/util/AtomicFile;

    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$1;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/UserBackupManagerService;->access$400(Lcom/android/server/backup/UserBackupManagerService;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1096
    .local v4, "af":Landroid/util/AtomicFile;
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    .line 1097
    .local v5, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 1098
    invoke-virtual {v4, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1105
    .end local v1    # "bufStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bufOut":Ljava/io/DataOutputStream;
    .end local v3    # "numPackages":I
    .end local v4    # "af":Landroid/util/AtomicFile;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 1106
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1099
    :catch_0
    move-exception v1

    .line 1100
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "BackupManagerService"

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService$1;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 1103
    invoke-static {v3}, Lcom/android/server/backup/UserBackupManagerService;->access$500(Lcom/android/server/backup/UserBackupManagerService;)I

    move-result v3

    const-string v4, "Unable to write backup schedule!"

    .line 1102
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1100
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1106
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit v0

    .line 1107
    return-void

    .line 1106
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

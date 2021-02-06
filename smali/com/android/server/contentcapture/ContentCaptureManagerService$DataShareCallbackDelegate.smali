.class Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;
.super Landroid/service/contentcapture/IDataShareCallback$Stub;
.source "ContentCaptureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/contentcapture/ContentCaptureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataShareCallbackDelegate"
.end annotation


# instance fields
.field private final mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

.field private final mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

.field private final mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;


# direct methods
.method constructor <init>(Landroid/view/contentcapture/DataShareRequest;Landroid/view/contentcapture/IDataShareWriteAdapter;Lcom/android/server/contentcapture/ContentCaptureManagerService;)V
    .locals 2
    .param p1, "dataShareRequest"    # Landroid/view/contentcapture/DataShareRequest;
    .param p2, "clientAdapter"    # Landroid/view/contentcapture/IDataShareWriteAdapter;
    .param p3, "parentService"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 949
    invoke-direct {p0}, Landroid/service/contentcapture/IDataShareCallback$Stub;-><init>()V

    .line 945
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 950
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 951
    iput-object p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    .line 952
    iput-object p3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 953
    return-void
.end method

.method private bestEffortCloseFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 1168
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1171
    goto :goto_0

    .line 1169
    :catch_0
    move-exception v0

    .line 1170
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to close a file descriptor"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1172
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private varargs bestEffortCloseFileDescriptors([Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p1, "fds"    # [Landroid/os/ParcelFileDescriptor;

    .line 1175
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 1176
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-direct {p0, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->bestEffortCloseFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .line 1175
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1178
    :cond_0
    return-void
.end method

.method private createPipe()Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 1144
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    .local v1, "fileDescriptors":[Landroid/os/ParcelFileDescriptor;
    nop

    .line 1150
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 1151
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to create a content capture data-sharing pipe, unexpected number of file descriptors"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    return-object v0

    .line 1156
    :cond_0
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->valid()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    aget-object v4, v1, v3

    .line 1157
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->valid()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 1163
    :cond_1
    aget-object v0, v1, v2

    aget-object v2, v1, v3

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 1158
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to create a content capture data-sharing pipe, didn\'t receive a pair of valid file descriptors."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    return-object v0

    .line 1145
    .end local v1    # "fileDescriptors":[Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .line 1146
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to create a content capture data-sharing pipe"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1147
    return-object v0
.end method

.method private enforceDataSharingTtl(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V
    .locals 7
    .param p1, "sourceIn"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "sinkIn"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "sourceOut"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "sinkOut"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "serviceAdapter"    # Landroid/service/contentcapture/IDataShareReadAdapter;

    .line 1104
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$4000(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1105
    :try_start_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 1106
    invoke-virtual {v2}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1111
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 1112
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1114
    .local v1, "finishedSuccessfully":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1115
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1116
    const/16 v4, 0x9

    invoke-direct {p0, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1117
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1119
    :cond_1
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content capture data sharing session terminated successfully for package \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 1121
    invoke-virtual {v6}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1119
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1124
    :cond_2
    const/16 v4, 0xf

    invoke-direct {p0, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1125
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reached the timeout of Content Capture data sharing session for package \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 1127
    invoke-virtual {v6}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\', terminating the pipe."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1125
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :goto_1
    const/4 v4, 0x4

    new-array v4, v4, [Landroid/os/ParcelFileDescriptor;

    aput-object p1, v4, v2

    aput-object p2, v4, v3

    const/4 v2, 0x2

    aput-object p3, v4, v2

    const/4 v2, 0x3

    aput-object p4, v4, v2

    invoke-direct {p0, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->bestEffortCloseFileDescriptors([Landroid/os/ParcelFileDescriptor;)V

    .line 1134
    if-nez v1, :cond_3

    .line 1135
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-static {v3, p5, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    .line 1138
    .end local v1    # "finishedSuccessfully":Z
    :cond_3
    monitor-exit v0

    .line 1139
    return-void

    .line 1138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private logServiceEvent(I)V
    .locals 3
    .param p1, "eventType"    # I

    .line 1197
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1198
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$4100(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Lcom/android/server/infra/ServiceNameResolver;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/infra/ServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v1

    .line 1199
    .local v1, "serviceName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 1200
    invoke-virtual {v2}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1199
    invoke-static {p1, v1, v2}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILjava/lang/String;Ljava/lang/String;)V

    .line 1201
    return-void
.end method

.method private static sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V
    .locals 3
    .param p0, "clientAdapter"    # Landroid/view/contentcapture/IDataShareWriteAdapter;
    .param p1, "serviceAdapter"    # Landroid/service/contentcapture/IDataShareReadAdapter;
    .param p2, "errorCode"    # I

    .line 1185
    :try_start_0
    invoke-interface {p0, p2}, Landroid/view/contentcapture/IDataShareWriteAdapter;->error(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    goto :goto_0

    .line 1186
    :catch_0
    move-exception v0

    .line 1187
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to call error() the client operation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1190
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    :try_start_1
    invoke-interface {p1, p2}, Landroid/service/contentcapture/IDataShareReadAdapter;->error(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1193
    goto :goto_1

    .line 1191
    :catch_1
    move-exception v0

    .line 1192
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to call error() the service operation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1194
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method


# virtual methods
.method public accept(Landroid/service/contentcapture/IDataShareReadAdapter;)V
    .locals 17
    .param p1, "serviceAdapter"    # Landroid/service/contentcapture/IDataShareReadAdapter;

    .line 957
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Data share request accepted by Content Capture service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/4 v0, 0x7

    invoke-direct {v8, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 960
    invoke-direct/range {p0 .. p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->createPipe()Landroid/util/Pair;

    move-result-object v10

    .line 961
    .local v10, "clientPipe":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;>;"
    const/16 v1, 0xc

    const/4 v2, 0x1

    if-nez v10, :cond_0

    .line 962
    invoke-direct {v8, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 964
    iget-object v0, v8, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-static {v0, v9, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    .line 966
    return-void

    .line 969
    :cond_0
    iget-object v0, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/ParcelFileDescriptor;

    .line 970
    .local v11, "sourceIn":Landroid/os/ParcelFileDescriptor;
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/ParcelFileDescriptor;

    .line 972
    .local v12, "sinkIn":Landroid/os/ParcelFileDescriptor;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->createPipe()Landroid/util/Pair;

    move-result-object v13

    .line 973
    .local v13, "servicePipe":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;>;"
    const/4 v0, 0x0

    const/4 v3, 0x2

    const/16 v4, 0xd

    if-nez v13, :cond_1

    .line 974
    invoke-direct {v8, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 976
    new-array v1, v3, [Landroid/os/ParcelFileDescriptor;

    aput-object v11, v1, v0

    aput-object v12, v1, v2

    invoke-direct {v8, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->bestEffortCloseFileDescriptors([Landroid/os/ParcelFileDescriptor;)V

    .line 978
    iget-object v0, v8, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-static {v0, v9, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    .line 980
    return-void

    .line 983
    :cond_1
    iget-object v5, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v14, v5

    check-cast v14, Landroid/os/ParcelFileDescriptor;

    .line 984
    .local v14, "sourceOut":Landroid/os/ParcelFileDescriptor;
    iget-object v5, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v15, v5

    check-cast v15, Landroid/os/ParcelFileDescriptor;

    .line 986
    .local v15, "sinkOut":Landroid/os/ParcelFileDescriptor;
    iget-object v5, v8, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v5}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object v5

    iget-object v6, v8, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    invoke-virtual {v6}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 989
    :try_start_0
    iget-object v5, v8, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-interface {v5, v11}, Landroid/view/contentcapture/IDataShareWriteAdapter;->write(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 997
    nop

    .line 999
    :try_start_1
    invoke-interface {v9, v15}, Landroid/service/contentcapture/IDataShareReadAdapter;->start(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1007
    nop

    .line 1013
    new-array v1, v3, [Landroid/os/ParcelFileDescriptor;

    aput-object v11, v1, v0

    aput-object v15, v1, v2

    invoke-direct {v8, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->bestEffortCloseFileDescriptors([Landroid/os/ParcelFileDescriptor;)V

    .line 1015
    iget-object v0, v8, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$3800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$RfORIok5BEnBfxE_2EzvPUqnoY8;

    invoke-direct {v1, v8, v12, v14, v9}, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$RfORIok5BEnBfxE_2EzvPUqnoY8;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1071
    iget-object v0, v8, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$3900(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$x2Qz6JROlFUZJrFhBfDpz3lEo0Q;

    move-object v1, v7

    move-object/from16 v2, p0

    move-object v3, v11

    move-object v4, v12

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v16, v10

    move-object v10, v7

    .end local v10    # "clientPipe":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;>;"
    .local v16, "clientPipe":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;>;"
    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$x2Qz6JROlFUZJrFhBfDpz3lEo0Q;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, v10, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1079
    return-void

    .line 1000
    .end local v16    # "clientPipe":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;>;"
    .restart local v10    # "clientPipe":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;>;"
    :catch_0
    move-exception v0

    move-object/from16 v16, v10

    move-object v1, v0

    .end local v10    # "clientPipe":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;>;"
    .restart local v16    # "clientPipe":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;>;"
    move-object v0, v1

    .line 1001
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Failed to call start() the service operation"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1002
    iget-object v1, v8, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-static {v1, v9, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    .line 1004
    invoke-direct {v8, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1006
    return-void

    .line 990
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v16    # "clientPipe":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;>;"
    .restart local v10    # "clientPipe":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;>;"
    :catch_1
    move-exception v0

    move-object/from16 v16, v10

    .line 991
    .end local v10    # "clientPipe":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;>;"
    .restart local v0    # "e":Landroid/os/RemoteException;
    .restart local v16    # "clientPipe":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;>;"
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to call write() the client operation"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 992
    iget-object v3, v8, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-static {v3, v9, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    .line 994
    invoke-direct {v8, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 996
    return-void
.end method

.method public synthetic lambda$accept$0$ContentCaptureManagerService$DataShareCallbackDelegate(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V
    .locals 9
    .param p1, "sinkIn"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "sourceOut"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "serviceAdapter"    # Landroid/service/contentcapture/IDataShareReadAdapter;

    .line 1016
    const/4 v0, 0x0

    .line 1017
    .local v0, "receivedData":Z
    const/16 v1, 0x9

    const/16 v2, 0xb

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 1019
    .local v4, "fis":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v5, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1022
    .local v5, "fos":Ljava/io/OutputStream;
    const/16 v6, 0x400

    :try_start_2
    new-array v6, v6, [B

    .line 1024
    .local v6, "byteBuffer":[B
    :goto_0
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1026
    .local v7, "readBytes":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 1027
    nop

    .line 1034
    .end local v6    # "byteBuffer":[B
    .end local v7    # "readBytes":I
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .end local v5    # "fos":Ljava/io/OutputStream;
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 1042
    .end local v4    # "fis":Ljava/io/InputStream;
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$4200(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1043
    :try_start_5
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v5}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 1044
    invoke-virtual {v6}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1045
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1046
    if-eqz v0, :cond_1

    .line 1047
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1048
    invoke-direct {p0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1049
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1052
    :cond_0
    :try_start_6
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-interface {v1}, Landroid/view/contentcapture/IDataShareWriteAdapter;->finish()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1055
    goto :goto_1

    .line 1053
    :catch_0
    move-exception v1

    .line 1054
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to call finish() the client operation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1057
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    :try_start_7
    invoke-interface {p3}, Landroid/service/contentcapture/IDataShareReadAdapter;->finish()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1060
    :goto_2
    goto/16 :goto_6

    .line 1058
    :catch_1
    move-exception v1

    .line 1059
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to call finish() the service operation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 1063
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1065
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-static {v1, p3, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    .line 1068
    goto/16 :goto_6

    .line 1045
    :catchall_0
    move-exception v1

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v1

    .line 1030
    .restart local v4    # "fis":Ljava/io/InputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    .restart local v6    # "byteBuffer":[B
    .restart local v7    # "readBytes":I
    :cond_2
    const/4 v8, 0x0

    :try_start_9
    invoke-virtual {v5, v6, v8, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1032
    const/4 v0, 0x1

    .line 1033
    .end local v7    # "readBytes":I
    goto :goto_0

    .line 1017
    .end local v6    # "byteBuffer":[B
    :catchall_1
    move-exception v6

    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v7

    :try_start_b
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "receivedData":Z
    .end local v4    # "fis":Ljava/io/InputStream;
    .end local p0    # "this":Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;
    .end local p1    # "sinkIn":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "sourceOut":Landroid/os/ParcelFileDescriptor;
    .end local p3    # "serviceAdapter":Landroid/service/contentcapture/IDataShareReadAdapter;
    :goto_3
    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v0    # "receivedData":Z
    .restart local v4    # "fis":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;
    .restart local p1    # "sinkIn":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "sourceOut":Landroid/os/ParcelFileDescriptor;
    .restart local p3    # "serviceAdapter":Landroid/service/contentcapture/IDataShareReadAdapter;
    :catchall_3
    move-exception v5

    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v6

    :try_start_d
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "receivedData":Z
    .end local p0    # "this":Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;
    .end local p1    # "sinkIn":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "sourceOut":Landroid/os/ParcelFileDescriptor;
    .end local p3    # "serviceAdapter":Landroid/service/contentcapture/IDataShareReadAdapter;
    :goto_4
    throw v5
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 1042
    .end local v4    # "fis":Ljava/io/InputStream;
    .restart local v0    # "receivedData":Z
    .restart local p0    # "this":Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;
    .restart local p1    # "sinkIn":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "sourceOut":Landroid/os/ParcelFileDescriptor;
    .restart local p3    # "serviceAdapter":Landroid/service/contentcapture/IDataShareReadAdapter;
    :catchall_5
    move-exception v4

    goto :goto_7

    .line 1034
    :catch_2
    move-exception v4

    .line 1035
    .local v4, "e":Ljava/io/IOException;
    :try_start_e
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Failed to pipe client and service streams"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1036
    const/16 v5, 0xa

    invoke-direct {p0, v5}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1039
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-static {v5, p3, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 1042
    .end local v4    # "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$4200(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1043
    :try_start_f
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v5}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 1044
    invoke-virtual {v6}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1045
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 1046
    if-eqz v0, :cond_1

    .line 1047
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1048
    invoke-direct {p0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1049
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1052
    :cond_3
    :try_start_10
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-interface {v1}, Landroid/view/contentcapture/IDataShareWriteAdapter;->finish()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_3

    .line 1055
    goto :goto_5

    .line 1053
    :catch_3
    move-exception v1

    .line 1054
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to call finish() the client operation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1057
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_5
    :try_start_11
    invoke-interface {p3}, Landroid/service/contentcapture/IDataShareReadAdapter;->finish()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_1

    goto/16 :goto_2

    .line 1069
    :goto_6
    return-void

    .line 1045
    :catchall_6
    move-exception v1

    :try_start_12
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    throw v1

    .line 1042
    :goto_7
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v5}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$4200(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1043
    :try_start_13
    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v6}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 1044
    invoke-virtual {v7}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1045
    monitor-exit v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 1046
    if-eqz v0, :cond_5

    .line 1047
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1048
    invoke-direct {p0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1049
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1052
    :cond_4
    :try_start_14
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-interface {v1}, Landroid/view/contentcapture/IDataShareWriteAdapter;->finish()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_4

    .line 1055
    goto :goto_8

    .line 1053
    :catch_4
    move-exception v1

    .line 1054
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to call finish() the client operation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1057
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_8
    :try_start_15
    invoke-interface {p3}, Landroid/service/contentcapture/IDataShareReadAdapter;->finish()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_5

    .line 1060
    :goto_9
    goto :goto_a

    .line 1058
    :catch_5
    move-exception v1

    .line 1059
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to call finish() the service operation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_9

    .line 1063
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1065
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-static {v1, p3, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    .line 1068
    :goto_a
    throw v4

    .line 1045
    :catchall_7
    move-exception v1

    :try_start_16
    monitor-exit v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    throw v1
.end method

.method public synthetic lambda$accept$1$ContentCaptureManagerService$DataShareCallbackDelegate(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V
    .locals 0
    .param p1, "sourceIn"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "sinkIn"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "sourceOut"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "sinkOut"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "serviceAdapter"    # Landroid/service/contentcapture/IDataShareReadAdapter;

    .line 1072
    invoke-direct/range {p0 .. p5}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->enforceDataSharingTtl(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V

    return-void
.end method

.method public reject()V
    .locals 4

    .line 1083
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Data share request rejected by Content Capture service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1087
    :try_start_0
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-interface {v0}, Landroid/view/contentcapture/IDataShareWriteAdapter;->rejected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    goto :goto_0

    .line 1088
    :catch_0
    move-exception v0

    .line 1089
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to call rejected() the client operation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1091
    :try_start_1
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/contentcapture/IDataShareWriteAdapter;->error(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1094
    goto :goto_0

    .line 1092
    :catch_1
    move-exception v1

    .line 1093
    .local v1, "e2":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to call error() the client operation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1096
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "e2":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

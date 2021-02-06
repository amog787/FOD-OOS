.class public Lcom/android/server/storage/DeviceStorageMonitorService;
.super Lcom/android/server/SystemService;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;,
        Lcom/android/server/storage/DeviceStorageMonitorService$Shell;,
        Lcom/android/server/storage/DeviceStorageMonitorService$State;
    }
.end annotation


# static fields
.field private static final BOOT_IMAGE_STORAGE_REQUIREMENT:J

.field private static final DEFAULT_CHECK_INTERVAL:J = 0xea60L

.field private static final DEFAULT_LOG_DELTA_BYTES:J

.field public static final EXTRA_SEQUENCE:Ljava/lang/String; = "seq"

.field private static final MSG_CHECK:I = 0x1

.field static final OPTION_FORCE_UPDATE:I = 0x1

.field static final SERVICE:Ljava/lang/String; = "devicestoragemonitor"

.field private static final TAG:Ljava/lang/String; = "DeviceStorageMonitorService"

.field private static final TV_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "devicestoragemonitor.tv"


# instance fields
.field private mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

.field private volatile mForceLevel:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

.field private mNotifManager:Landroid/app/NotificationManager;

.field private final mRemoteService:Landroid/os/Binder;

.field private final mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/UUID;",
            "Lcom/android/server/storage/DeviceStorageMonitorService$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 83
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->DEFAULT_LOG_DELTA_BYTES:J

    .line 89
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->BOOT_IMAGE_STORAGE_REQUIREMENT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 254
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 99
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    .line 308
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$2;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 328
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$3;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$3;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/Binder;

    .line 256
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DeviceStorageMonitorService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 257
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 259
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$1;

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    .line 269
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 72
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->check()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 72
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private check()V
    .locals 27

    .line 177
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 178
    .local v2, "storage":Landroid/os/storage/StorageManager;
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 181
    .local v3, "seq":I
    const-string v4, "DeviceStorageMonitorService"

    if-nez v2, :cond_0

    .line 182
    const-string v0, "StorageManager is not yet ready. Skip on checking"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void

    .line 188
    :cond_0
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/storage/VolumeInfo;

    .line 189
    .local v6, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v7

    .line 190
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v2, v7}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v8

    .line 191
    .local v8, "fullBytes":J
    invoke-virtual {v2, v7}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v10

    .line 196
    .local v10, "lowBytes":J
    invoke-virtual {v7}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v12

    const-wide/16 v14, 0x3

    mul-long/2addr v14, v10

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    cmp-long v0, v12, v14

    if-gez v0, :cond_1

    .line 197
    nop

    .line 198
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/pm/PackageManagerService;

    .line 200
    .local v12, "pms":Lcom/android/server/pm/PackageManagerService;
    :try_start_0
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    mul-long v13, v10, v16

    const/4 v15, 0x0

    invoke-virtual {v12, v0, v13, v14, v15}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto :goto_1

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    .end local v0    # "e":Ljava/io/IOException;
    .end local v12    # "pms":Lcom/android/server/pm/PackageManagerService;
    :cond_1
    :goto_1
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 209
    .local v0, "uuid":Ljava/util/UUID;
    invoke-direct {v1, v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->findOrCreateState(Ljava/util/UUID;)Lcom/android/server/storage/DeviceStorageMonitorService$State;

    move-result-object v12

    .line 210
    .local v12, "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    invoke-virtual {v7}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v20

    .line 211
    .local v20, "totalBytes":J
    invoke-virtual {v7}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v14

    .line 213
    .local v14, "usableBytes":J
    iget v13, v12, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    .line 215
    .local v13, "oldLevel":I
    move-object/from16 v22, v2

    .end local v2    # "storage":Landroid/os/storage/StorageManager;
    .local v22, "storage":Landroid/os/storage/StorageManager;
    iget v2, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    move-object/from16 v23, v4

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 218
    const/4 v13, -0x1

    .line 219
    iget v2, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    move v4, v13

    .local v2, "newLevel":I
    goto :goto_2

    .line 220
    .end local v2    # "newLevel":I
    :cond_2
    cmp-long v2, v14, v8

    if-gtz v2, :cond_3

    .line 221
    const/4 v2, 0x2

    move v4, v13

    .restart local v2    # "newLevel":I
    goto :goto_2

    .line 222
    .end local v2    # "newLevel":I
    :cond_3
    cmp-long v2, v14, v10

    if-gtz v2, :cond_4

    .line 223
    const/4 v2, 0x1

    move v4, v13

    .restart local v2    # "newLevel":I
    goto :goto_2

    .line 224
    .end local v2    # "newLevel":I
    :cond_4
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v2, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/server/storage/DeviceStorageMonitorService;->isBootImageOnDisk()Z

    move-result v2

    if-nez v2, :cond_5

    sget-wide v16, Lcom/android/server/storage/DeviceStorageMonitorService;->BOOT_IMAGE_STORAGE_REQUIREMENT:J

    cmp-long v2, v14, v16

    if-gez v2, :cond_5

    .line 226
    const/4 v2, 0x1

    move v4, v13

    .restart local v2    # "newLevel":I
    goto :goto_2

    .line 228
    .end local v2    # "newLevel":I
    :cond_5
    const/4 v2, 0x0

    move v4, v13

    .line 232
    .end local v13    # "oldLevel":I
    .restart local v2    # "newLevel":I
    .local v4, "oldLevel":I
    :goto_2
    move-object/from16 v24, v7

    move-wide/from16 v25, v8

    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fullBytes":J
    .local v24, "file":Ljava/io/File;
    .local v25, "fullBytes":J
    iget-wide v7, v12, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    sub-long/2addr v7, v14

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    sget-wide v16, Lcom/android/server/storage/DeviceStorageMonitorService;->DEFAULT_LOG_DELTA_BYTES:J

    cmp-long v7, v7, v16

    if-gtz v7, :cond_7

    if-eq v4, v2, :cond_6

    goto :goto_3

    :cond_6
    move-wide v7, v14

    goto :goto_4

    .line 234
    :cond_7
    :goto_3
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13

    move-wide v7, v14

    .end local v14    # "usableBytes":J
    .local v7, "usableBytes":J
    move v14, v4

    move v15, v2

    move-wide/from16 v16, v7

    move-wide/from16 v18, v20

    invoke-static/range {v13 .. v19}, Lcom/android/server/EventLogTags;->writeStorageState(Ljava/lang/String;IIJJ)V

    .line 236
    iput-wide v7, v12, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    .line 239
    :goto_4
    invoke-direct {v1, v6, v4, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->updateNotifications(Landroid/os/storage/VolumeInfo;II)V

    .line 240
    invoke-direct {v1, v6, v4, v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->updateBroadcasts(Landroid/os/storage/VolumeInfo;III)V

    .line 242
    iput v2, v12, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    .line 243
    .end local v0    # "uuid":Ljava/util/UUID;
    .end local v2    # "newLevel":I
    .end local v4    # "oldLevel":I
    .end local v6    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v7    # "usableBytes":J
    .end local v10    # "lowBytes":J
    .end local v12    # "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    .end local v20    # "totalBytes":J
    .end local v24    # "file":Ljava/io/File;
    .end local v25    # "fullBytes":J
    move-object/from16 v2, v22

    move-object/from16 v4, v23

    goto/16 :goto_0

    .line 247
    .end local v22    # "storage":Landroid/os/storage/StorageManager;
    .local v2, "storage":Landroid/os/storage/StorageManager;
    :cond_8
    move-object/from16 v22, v2

    .end local v2    # "storage":Landroid/os/storage/StorageManager;
    .restart local v22    # "storage":Landroid/os/storage/StorageManager;
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 248
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v4, 0xea60

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 251
    :cond_9
    return-void
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 418
    const-string v0, "Device storage monitor service (devicestoragemonitor) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    const-string v0, "  force-low [-f]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    const-string v0, "    Force storage to be low, freezing storage state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    const-string v0, "    -f: force a storage change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    const-string v1, "  force-not-low [-f]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    const-string v1, "    Force storage to not be low, freezing storage state."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    const-string v1, "  reset [-f]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    const-string v1, "    Unfreeze storage state, returning to current real values."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method private findOrCreateState(Ljava/util/UUID;)Lcom/android/server/storage/DeviceStorageMonitorService$State;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;

    .line 162
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    .line 163
    .local v0, "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    if-nez v0, :cond_0

    .line 164
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService$1;)V

    move-object v0, v1

    .line 165
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_0
    return-object v0
.end method

.method private static isBootImageOnDisk()Z
    .locals 6

    .line 272
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 273
    .local v4, "instructionSet":Ljava/lang/String;
    invoke-static {v4}, Ldalvik/system/VMRuntime;->isBootClassPathOnDisk(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 274
    return v2

    .line 272
    .end local v4    # "instructionSet":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 277
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private updateBroadcasts(Landroid/os/storage/VolumeInfo;III)V
    .locals 7
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldLevel"    # I
    .param p3, "newLevel"    # I
    .param p4, "seq"    # I

    .line 535
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    return-void

    .line 540
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 541
    const/high16 v1, 0x5200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 544
    const-string v2, "seq"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 545
    .local v0, "lowIntent":Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 549
    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 551
    .local v1, "notLowIntent":Landroid/content/Intent;
    const/4 v3, 0x1

    invoke-static {v3, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$400(III)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 552
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 553
    :cond_1
    invoke-static {v3, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$500(III)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 554
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 555
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 558
    :cond_2
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 559
    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 560
    invoke-virtual {v3, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 561
    .local v3, "fullIntent":Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 563
    invoke-virtual {v4, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 565
    .local v2, "notFullIntent":Landroid/content/Intent;
    const/4 v4, 0x2

    invoke-static {v4, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$400(III)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 566
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 567
    :cond_3
    invoke-static {v4, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$500(III)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 568
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 569
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 571
    :cond_4
    :goto_1
    return-void
.end method

.method private updateNotifications(Landroid/os/storage/VolumeInfo;II)V
    .locals 17
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldLevel"    # I
    .param p3, "newLevel"    # I

    .line 480
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 481
    .local v9, "context":Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v10

    .line 483
    .local v10, "uuid":Ljava/util/UUID;
    const/4 v11, 0x1

    invoke-static {v11, v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$400(III)Z

    move-result v3

    const/16 v13, 0x17

    if-eqz v3, :cond_2

    .line 484
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v14, v3

    .line 485
    .local v14, "lowMemIntent":Landroid/content/Intent;
    const-string v3, "android.os.storage.extra.UUID"

    invoke-virtual {v14, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 486
    const/high16 v3, 0x10000000

    invoke-virtual {v14, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 488
    const v3, 0x104047c

    invoke-virtual {v9, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 492
    .local v15, "title":Ljava/lang/CharSequence;
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v3, v10}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v4, 0x104047a

    if-eqz v3, :cond_1

    .line 493
    invoke-static {}, Lcom/android/server/storage/DeviceStorageMonitorService;->isBootImageOnDisk()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 494
    goto :goto_0

    .line 495
    :cond_0
    const v4, 0x104047b

    .line 493
    :goto_0
    invoke-virtual {v9, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v8, v3

    .local v3, "details":Ljava/lang/CharSequence;
    goto :goto_1

    .line 497
    .end local v3    # "details":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v9, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v8, v3

    .line 501
    .local v8, "details":Ljava/lang/CharSequence;
    :goto_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v16, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v3, v9

    move-object v5, v14

    move-object v12, v8

    .end local v8    # "details":Ljava/lang/CharSequence;
    .local v12, "details":Ljava/lang/CharSequence;
    move-object/from16 v8, v16

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 503
    .local v3, "intent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification$Builder;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v4, v9, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x1080801

    .line 505
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 506
    invoke-virtual {v4, v15}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x106001c

    .line 507
    invoke-virtual {v9, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 509
    invoke-virtual {v4, v15}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 510
    invoke-virtual {v4, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 511
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 513
    invoke-virtual {v5, v12}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    .line 512
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 514
    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 515
    const-string v5, "sys"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$TvExtender;

    invoke-direct {v5}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 517
    const-string v6, "devicestoragemonitor.tv"

    invoke-virtual {v5, v6}, Landroid/app/Notification$TvExtender;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$TvExtender;

    move-result-object v5

    .line 516
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 518
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 519
    .local v4, "notification":Landroid/app/Notification;
    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 520
    iget-object v5, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v13, v4, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 522
    nop

    .line 523
    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 522
    const/16 v7, 0x82

    invoke-static {v7, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    .end local v3    # "intent":Landroid/app/PendingIntent;
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v12    # "details":Ljava/lang/CharSequence;
    .end local v14    # "lowMemIntent":Landroid/content/Intent;
    .end local v15    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .line 525
    :cond_2
    invoke-static {v11, v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$500(III)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 526
    iget-object v3, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v13, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 528
    nop

    .line 529
    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 528
    const/16 v4, 0x82

    invoke-static {v4, v3, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    goto :goto_3

    .line 525
    :cond_3
    :goto_2
    nop

    .line 532
    :goto_3
    return-void
.end method


# virtual methods
.method dumpImpl(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "_pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 433
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 434
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    if-eqz p3, :cond_1

    array-length v1, p3

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aget-object v1, p3, v1

    const-string v2, "-a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    new-instance v2, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;

    invoke-direct {v2, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    .line 475
    .local v2, "shell":Lcom/android/server/storage/DeviceStorageMonitorService$Shell;
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/Binder;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    new-instance v9, Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v5, p1

    move-object v7, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    goto/16 :goto_5

    .line 435
    .end local v2    # "shell":Lcom/android/server/storage/DeviceStorageMonitorService$Shell;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 436
    .local v1, "storage":Landroid/os/storage/StorageManager;
    const-string v2, "Known volumes:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 438
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 439
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/UUID;

    .line 440
    .local v3, "uuid":Ljava/util/UUID;
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    .line 441
    .local v4, "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    sget-object v5, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v5, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 442
    const-string v5, "Default:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 444
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 446
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 447
    iget v5, v4, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    invoke-static {v5}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$300(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "level"

    invoke-virtual {v0, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 448
    iget-wide v5, v4, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "lastUsableBytes"

    invoke-virtual {v0, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 449
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 450
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    .line 451
    .local v6, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v7

    .line 452
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v8

    .line 453
    .local v8, "innerUuid":Ljava/util/UUID;
    invoke-static {v3, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 454
    const-string v5, "lowBytes="

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v1, v7}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 456
    const-string v5, " fullBytes="

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v1, v7}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 458
    const-string v5, "path="

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 460
    goto :goto_4

    .line 462
    .end local v6    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "innerUuid":Ljava/util/UUID;
    :cond_3
    goto :goto_3

    .line 463
    :cond_4
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 438
    .end local v3    # "uuid":Ljava/util/UUID;
    .end local v4    # "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 465
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 466
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 468
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "mSeq"

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 469
    iget v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$300(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mForceState"

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 470
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 471
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 473
    .end local v1    # "storage":Landroid/os/storage/StorageManager;
    nop

    .line 477
    :goto_5
    return-void
.end method

.method onShellCommand(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;Ljava/lang/String;)I
    .locals 8
    .param p1, "shell"    # Lcom/android/server/storage/DeviceStorageMonitorService$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 370
    if-nez p2, :cond_0

    .line 371
    invoke-virtual {p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 373
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 374
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x6761d4f

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v2, :cond_4

    const v2, 0x5b023572

    if-eq v1, v2, :cond_3

    const v2, 0x64de7478

    if-eq v1, v2, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v1, "force-not-low"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v6

    goto :goto_1

    :cond_3
    const-string v1, "force-low"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v5

    goto :goto_1

    :cond_4
    const-string v1, "reset"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :goto_0
    move v1, v4

    :goto_1
    const/4 v2, 0x0

    const-string v7, "android.permission.DEVICE_POWER"

    if-eqz v1, :cond_9

    if-eq v1, v6, :cond_7

    if-eq v1, v3, :cond_5

    .line 412
    invoke-virtual {p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 400
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    move-result v1

    .line 401
    .local v1, "opts":I
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iput v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 404
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 405
    .local v2, "seq":I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_6

    .line 406
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 407
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 408
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 410
    .end local v1    # "opts":I
    .end local v2    # "seq":I
    :cond_6
    goto :goto_2

    .line 388
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    move-result v1

    .line 389
    .restart local v1    # "opts":I
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iput v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 392
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 393
    .restart local v2    # "seq":I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_8

    .line 394
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 395
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 396
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 398
    .end local v1    # "opts":I
    .end local v2    # "seq":I
    :cond_8
    goto :goto_2

    .line 376
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    move-result v1

    .line 377
    .restart local v1    # "opts":I
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iput v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 380
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 381
    .restart local v2    # "seq":I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_a

    .line 382
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 383
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 384
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 386
    .end local v1    # "opts":I
    .end local v2    # "seq":I
    :cond_a
    nop

    .line 414
    :goto_2
    return v5
.end method

.method public onStart()V
    .locals 8

    .line 282
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 283
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    .line 285
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-direct {v1}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;-><init>()V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    .line 286
    invoke-virtual {v1}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;->startWatching()V

    .line 289
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 290
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const-string v2, "android.software.leanback"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 292
    .local v2, "isTv":Z
    if-eqz v2, :cond_0

    .line 293
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    new-instance v4, Landroid/app/NotificationChannel;

    const v5, 0x10402c2

    .line 295
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    const-string v7, "devicestoragemonitor.tv"

    invoke-direct {v4, v7, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 293
    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 300
    :cond_0
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/Binder;

    const-string v4, "devicestoragemonitor"

    invoke-virtual {p0, v4, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 301
    const-class v3, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 304
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 305
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 306
    return-void
.end method

.method parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I
    .locals 3
    .param p1, "shell"    # Lcom/android/server/storage/DeviceStorageMonitorService$Shell;

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "opts":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 362
    const-string v1, "-f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_1
    return v0
.end method

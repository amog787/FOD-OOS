.class Lcom/android/server/storage/AppCollector$BackgroundHandler;
.super Landroid/os/Handler;
.source "AppCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/AppCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundHandler"
.end annotation


# static fields
.field static final MSG_START_LOADING_SIZES:I


# instance fields
.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

.field private final mUm:Landroid/os/UserManager;

.field private final mVolume:Landroid/os/storage/VolumeInfo;

.field final synthetic this$0:Lcom/android/server/storage/AppCollector;


# direct methods
.method constructor <init>(Lcom/android/server/storage/AppCollector;Landroid/os/Looper;Landroid/os/storage/VolumeInfo;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Landroid/app/usage/StorageStatsManager;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "volume"    # Landroid/os/storage/VolumeInfo;
    .param p4, "pm"    # Landroid/content/pm/PackageManager;
    .param p5, "um"    # Landroid/os/UserManager;
    .param p6, "storageStatsManager"    # Landroid/app/usage/StorageStatsManager;

    .line 105
    iput-object p1, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->this$0:Lcom/android/server/storage/AppCollector;

    .line 106
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 107
    iput-object p3, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 108
    iput-object p4, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mPm:Landroid/content/pm/PackageManager;

    .line 109
    iput-object p5, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mUm:Landroid/os/UserManager;

    .line 110
    iput-object p6, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    .line 111
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 115
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 117
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageStats;>;"
    iget-object v1, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mUm:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 119
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v2, 0x0

    .local v2, "userCount":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 120
    .local v3, "userSize":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 121
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 122
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mPm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x200

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v5

    .line 125
    .local v5, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v6, 0x0

    .local v6, "appCount":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "size":I
    :goto_1
    if-ge v6, v7, :cond_2

    .line 126
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    .line 127
    .local v8, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v10}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 128
    goto :goto_2

    .line 132
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    iget-object v10, v8, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iget-object v11, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 134
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v12

    .line 133
    invoke-virtual {v9, v10, v11, v12}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v9

    .line 135
    .local v9, "storageStats":Landroid/app/usage/StorageStats;
    new-instance v10, Landroid/content/pm/PackageStats;

    iget-object v11, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v12, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v10, v11, v12}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 137
    .local v10, "packageStats":Landroid/content/pm/PackageStats;
    invoke-virtual {v9}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v11

    iput-wide v11, v10, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 138
    invoke-virtual {v9}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v11

    iput-wide v11, v10, Landroid/content/pm/PackageStats;->codeSize:J

    .line 139
    invoke-virtual {v9}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v11

    iput-wide v11, v10, Landroid/content/pm/PackageStats;->dataSize:J

    .line 140
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    nop

    .end local v9    # "storageStats":Landroid/app/usage/StorageStats;
    .end local v10    # "packageStats":Landroid/content/pm/PackageStats;
    goto :goto_2

    .line 141
    :catch_0
    move-exception v9

    .line 142
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/storage/AppCollector;->access$000()Ljava/lang/String;

    move-result-object v10

    const-string v11, "An exception occurred while fetching app size"

    invoke-static {v10, v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .end local v8    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 120
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6    # "appCount":I
    .end local v7    # "size":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    .end local v2    # "userCount":I
    .end local v3    # "userSize":I
    :cond_3
    iget-object v2, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->this$0:Lcom/android/server/storage/AppCollector;

    invoke-static {v2}, Lcom/android/server/storage/AppCollector;->access$100(Lcom/android/server/storage/AppCollector;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 150
    .end local v0    # "stats":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageStats;>;"
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_3
    return-void
.end method

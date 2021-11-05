.class Lcom/android/server/usage/StorageStatsService$LocalService;
.super Lcom/android/server/usage/StorageStatsManagerInternal;
.source "StorageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/StorageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/StorageStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/usage/StorageStatsService;)V
    .locals 0

    .line 786
    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$LocalService;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/StorageStatsService;Lcom/android/server/usage/StorageStatsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/usage/StorageStatsService;
    .param p2, "x1"    # Lcom/android/server/usage/StorageStatsService$1;

    .line 786
    invoke-direct {p0, p1}, Lcom/android/server/usage/StorageStatsService$LocalService;-><init>(Lcom/android/server/usage/StorageStatsService;)V

    return-void
.end method


# virtual methods
.method public registerStorageStatsAugmenter(Lcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;Ljava/lang/String;)V
    .locals 2
    .param p1, "storageStatsAugmenter"    # Lcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;
    .param p2, "tag"    # Ljava/lang/String;

    .line 791
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$LocalService;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/StorageStatsService;->access$500(Lcom/android/server/usage/StorageStatsService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    return-void
.end method

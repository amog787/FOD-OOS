.class public final synthetic Lcom/android/server/usage/-$$Lambda$StorageStatsService$wNCqEjBUk3qs1tuYbJHOuDgJ8rk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/PackageStats;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/PackageStats;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/-$$Lambda$StorageStatsService$wNCqEjBUk3qs1tuYbJHOuDgJ8rk;->f$0:Landroid/content/pm/PackageStats;

    iput-object p2, p0, Lcom/android/server/usage/-$$Lambda$StorageStatsService$wNCqEjBUk3qs1tuYbJHOuDgJ8rk;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/usage/-$$Lambda$StorageStatsService$wNCqEjBUk3qs1tuYbJHOuDgJ8rk;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/usage/-$$Lambda$StorageStatsService$wNCqEjBUk3qs1tuYbJHOuDgJ8rk;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/usage/-$$Lambda$StorageStatsService$wNCqEjBUk3qs1tuYbJHOuDgJ8rk;->f$0:Landroid/content/pm/PackageStats;

    iget-object v1, p0, Lcom/android/server/usage/-$$Lambda$StorageStatsService$wNCqEjBUk3qs1tuYbJHOuDgJ8rk;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/usage/-$$Lambda$StorageStatsService$wNCqEjBUk3qs1tuYbJHOuDgJ8rk;->f$2:I

    iget-boolean v3, p0, Lcom/android/server/usage/-$$Lambda$StorageStatsService$wNCqEjBUk3qs1tuYbJHOuDgJ8rk;->f$3:Z

    check-cast p1, Lcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/usage/StorageStatsService;->lambda$queryStatsForPackage$0(Landroid/content/pm/PackageStats;Ljava/lang/String;IZLcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;)V

    return-void
.end method

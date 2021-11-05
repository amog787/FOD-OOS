.class Lcom/android/server/StorageManagerService$WatchedLockedUsers;
.super Ljava/lang/Object;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatchedLockedUsers"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;

.field private users:[I


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    sget-object p1, Llibcore/util/EmptyArray;->INT:[I

    iput-object p1, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    .line 402
    invoke-direct {p0}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->invalidateIsUserUnlockedCache()V

    .line 403
    return-void
.end method

.method private invalidateIsUserUnlockedCache()V
    .locals 0

    .line 423
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    .line 424
    return-void
.end method


# virtual methods
.method public all()[I
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    return-object v0
.end method

.method public append(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 405
    iget-object v0, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    .line 406
    invoke-direct {p0}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->invalidateIsUserUnlockedCache()V

    .line 407
    return-void
.end method

.method public contains(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 413
    iget-object v0, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    return v0
.end method

.method public remove(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 409
    iget-object v0, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    .line 410
    invoke-direct {p0}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->invalidateIsUserUnlockedCache()V

    .line 411
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

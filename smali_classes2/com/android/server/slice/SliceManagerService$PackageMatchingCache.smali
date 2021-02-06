.class Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;
.super Ljava/lang/Object;
.source "SliceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/SliceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageMatchingCache"
.end annotation


# instance fields
.field private mCurrentPkg:Ljava/lang/String;

.field private final mPkgSource:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 581
    .local p1, "pkgSource":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;->mPkgSource:Ljava/util/function/Supplier;

    .line 583
    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgCandidate"    # Ljava/lang/String;

    .line 586
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;->mCurrentPkg:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    const/4 v0, 0x1

    return v0

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;->mPkgSource:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;->mCurrentPkg:Ljava/lang/String;

    .line 593
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

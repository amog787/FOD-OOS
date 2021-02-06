.class public final synthetic Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$TAsfDUuoxt92xKFoSCfpMUmY2Es;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:Lcom/android/server/pm/dex/DexoptOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/dex/DexoptOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$TAsfDUuoxt92xKFoSCfpMUmY2Es;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$TAsfDUuoxt92xKFoSCfpMUmY2Es;->f$1:Lcom/android/server/pm/dex/DexoptOptions;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$TAsfDUuoxt92xKFoSCfpMUmY2Es;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$TAsfDUuoxt92xKFoSCfpMUmY2Es;->f$1:Lcom/android/server/pm/dex/DexoptOptions;

    invoke-static {v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->lambda$performDexOptSecondary$1(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

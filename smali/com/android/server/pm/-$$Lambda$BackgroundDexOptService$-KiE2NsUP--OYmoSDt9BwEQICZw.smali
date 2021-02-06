.class public final synthetic Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$-KiE2NsUP--OYmoSDt9BwEQICZw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$-KiE2NsUP--OYmoSDt9BwEQICZw;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$-KiE2NsUP--OYmoSDt9BwEQICZw;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$-KiE2NsUP--OYmoSDt9BwEQICZw;->f$2:I

    iput p4, p0, Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$-KiE2NsUP--OYmoSDt9BwEQICZw;->f$3:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$-KiE2NsUP--OYmoSDt9BwEQICZw;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$-KiE2NsUP--OYmoSDt9BwEQICZw;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$-KiE2NsUP--OYmoSDt9BwEQICZw;->f$2:I

    iget v3, p0, Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$-KiE2NsUP--OYmoSDt9BwEQICZw;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/BackgroundDexOptService;->lambda$performDexOptPrimary$0(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

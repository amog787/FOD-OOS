.class public final synthetic Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$l-HDH615-tUbj1olMg0-KDh14VY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$l-HDH615-tUbj1olMg0-KDh14VY;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iput p2, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$l-HDH615-tUbj1olMg0-KDh14VY;->f$1:I

    iput p3, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$l-HDH615-tUbj1olMg0-KDh14VY;->f$2:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$l-HDH615-tUbj1olMg0-KDh14VY;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iget v1, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$l-HDH615-tUbj1olMg0-KDh14VY;->f$1:I

    iget v2, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$l-HDH615-tUbj1olMg0-KDh14VY;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$isSameProfileGroup$12$CrossProfileAppsServiceImpl(II)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

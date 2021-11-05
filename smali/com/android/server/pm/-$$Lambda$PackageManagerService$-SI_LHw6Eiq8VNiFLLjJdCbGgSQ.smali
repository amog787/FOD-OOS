.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$-SI_LHw6Eiq8VNiFLLjJdCbGgSQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$-SI_LHw6Eiq8VNiFLLjJdCbGgSQ;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$-SI_LHw6Eiq8VNiFLLjJdCbGgSQ;->f$1:Ljava/util/List;

    iput p3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$-SI_LHw6Eiq8VNiFLLjJdCbGgSQ;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$-SI_LHw6Eiq8VNiFLLjJdCbGgSQ;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$-SI_LHw6Eiq8VNiFLLjJdCbGgSQ;->f$1:Ljava/util/List;

    iget v2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$-SI_LHw6Eiq8VNiFLLjJdCbGgSQ;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->lambda$new$9$PackageManagerService(Ljava/util/List;I)V

    return-void
.end method

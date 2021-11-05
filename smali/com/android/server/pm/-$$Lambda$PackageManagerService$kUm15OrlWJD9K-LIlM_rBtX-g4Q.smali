.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$kUm15OrlWJD9K-LIlM_rBtX-g4Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$kUm15OrlWJD9K-LIlM_rBtX-g4Q;->f$0:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$kUm15OrlWJD9K-LIlM_rBtX-g4Q;->f$0:Lcom/android/server/pm/PackageManagerService;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$new$36$PackageManagerService(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
